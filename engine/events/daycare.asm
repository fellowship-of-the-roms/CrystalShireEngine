; PrintDayCareText.TextTable indexes
	const_def
	const DAYCARETEXT_MAN_INTRO
	const DAYCARETEXT_MAN_INTRO_EGG
	const DAYCARETEXT_LADY_INTRO
	const DAYCARETEXT_LADY_INTRO_EGG
	const DAYCARETEXT_WHICH_ONE
	const DAYCARETEXT_DEPOSIT
	const DAYCARETEXT_CANT_BREED_EGG
	const DAYCARETEXT_LAST_MON
	const DAYCARETEXT_LAST_ALIVE_MON
	const DAYCARETEXT_COME_BACK_LATER
	const DAYCARETEXT_REMOVE_MAIL
	const DAYCARETEXT_GENIUSES
	const DAYCARETEXT_ASK_WITHDRAW
	const DAYCARETEXT_WITHDRAW
	const DAYCARETEXT_GOT_BACK
	const DAYCARETEXT_TOO_SOON
	const DAYCARETEXT_PARTY_FULL
	const DAYCARETEXT_NOT_ENOUGH_MONEY
	const DAYCARETEXT_OH_FINE
	const DAYCARETEXT_COME_AGAIN

DayCareMan:
	ld hl, wDayCareMan
	bit DAYCAREMAN_HAS_MON_F, [hl]
	jr nz, .AskWithdrawMon
	ld hl, wDayCareMan
	ld a, DAYCARETEXT_MAN_INTRO
	call DayCareManIntroText
	jr c, .cancel
	call DayCareAskDepositPokemon
	jr c, .print_text
	farcall DepositMonWithDayCareMan
	ld hl, wDayCareMan
	set DAYCAREMAN_HAS_MON_F, [hl]
	call DayCare_DepositPokemonText
	jmp DayCare_InitBreeding

.AskWithdrawMon:
	farcall GetBreedMon1LevelGrowth
	ld hl, wBreedMon1Nickname
	call GetPriceToRetrieveBreedmon
	call DayCare_AskWithdrawBreedMon
	jr c, .print_text
	farcall RetrieveMonFromDayCareMan
	call DayCare_GetBackMonForMoney
	ld hl, wDayCareMan
	res DAYCAREMAN_HAS_MON_F, [hl]
	res DAYCAREMAN_MONS_COMPATIBLE_F, [hl]
	jr .cancel

.print_text
	call PrintDayCareText

.cancel
	ld a, DAYCARETEXT_COME_AGAIN
	jmp PrintDayCareText

DayCareLady:
	ld hl, wDayCareLady
	bit DAYCARELADY_HAS_MON_F, [hl]
	jr nz, .AskWithdrawMon
	ld hl, wDayCareLady
	ld a, DAYCARETEXT_LADY_INTRO
	call DayCareLadyIntroText
	jr c, .cancel
	call DayCareAskDepositPokemon
	jr c, .print_text
	farcall DepositMonWithDayCareLady
	ld hl, wDayCareLady
	set DAYCARELADY_HAS_MON_F, [hl]
	call DayCare_DepositPokemonText
	jmp DayCare_InitBreeding

.AskWithdrawMon:
	farcall GetBreedMon2LevelGrowth
	ld hl, wBreedMon2Nickname
	call GetPriceToRetrieveBreedmon
	call DayCare_AskWithdrawBreedMon
	jr c, .print_text
	farcall RetrieveMonFromDayCareLady
	call DayCare_GetBackMonForMoney
	ld hl, wDayCareLady
	res DAYCARELADY_HAS_MON_F, [hl]
	ld hl, wDayCareMan
	res DAYCAREMAN_MONS_COMPATIBLE_F, [hl]
	jr .cancel

.print_text
	call PrintDayCareText

.cancel
	ld a, DAYCARETEXT_COME_AGAIN
	jmp PrintDayCareText

DayCareLadyIntroText:
	bit DAYCARELADY_ACTIVE_F, [hl]
	jr nz, .okay
	set DAYCARELADY_ACTIVE_F, [hl]
	inc a
.okay
	call PrintDayCareText
	jmp YesNoBox

