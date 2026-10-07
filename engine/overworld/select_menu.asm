SelectMenu::
	call CheckRegisteredItem
	jmp nc, UseRegisteredItem
	call OpenText
	ld b, BANK(MayRegisterItemText)
	ld hl, MayRegisterItemText
	call MapTextbox
	call WaitButton
	jmp CloseText

MayRegisterItemText:
	text_far _MayRegisterItemText
	text_end

CheckRegisteredItem:
	ld a, [wWhichRegisteredItem]
	and a
	jr z, .NoRegisteredItem
	and REGISTERED_POCKET
	rlca
	rlca
	ld hl, .Pockets
	jmp JumpTable

.Pockets:
; entries correspond to *_POCKET constants
	dw .CheckItem
	dw .CheckBall
	dw .CheckKeyItem
	dw .CheckTMHM

.CheckItem:
	ld a, [wRegisteredItem]
	call GetItemIndexFromID
	ld b, h
	ld c, l
	ld hl, wNumItems
	call .CheckRegisteredNo
	jr c, .NoRegisteredItem
	inc hl
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	add hl, de ; item entries: index high byte, index low byte, quantity
	ld a, [hli]
	cp b
	jr nz, .NoRegisteredItem
	ld a, [hl]
	cp c
	jr nz, .NoRegisteredItem
	jr .RegisteredItemFound

.CheckKeyItem:
	ld a, [wRegisteredItem]
	call GetItemIndexFromID
	ld a, l
	ld hl, wKeyItems
	ld de, 1
	call IsInArray
	jr nc, .NoRegisteredItem
	jr .RegisteredItemFound

.CheckBall:
	ld a, [wRegisteredItem]
	call GetItemIndexFromID
	ld c, l
	ld hl, wNumBalls
	call .CheckRegisteredNo
	jr c, .NoRegisteredItem
	inc hl
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	ld a, [hl] ; ball entries use the low byte of the item index
	cp c
	jr nz, .NoRegisteredItem

.RegisteredItemFound:
	ld a, [wRegisteredItem]
	ld [wCurItem], a
	and a
	ret

.CheckTMHM:
; fallthrough
.NoRegisteredItem:
	xor a
	ld [wWhichRegisteredItem], a
	ld [wRegisteredItem], a
	scf
	ret

.CheckRegisteredNo:
	ld a, [wWhichRegisteredItem]
	and REGISTERED_NUMBER
	dec a
	cp [hl]
	jr nc, .NotEnoughItems
	ld [wCurItemQuantity], a
	and a
	ret

.NotEnoughItems:
	scf
	ret

UseRegisteredItem:
	farcall CheckItemMenu
	ld a, [wItemAttributeValue]
	ld hl, .SwitchTo
	jmp JumpTable

.SwitchTo:
; entries correspond to ITEMMENU_* constants
	dw .CantUse
	dw .NoFunction
	dw .NoFunction
	dw .NoFunction
	dw .Current
	dw .Party
	dw .Overworld

.NoFunction:
	call OpenText
	call CantUseItem
	call CloseText
	and a
	ret

.Current:
	call OpenText
	call DoItemEffect
	call CloseText
	and a
	ret

.Party:
	call ReanchorMap
	call FadeToMenu
	call DoItemEffect
	call CloseSubmenu
	call CloseText
	and a
	ret

.Overworld:
	call ReanchorMap
	ld a, 1
	ld [wUsingItemWithSelect], a
	call DoItemEffect
	xor a
	ld [wUsingItemWithSelect], a
	ld a, [wItemEffectSucceeded]
	dec a
	jr nz, ._cantuse
	scf
	ld a, HMENURETURN_SCRIPT
	ldh [hMenuReturn], a
	ret

.CantUse:
	call ReanchorMap

._cantuse
	call CantUseItem
	call CloseText
	and a
	ret
