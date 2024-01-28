SetCurrentWeather::
; This could be populated with a more robust weather system, but for now it's just random
	ld a, [wCurrentWeather]
	ld b, a
	call GetMapEnvironment
	call CheckOutdoorMap
	ld a, OW_WEATHER_NONE
	jr nz, .got_weather ; no weather indoors.
	ld a, NUM_WEATHERS
	call RandomRange
.got_weather
	ld [wCurrentWeather], a
	dec a ; OW_WEATHER_RAIN
	ld a, WEATHER_RAIN
	ld [wBattleWeather], a
	jr z, .done_battle_weather
	; OW_WEATHER_HAIL
	ld a, WEATHER_HAIL
	ld [wBattleWeather], a
.done_battle_weather
	ld a, 255
	ld [wWeatherCount], a
	xor a
	ld [wOverworldWeatherCooldown], a
	ld a, [wCurrentWeather]
	cp b
	ret z
	ld a, 80
	ld [wOverworldWeatherCooldown], a
	ret