DayCareManIntroText:
	set DAYCAREMAN_ACTIVE_F, [hl]
	call PrintDayCareText
	jmp YesNoBox

DayCareAskDepositPokemon:
	ld a, [wPartyCount]
	cp 2
	jr c, .OnlyOneMon
	ld a, DAYCARETEXT_WHICH_ONE
	call PrintDayCareText
	ld b, PARTYMENUACTION_GIVE_MON
	farcall SelectTradeOrDayCareMon
	jr c, .Declined
	ld a, [wCurPartySpecies]
	cp EGG
	jr z, .Egg
	farcall CheckCurPartyMonFainted
	jr c, .OutOfUsableMons
	ld hl, wPartyMon1Item
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wCurPartyMon]
	rst AddNTimes
	ld d, [hl]
	farcall ItemIsMail
	jr c, .HoldingMail
	ld hl, wPartyMonNicknames
	ld a, [wCurPartyMon]
	call GetNickname
	and a
	ret

.Declined:
	ld a, DAYCARETEXT_OH_FINE
	scf
	ret

.Egg:
	ld a, DAYCARETEXT_CANT_BREED_EGG
	scf
	ret

.OnlyOneMon:
	ld a, DAYCARETEXT_LAST_MON
	scf
	ret

.OutOfUsableMons:
	ld a, DAYCARETEXT_LAST_ALIVE_MON
	scf
	ret

.HoldingMail:
	ld a, DAYCARETEXT_REMOVE_MAIL
	scf
	ret

DayCare_DepositPokemonText:
	ld a, DAYCARETEXT_DEPOSIT
	call PrintDayCareText
	ld a, [wCurPartySpecies]
	call PlayMonCry
	ld a, DAYCARETEXT_COME_BACK_LATER
	jmp PrintDayCareText

DayCare_AskWithdrawBreedMon:
	ld a, [wStringBuffer2 + 1]
	and a
	jr nz, .grew_at_least_one_level
	ld a, DAYCARETEXT_TOO_SOON
	call PrintDayCareText
	call YesNoBox
	jr c, .refused
	jr .check_money

.grew_at_least_one_level
	ld a, DAYCARETEXT_GENIUSES
	call PrintDayCareText
	call YesNoBox
	jr c, .refused
	ld a, DAYCARETEXT_ASK_WITHDRAW
	call PrintDayCareText
	call YesNoBox
	jr c, .refused

.check_money
	ld de, wMoney
	ld bc, wStringBuffer2 + 2
	farcall CompareMoney
	jr c, .not_enough_money
	ld a, [wPartyCount]
	cp PARTY_LENGTH
	jr nc, .party_full
	and a
	ret

.refused
	ld a, DAYCARETEXT_OH_FINE
	scf
	ret

.not_enough_money
	ld a, DAYCARETEXT_NOT_ENOUGH_MONEY
	scf
	ret

.party_full
	ld a, DAYCARETEXT_PARTY_FULL
	scf
	ret

DayCare_GetBackMonForMoney:
	ld bc, wStringBuffer2 + 2
	ld de, wMoney
	farcall TakeMoney
	ld a, DAYCARETEXT_WITHDRAW
	call PrintDayCareText
	ld a, [wCurPartySpecies]
	call PlayMonCry
	ld a, DAYCARETEXT_GOT_BACK
	jr PrintDayCareText

GetPriceToRetrieveBreedmon:
	ld a, b
	ld [wStringBuffer2], a
	ld a, d
	ld [wStringBuffer2 + 1], a
	ld de, wStringBuffer1
	ld bc, NAME_LENGTH
	rst CopyBytes
	ld hl, 0
	ld bc, 100
	ld a, [wStringBuffer2 + 1]
	rst AddNTimes
	ld de, 100
	add hl, de
	xor a
	ld [wStringBuffer2 + 2], a
	ld a, h
	ld [wStringBuffer2 + 3], a
	ld a, l
	ld [wStringBuffer2 + 4], a
	ret

PrintDayCareText:
	ld e, a
	ld d, 0
	ld hl, .TextTable
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jmp PrintText

