; Device driver for SPI keyboard peripheral
;
; See HARDWARE.md for more information
.include "macros.inc"
.include "ring_buf.inc"

.import irq_first_handler

.import VIA_IFR, VIA_IER, VIA_PCR
.import spi_init, spi_begin, spi_exchange, spi_end

INTERRUPT_MASK = $02 ; CA1 active edge

KEYBOARD_SPI_BEGIN = $60       ; MODE 1, MSB first, dev 0

.bss

; =========================================================================
; Next IRQ handler routine to pass control to after keyboard_irq_handler is
; finished.
next_handler: .res 2

; =========================================================================
; Buffer holding bytes received from keyboard
KEYBOARD_RB_LEN = 4
ring_buf_reserve keyboard_ring_buf, KEYBOARD_RB_LEN

.code

; =========================================================================
; keyboard_irq_handler: handle keyboard interrupts if present
; =========================================================================
.export keyboard_irq_handler
.proc keyboard_irq_handler
        lda #INTERRUPT_MASK             ; is interrupt due to keyboard?
        bit VIA_IFR
        beq done                        ; no, jump to next handler

        lda #KEYBOARD_SPI_BEGIN
        jsr spi_begin
        lda #0
        jsr spi_exchange                ; Read buffer
        jsr spi_exchange                ; get scan code
        pha
        jsr spi_end
        pla

        ; push into ring buffer
        ring_buf_push keyboard_ring_buf, KEYBOARD_RB_LEN

done:
        jmp (next_handler)
.endproc

; =========================================================================
; keyboard_read_next_scancode: read incoming scan code byte from keyboard
;
; Sets A to scancode and X to 0 if there is a scancode present to read. Sets A
; and X to $FF if there's no byte
;
; C: i16 keyboard_read_next_scancode(void)
; =========================================================================
.export keyboard_read_next_scancode
.proc keyboard_read_next_scancode
        ring_buf_pop keyboard_ring_buf, KEYBOARD_RB_LEN
        bcs buf_empty
        ldx #$00
        rts
buf_empty:
        lda #$FF
        ldx #$FF
        rts
.endproc
.export _keyboard_read_next_scancode := keyboard_read_next_scancode

; =========================================================================
; keyboard_init: initialise the keyboard hardware
;
; C: void keyboard_init(void)
; =========================================================================
.export keyboard_init
.proc keyboard_init
        jsr spi_init                    ; initialise SPI subsystem

        ; initialise ring buffer
        ring_buf_init keyboard_ring_buf, KEYBOARD_RB_LEN

        lda #$01                        ; CA1 active edge is +ve
        tsb VIA_PCR

        lda #INTERRUPT_MASK             ; enable VIA interrupt
        tsb VIA_IER

        ; Install keyboar interrupt handler
        irq_add_handler keyboard_irq_handler, next_handler

        lda #KEYBOARD_SPI_BEGIN         ; reset the keyboard controller
        jsr spi_begin
        lda #$80
        jsr spi_exchange                ; reset
        jsr spi_end

        rts
.endproc
.export _keyboard_init := keyboard_init
