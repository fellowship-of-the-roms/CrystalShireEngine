; AI_SMART prefers these moves during harsh sunlight.

SunnyDayMoves:
; BUG: "Smart" AI does not encourage Solar Beam, Flame Wheel, or Moonlight during Sunny Day (see docs/bugs_and_glitches.md)
	dw FIRE_PUNCH
	dw EMBER
	dw FLAMETHROWER
	dw FIRE_SPIN
	dw FIRE_BLAST
	dw SACRED_FIRE
	dw MORNING_SUN
	dw SYNTHESIS
	dw -1 ; end