.TextTable:
; entries correspond to DAYCARETEXT_* constants
	dw .DayCareManIntroText ; 00
	dw .DayCareManIntroEggText ; 01
	dw .DayCareLadyIntroText ; 02
	dw .DayCareLadyIntroEggText ; 03
	dw .WhatShouldIRaiseText ; 04
	dw .IllRaiseYourMonText ; 05
	dw .CantAcceptEggText ; 06
	dw .OnlyOneMonText ; 07
	dw .LastHealthyMonText ; 08
	dw .ComeBackLaterText ; 09
	dw .RemoveMailText ; 0a
	dw .AreWeGeniusesText ; 0b
	dw .YourMonHasGrownText ; 0c
	dw .PerfectHeresYourMonText ; 0d
	dw .GotBackMonText ; 0e
	dw .BackAlreadyText ; 0f
	dw .HaveNoRoomText ; 10
	dw .NotEnoughMoneyText ; 11
	dw .OhFineThenText ; 12
	dw .ComeAgainText ; 13

.DayCareManIntroText:
	text_far _DayCareManIntroText
	text_end

.DayCareManIntroEggText:
	text_far _DayCareManIntroEggText
	text_end

.DayCareLadyIntroText:
	text_far _DayCareLadyIntroText
	text_end

.DayCareLadyIntroEggText:
	text_far _DayCareLadyIntroEggText
	text_end

.WhatShouldIRaiseText:
	text_far _WhatShouldIRaiseText
	text_end

.OnlyOneMonText:
	text_far _OnlyOneMonText
	text_end

.CantAcceptEggText:
	text_far _CantAcceptEggText
	text_end

.RemoveMailText:
	text_far _RemoveMailText
	text_end

.LastHealthyMonText:
	text_far _LastHealthyMonText
	text_end

.IllRaiseYourMonText:
	text_far _IllRaiseYourMonText
	text_end

.ComeBackLaterText:
	text_far _ComeBackLaterText
	text_end

.AreWeGeniusesText:
	text_far _AreWeGeniusesText
	text_end

.YourMonHasGrownText:
	text_far _YourMonHasGrownText
	text_end

.PerfectHeresYourMonText:
	text_far _PerfectHeresYourMonText
	text_end

.GotBackMonText:
	text_far _GotBackMonText
	text_end

.BackAlreadyText:
	text_far _BackAlreadyText
	text_end

.HaveNoRoomText:
	text_far _HaveNoRoomText
	text_end

.NotEnoughMoneyText:
	text_far _NotEnoughMoneyText
	text_end

.OhFineThenText:
	text_far _OhFineThenText
	text_end

.ComeAgainText:
	text_far _ComeAgainText
	text_end

DayCareManOutside:
	ld hl, wDayCareMan
	bit DAYCAREMAN_HAS_EGG_F, [hl]
	jr nz, .AskGiveEgg
	ld hl, .NotYetText
	jmp PrintText

.NotYetText:
	text_far _NotYetText
	text_end

.AskGiveEgg:
	ld hl, .FoundAnEggText
	call PrintText
	call YesNoBox
	jr c, .Declined
	ld a, [wPartyCount]
	cp PARTY_LENGTH
	jr nc, .PartyFull
	call DayCare_GiveEgg
	ld hl, wDayCareMan
	res DAYCAREMAN_HAS_EGG_F, [hl]
	call DayCare_InitBreeding
	ld hl, .ReceivedEggText
	call PrintText
	ld de, SFX_GET_EGG
	call PlaySFX
	ld c, 120
	call DelayFrames
	ld hl, .TakeGoodCareOfEggText
	jr .Load0

.Declined:
	ld hl, .IllKeepItThanksText

.Load0:
	call PrintText
	xor a ; FALSE
	ld [wScriptVar], a
	ret

.PartyFull:
	ld hl, .NoRoomForEggText
	call PrintText
	ld a, TRUE
	ld [wScriptVar], a
	ret

.FoundAnEggText:
	text_far _FoundAnEggText
	text_end

.ReceivedEggText:
	text_far _ReceivedEggText
	text_end

.TakeGoodCareOfEggText:
	text_far _TakeGoodCareOfEggText
	text_end

