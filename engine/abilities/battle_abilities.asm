AbilityText:: ; Defines the ability text bank, referenced as BANK(AbilityText)

; Checks the entrance ability based off of the Pokémon personality in HL, Player/Enemy in B (0 for Player, 1 for enemy), and species in C.
; Performs the ability if applicable.
Check_Entrance_Ability:
    call GetAbility
    cp DRIZZLE
    jr z, .drizzle
    cp DROUGHT
    jr z, .drought
    cp SAND_STREAM
    jr z, .sand_stream
    cp PRESSURE
    jr z, .pressure
    cp INTIMIDATE
    jr z, .intimidate
    ; Otherwise, do nothing
    ret

.drizzle
    ld a, WEATHER_RAIN
    ld [wBattleWeather], a
    ld a, 255 ; 8-bit restriction. only 255 turns allowed.
    ld [wWeatherCount], a
    farcall HandleWeather.weather_ability_skip
    ld hl, AbilityText_MadeItRain
    call StdAbilityTextbox
    ret

.drought
    ld a, WEATHER_SUN
    ld [wBattleWeather], a
    ld a, 255 ; 8-bit restriction. only 255 turns allowed.
    ld [wWeatherCount], a
    farcall HandleWeather.weather_ability_skip
    ld hl, AbilityText_SunRaysIntensified
    call StdAbilityTextbox
    ret

.sand_stream
    ld a, WEATHER_SANDSTORM
    ld [wBattleWeather], a
    ld a, 255 ; 8-bit restriction. only 255 turns allowed.
    ld [wWeatherCount], a
    farcall HandleWeather.weather_ability_skip
    ld hl, AbilityText_WhippedUpASandStorm
    call StdAbilityTextbox
    ret

.pressure
    ld hl, AbilityText_ExertingPressure
    call StdAbilityTextbox
    ret

.intimidate
    call Ability_LoadOppSpeciesAndPersonality
    call GetAbility
    cp WHITE_SMOKE
    jr z, .blocked_intimidate
    cp HYPER_CUTTER
    jr z, .blocked_intimidate
    cp CLEAR_BODY
    jr z, .blocked_intimidate
    ; We're still here? Push forward!
; Known bug: it does briefly flash the HP bar
    farcall BattleCommand_StatDownAnim.intimidate_skip
    farcall BattleCommand_AttackDown
; Finally, print this
    ld hl, AbilityText_IntimidateCutsAttack
    call StdAbilityTextbox
    ret

; At this point, we say "Hey, this blocked that!"
.blocked_intimidate
    call Ability_LoadAbilityName
    ld hl, AbilityText_IntimidateBlocked
    call StdAbilityTextbox
    ret
