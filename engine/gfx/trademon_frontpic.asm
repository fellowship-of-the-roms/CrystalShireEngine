GetTrademonFrontpic:
	ld a, [wOTTrademonSpecies]
	ld hl, wOTTrademonForm
	ld de, vTiles2
	push de
	push af
	predef GetUnownLetter
	pop af
	ld [wCurPartySpecies], a
	ld [wCurSpecies], a
	call GetBaseData
	pop de
	predef_jump GetAnimatedFrontpic

AnimateTrademonFrontpic:
	ld a, [wOTTrademonSpecies]
	call IsAPokemon
	ret c
	farcall ShowOTTrademonStats
	ld a, [wOTTrademonSpecies]
	ld [wCurPartySpecies], a
	ld a, [wOTTrademonIVs]
	ld [wTempMonIVs], a
	ld a, [wOTTrademonIVs + 1]
	ld [wTempMonIVs + 1], a
	ld a, [wOTTrademonIVs + 2]
	ld [wTempMonIVs + 2], a
	ld a, [wOTTrademonIVs + 3]
	ld [wTempMonIVs + 3], a
	ld b, SCGB_PLAYER_OR_MON_FRONTPIC_PALS
	call GetSGBLayout
	ld a, %11100100 ; 3,2,1,0
	call DmgToCgbBGPals
	farcall TradeAnim_ShowGetmonFrontpic
	ld a, [wOTTrademonSpecies]
	ld [wCurPartySpecies], a
	hlcoord 7, 2
	lb de, $0, ANIM_MON_TRADE
	predef_jump AnimateFrontpic
