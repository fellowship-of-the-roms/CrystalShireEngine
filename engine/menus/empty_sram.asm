EmptyAllSRAMBanks:
for x, NUM_SRAM_BANKS
	ld a, x
	call .EmptyBank
endr
	ret

.EmptyBank:
	call OpenSRAM
	ld hl, STARTOF(SRAM)
	ld bc, SIZEOF(SRAM)
	xor a
	rst ByteFill
	jmp CloseSRAM
