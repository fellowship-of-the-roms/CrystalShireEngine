FarDecompress::
; Decompress graphics data from a:hl to de.

	ldh [hTempBank], a
	ldh a, [hROMBank]
	push af
	ldh a, [hTempBank]
	rst Bankswitch

	call Decompress

	pop af
	rst Bankswitch
	ret

Decompress::
; Pokemon Crystal uses an lz variant for compression.
; This is mainly (but not necessarily) used for graphics.

; This function decompresses lz-compressed data from hl to de.

LZ_END EQU $ff ; Compressed data is terminated with $ff.

; A typical control command consists of:

LZ_CMD EQU %11100000 ; command id (bits 5-7)
LZ_LEN EQU %00011111 ; length n   (bits 0-4)

; Additional parameters are read during command execution.

; Commands:

LZ_LITERAL   EQU 0 << 5 ; Read literal data for n bytes.
LZ_ITERATE   EQU 1 << 5 ; Write the same byte for n bytes.
LZ_ALTERNATE EQU 2 << 5 ; Alternate two bytes for n bytes.
LZ_ZERO      EQU 3 << 5 ; Write 0 for n bytes.

; Another class of commands reuses data from the decompressed output.
LZ_RW        EQU 2 + 5 ; bit

; These commands take a signed offset to start copying from.
; Wraparound is simulated.
; Positive offsets (15-bit) are added to the start address.
; Negative offsets (7-bit) are subtracted from the current position.

LZ_REPEAT    EQU 4 << 5 ; Repeat n bytes from the offset.
LZ_FLIP      EQU 5 << 5 ; Repeat n bitflipped bytes.
LZ_REVERSE   EQU 6 << 5 ; Repeat n bytes in reverse.

; If the value in the count needs to be larger than 5 bits,
; LZ_LONG can be used to expand the count to 10 bits.
LZ_LONG      EQU 7 << 5

; A new control command is read in bits 2-4.
; The top two bits of the length are bits 0-1.
; Another byte is read containing the bottom 8 bits.
LZ_LONG_HI   EQU %00000011

; In other words, the structure of the command becomes
; 111xxxyy yyyyyyyy
; x: the new control command
; y: the length

; For more information, refer to the code below and in extras/gfx.py.

	; Swap de and hl for speed.
	call SwapHLDE

	; Save the output address
	; for rewrite commands.
	ld a, l
	ldh [hLZAddress], a
	ld a, h
	ldh [hLZAddress + 1], a

.Main:
	ld a, [de]
	cp LZ_LONG
	jr c, .short
	cp LZ_END
	jmp z, SwapHLDE

.long
; The count is now 10 bits.

	; Read the next 3 bits.
	; %00011100 -> %11100000
	add a
	add a ; << 3
	add a

	; This is our new control code.
	and LZ_CMD
	ldh [hBuffer], a

	ld a, [de]
	inc de
	and LZ_LONG_HI
	ld b, a
	ld a, [de]
	inc de
	ld c, a

	; read at least 1 byte
	inc bc
	jr .command

.short
	and LZ_CMD
	ldh [hBuffer], a

	ld a, [de]
	inc de
	and LZ_LEN
	ld c, a
	ld b, 0

	; read at least 1 byte
	inc c

.command
	; Increment loop counts.
	; We bail the moment they hit 0.
	ld a, c
	and a
	jr z, .even
	inc b
.even

	ldh a, [hBuffer]

	bit LZ_RW, a
	jr nz, .rewrite

	cp LZ_ITERATE
	jr z, .Iter
	cp LZ_ALTERNATE
	jr z, .Alt
	cp LZ_ZERO
	jr z, .Zero

.Literal:
; Read literal data for bc bytes.
.lloop
	ld a, [de]
	ld [hli], a
	inc de
	dec c
	jr nz, .lloop
	dec b
	jr nz, .lloop
	jr .Main

.Iter:
; Write the same byte for bc bytes.
	ld a, [de]
	inc de
.iloop
	ld [hli], a
	dec c
	jr nz, .iloop
	dec b
	jr nz, .iloop
	jr .Main

.Alt:
; Alternate two bytes for bc bytes.
	; Store alternating bytes in d and e.
	ld a, [de]
	inc de
	push de
	ldh [hBuffer], a
	ld a, [de]
	ld e, a
	ldh a, [hBuffer]
	ld d, a
.aloop
	ld a, d
	ld [hli], a
	dec c
	jr nz, .anext
	dec b
	jr z, .adone
.anext
	ld a, e
	ld [hli], a
	dec c
	jr nz, .aloop
	dec b
	jr nz, .aloop
.adone
	; Skip past the bytes we were alternating.
	pop de
	inc de
	jr .Main

.Zero:
; Write 0 for bc bytes.
	xor a
	jr .iloop

.rewrite
; Repeat decompressed data from output.
	push de
	push hl

	ld a, [de]
	bit 7, a ; sign
	jr z, .positive

	; Relative offsets count backwards from hl and contain an excess of $7f.
	; In other words, $80 = hl - 1, $81 = hl - 2, ..., $ff = hl - 128.
	cpl
	sub $80
	ld e, a
	ld d, $ff
	jr .ok

.positive
; Positive offsets are two bytes.
	ld h, a
	inc de
	ld a, [de]
	ld l, a
	ldh a, [hLZAddress]
	ld e, a
	ldh a, [hLZAddress + 1]
	ld d, a

.ok
	; add to starting output address
	add hl, de
	ld d, h
	ld e, l
	pop hl

	ldh a, [hBuffer]

	cp LZ_FLIP
	jr z, .Flip
	cp LZ_REVERSE
	jr z, .Reverse

; Since LZ_LONG is command 7,
; only commands 0-6 are passed in.
; This leaves room for an extra command 7.
; However, lengths longer than 768
; would be interpreted as LZ_END.

; More practically, LZ_LONG is not recursive.
; For now, it defaults to LZ_REPEAT.

.Repeat:
; Copy decompressed data for bc bytes.
.rloop
	ld a, [de]
	inc de

	ld [hli], a

	dec c
	jr nz, .rloop
	dec b
	jr nz, .rloop
	jr .donerw

.Flip:
; Copy bitflipped decompressed data for bc bytes.
.floop
	ld a, [de]
	inc de

	ld [hl], b
	ld b, 0
rept 8
	rra
	rl b
endr
	ld a, b
	ld b, [hl]

	ld [hli], a

	dec c
	jr nz, .floop
	dec b
	jr nz, .floop
	jr .donerw

.Reverse:
; Copy byte-reversed data for bc bytes.
.rvloop
	ld a, [de]
	dec de

	ld [hli], a

	dec c
	jr nz, .rvloop
	dec b
	jr nz, .rvloop

.donerw
	pop de

	ld a, [de]
	add a
	jr c, .next
	inc de ; positive offset is two bytes
.next
	inc de
	jmp .Main