.IllKeepItThanksText:
	text_far _IllKeepItThanksText
	text_end

.NoRoomForEggText:
	text_far _NoRoomForEggText
	text_end

DayCare_GiveEgg:
	call DayCare_GenerateEgg
	ld a, [wEggMonLevel]
	ld [wCurPartyLevel], a
	ld hl, wPartyCount
	ld a, [hl]
	cp PARTY_LENGTH
	jr nc, .PartyFull
	inc a
	ld [hl], a

	ld c, a
	ld b, 0
	add hl, bc
	ld a, EGG
	ld [hli], a
	ld a, [wEggMonSpecies]
	ld [wCurSpecies], a
	ld [wCurPartySpecies], a
	ld [hl], -1

	ld hl, wPartyMonNicknames
	ld bc, MON_NAME_LENGTH
	call DayCare_GetCurrentPartyMember
	ld hl, wEggMonNickname
	rst CopyBytes

	ld hl, wPartyMonOTs
	ld bc, NAME_LENGTH
	call DayCare_GetCurrentPartyMember
	ld hl, wEggMonOT
	rst CopyBytes

	ld hl, wPartyMon1
	ld bc, PARTYMON_STRUCT_LENGTH
	call DayCare_GetCurrentPartyMember
	ld hl, wEggMon
	ld bc, BOXMON_STRUCT_LENGTH
	rst CopyBytes

	call GetBaseData
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld b, h
	ld c, l
	ld hl, MON_ID + 1
	add hl, bc
	push hl
	ld hl, MON_MAXHP
	add hl, bc
	ld d, h
	ld e, l
	pop hl
	push bc
	ld b, FALSE
	predef CalcMonStats
	pop bc
	ld hl, MON_HP
	add hl, bc
	xor a
	ld [hli], a
	ld [hl], a
	and a
	ret

.PartyFull:
	scf
	ret

DayCare_GetCurrentPartyMember:
	ld a, [wPartyCount]
	dec a
	rst AddNTimes
	ld d, h
	ld e, l
	ret

DayCare_InitBreeding:
	ld a, [wDayCareLady]
	bit DAYCARELADY_HAS_MON_F, a
	ret z
	ld a, [wDayCareMan]
	bit DAYCAREMAN_HAS_MON_F, a
	ret z
	farcall CheckBreedmonCompatibility
	ld a, [wBreedingCompatibility]
	and a
	ret z
	ld hl, wDayCareMan
	set DAYCAREMAN_MONS_COMPATIBLE_F, [hl]
.loop
	call Random
	cp 150
	jr c, .loop
	ld [wStepsToEgg], a
	ret

DayCare_GenerateEgg:
	xor a
	ld hl, wEggMon
	ld bc, BOXMON_STRUCT_LENGTH
	rst ByteFill
	ld hl, wEggMonNickname
	ld bc, MON_NAME_LENGTH
	rst ByteFill
	ld hl, wEggMonOT
	ld bc, NAME_LENGTH
	rst ByteFill
	ld a, [wBreedMon1IVs]
	ld [wTempMonIVs], a
	ld a, [wBreedMon1IVs + 1]
	ld [wTempMonIVs + 1], a
	ld a, [wBreedMon1IVs + 2]
	ld [wTempMonIVs + 2], a
	ld a, [wBreedMon1IVs + 3]
	ld [wTempMonIVs + 3], a
	ld a, [wBreedMon1Species]
	ld [wCurPartySpecies], a
	ld a, TEMPMON
	ld [wMonType], a
	ld hl, DITTO
	call GetPokemonIDFromIndex
	ld c, a
	ld a, [wBreedMon1Species]
	cp c
	ld a, 1
	jr z, .LoadWhichBreedmonIsTheMother
	ld a, [wBreedMon2Species]
	cp c
	ld a, $0 ; no-optimize a = 0
	jr z, .LoadWhichBreedmonIsTheMother
	farcall GetGender
	ld a, $0 ; no-optimize a = 0
	jr z, .LoadWhichBreedmonIsTheMother
	inc a

.LoadWhichBreedmonIsTheMother:
	ld [wBreedMotherOrNonDitto], a
	and a
	ld a, [wBreedMon1Species]
	jr z, .GotMother
	ld a, [wBreedMon2Species]

