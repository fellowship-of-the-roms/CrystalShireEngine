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

    ; Otherwise, do nothing
    ret
.drizzle
    ld hl, AbilityText_MadeItRain
    call StdAbilityTextbox
    ld a, WEATHER_RAIN
    ld [wBattleWeather], a
    ld a, 255 ; 8-bit restriction. only 255 turns allowed.
    ld [wWeatherCount], a
    ret

.drought
    ld hl, AbilityText_SunRaysIntensified
    call StdAbilityTextbox
    ld a, WEATHER_SUN
    ld [wBattleWeather], a
    ld a, 255 ; 8-bit restriction. only 255 turns allowed.
    ld [wWeatherCount], a
    ret

.sand_stream
    ld hl, AbilityText_WhippedUpASandStorm
    call StdAbilityTextbox
    ld a, WEATHER_SANDSTORM
    ld [wBattleWeather], a
    ld a, 255 ; 8-bit restriction. only 255 turns allowed.
    ld [wWeatherCount], a
    ret