.GotMother:
	ld [wCurPartySpecies], a
	farcall GetLowestEvolutionStage
	ld a, EGG_LEVEL
	ld [wCurPartyLevel], a
	call Daycare_CheckAlternateOffspring
	ld [wCurPartySpecies], a
	ld [wCurSpecies], a
	ld [wEggMonSpecies], a

	call GetBaseData
	ld hl, wEggMonNickname
	ld de, .String_EGG
	call CopyName2
	ld hl, wPlayerName
	ld de, wEggMonOT
	ld bc, NAME_LENGTH
	rst CopyBytes
	xor a
	ld [wEggMonItem], a
	ld de, wEggMonMoves
	xor a ; FALSE
	ld [wSkipMovesBeforeLevelUp], a
	predef FillMoves
	farcall InitEggMoves
	ld hl, wEggMonID
	ld a, [wPlayerID]
	ld [hli], a
	ld a, [wPlayerID + 1]
	ld [hl], a
	ld a, [wCurPartyLevel]
	ld d, a
	farcall CalcExpAtLevel
	ld hl, wEggMonExp
	ldh a, [hMultiplicand]
	ld [hli], a
	ldh a, [hMultiplicand + 1]
	ld [hli], a
	ldh a, [hMultiplicand + 2]
	ld [hl], a

	; Zero EVs
	xor a
	ld b, wEggMonIVs - wEggMonEVs
	ld hl, wEggMonEVs
.loop2
	ld [hli], a
	dec b
	jr nz, .loop2

	; Set random IVs
	ld hl, wEggMonIVs
	call Random
	ld [hli], a
	call Random
	ld [hli], a
	call Random
	ld [hli], a
	call Random
	ld [hl], a

	; Normal IV inheritance is 3 random IVs from the parents
	; at random.
	lb bc, 3, %000000 ; Already inherited

	; Do the rest of the IVs
.iv_inherit_loop
	ld a, 12
	call RandomRange
	srl a
	push af
	ld a, 2
	ld hl, wBreedMon1IVs
	call c, GetParentAddr
	pop af
	ld e, a
	call InheritIV
	jr z, .iv_inherit_loop

	; Zero the personality data
	xor a
	ld [wEggMonPersonality], a
	ld [wEggMonPersonality + 1], a

	; TODO: Breeding abilities

	call Random
	and a
	jr nz, .not_shiny ; 255/256 not shiny

	; Shiny. Shiny rate after the above pass is:
	; 1/16 - Usual
	ld a, 16
	call RandomRange
	ld b, a
	ld c, 1
	ld a, b
	cp c
	jr nc, .not_shiny
	ld a, SHINY_MASK
	ld hl, wEggMonShiny
	or [hl]
	ld [hl], a
.not_shiny

	; Nature
	ld hl , wEggMonNature
	ld a, NUM_NATURES
	call RandomRange
	and NATURE_MASK
	or [hl]
	ld [hl], a

	; Gender
	ld hl, wEggMonGender
	call Random
	and 1
	rrca
	or [hl]
	ld [hl], a

	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld hl, BaseData
	ld a, BANK(BaseData)
	call LoadIndirectPointer
	ld bc, BASE_GENDER
	add hl, bc
	call GetFarByte
	cp -1
	jr z, .genderless_or_male
	cp GENDER_F100
	jr z, .female
	ld b, a
	ld hl, wEggMonGender
	call Random
	cp b
	jr c, .female
	jr nz, .genderless_or_male
.female
	set MON_GENDER_F, [hl]
.genderless_or_male


	ld hl, wStringBuffer1
	ld de, wMonOrItemNameBuffer
	ld bc, NAME_LENGTH
	rst CopyBytes
	ld hl, wEggMonMoves
	ld de, wEggMonPP
	predef FillPP
	ld hl, wMonOrItemNameBuffer
	ld de, wStringBuffer1
	ld bc, NAME_LENGTH
	rst CopyBytes
	ld a, [wBaseEggSteps]
	ld hl, wEggMonHappiness
	ld [hli], a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld a, [wCurPartyLevel]
	ld [wEggMonLevel], a
	ret

.String_EGG:
	db "EGG@"

Daycare_CheckAlternateOffspring:
	; returns [wCurPartySpecies] in a, unless that species may give birth to an alternate species (e.g., gender variant)
	; if an alternate species is possible, it returns it 50% of the time
	call Random
	add a
	ld a, [wCurPartySpecies]
	ret nc
	push hl
	push de
	push bc
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld de, 4
	ld hl, .alternate_offspring_table
	call IsInWordArray
	pop bc
	pop de
	ld a, [wCurPartySpecies]
	jr nc, .done
	inc hl
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call GetPokemonIDFromIndex
.done
	pop hl
	ret

.alternate_offspring_table
	dw NIDORAN_F, NIDORAN_M
	dw -1

GetParentAddr:
; if a = 2, get parent 2 instead of 1 (assumed on hl). Best used in
; conjuction with CheckParentItem.
	cp 2
	ret nz
	push bc
	ld bc, wBreedMon2 - wBreedMon1
	add hl, bc
	pop bc
	ret

InheritIV: ; TODO actually adapt this for IVs
; Inherit IV e (0=HP, 1=Atk, 2=Def, 3=Speed, 4=Sp.Atk, 5=Sp.Def)
; from parent IVs in hl. Returns nz if we can't inherit anything else.
; b: inheritance counts left, c: already inherited bitfield
; Preserves de+hl
	; Figure out if we can inherit the IV
	; Have we inherited as much as we can?
	ld a, b
	and a
	jmp z, .cant_inherit_any_more

	; Have we inherited every stat?
	ld a, c
	cp %111111
	jmp z, .cant_inherit_any_more

	; Have we already inherited the given stat?
	push de
	ld d, %000001
	inc e
.iv_check_loop
	dec e
	jr z, .got_iv_bit
	sla d
	jr .iv_check_loop
.got_iv_bit
	ld a, d
	and c
	ld a, d
	pop de
	jr nz, .cant_inherit_this_stat

	; Mark the stat as inherited and decrease inherit counter
	or c
	ld c, a
	dec b

	; Inherit the stat
	; inc/dec doesn't alter carry flag
	; IVs are stored as %0SSa_aaaa, %sssd_dddd, %0HHt_tttt, %hhhf_ffff
	; Hh=HP, a=Atk, d=Def, Ss=Speed, t=SpAtk, f=SpDef
	ld a, e
	push de
	push hl
	ld de, wEggMonIVs
	bit 0, a ; Test if a is odd
	push de
	; current HL is Parent, DE is Egg, if a is odd, swap
	call nz, SwapHLDE
	inc a
	dec a
	jr z, .HP
	dec a
	jr z, .Atk
	dec a
	jr z, .Def
	dec a
	jr z, .Speed
	dec a
	jr z, .SpAtk
; SpDef
	call GetSpecialDefenseIV
	ld h, a
	pop de
	inc de
	inc de
	inc de
	jr .set_simple_egg_iv

.SpAtk
	call GetSpecialAttackIV
	ld h, a
	pop de
	inc de
	inc de
	jr .set_simple_egg_iv

.Def
	call GetDefenseIV
	ld h, a
	pop de
	inc de
	jr .set_simple_egg_iv

.Atk
	call GetAttackIV
	ld h, a
	pop de
.set_simple_egg_iv
	ld a, [de]
	and %11100000
	or h
	ld [de], a
	jr .inherit_done

.Speed
	call GetSpeedIV
	ld h, a
	pop de
	jr .set_split_egg_iv

.HP
	call GetHPIV
	ld h, a
	pop de
	inc de
	inc de
.set_split_egg_iv
	ld a, [de]
	and %00011111
	ld l, a
	ld a, h
	and %11000
	rla
	rla
	or l
	ld [de], a
	inc de
	ld a, [de]
	and %00011111
	ld l, a
	ld a, h
	and %00111
	swap a
	rla
	or l
	ld [de], a
.inherit_done
	pop hl
	pop de
.cant_inherit_this_stat
	xor a
	ret
.cant_inherit_any_more
	or 1
	ret