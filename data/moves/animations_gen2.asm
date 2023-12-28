BattleAnimationsGen2::
	dw BattleAnim_Sketch
	dw BattleAnim_TripleKick
	dw BattleAnim_Thief
	dw BattleAnim_SpiderWeb
	dw BattleAnim_MindReader
	dw BattleAnim_Nightmare
	dw BattleAnim_FlameWheel
	dw BattleAnim_Snore
	dw BattleAnim_Curse
	dw BattleAnim_Flail
	dw BattleAnim_Conversion2
	dw BattleAnim_Aeroblast
	dw BattleAnim_CottonSpore
	dw BattleAnim_Reversal
	dw BattleAnim_Spite
	dw BattleAnim_PowderSnow
	dw BattleAnim_Protect
	dw BattleAnim_MachPunch
	dw BattleAnim_ScaryFace
	dw BattleAnim_FaintAttack
	dw BattleAnim_SweetKiss
	dw BattleAnim_BellyDrum
	dw BattleAnim_SludgeBomb
	dw BattleAnim_MudSlap
	dw BattleAnim_Octazooka
	dw BattleAnim_Spikes
	dw BattleAnim_ZapCannon
	dw BattleAnim_Foresight
	dw BattleAnim_DestinyBond
	dw BattleAnim_PerishSong
	dw BattleAnim_IcyWind
	dw BattleAnim_Detect
	dw BattleAnim_BoneRush
	dw BattleAnim_LockOn
	dw BattleAnim_Outrage
	dw BattleAnim_Sandstorm
	dw BattleAnim_GigaDrain
	dw BattleAnim_Endure
	dw BattleAnim_Charm
	dw BattleAnim_Rollout
	dw BattleAnim_FalseSwipe
	dw BattleAnim_Swagger
	dw BattleAnim_MilkDrink
	dw BattleAnim_Spark
	dw BattleAnim_FuryCutter
	dw BattleAnim_SteelWing
	dw BattleAnim_MeanLook
	dw BattleAnim_Attract
	dw BattleAnim_SleepTalk
	dw BattleAnim_HealBell
	dw BattleAnim_Return
	dw BattleAnim_Present
	dw BattleAnim_Frustration
	dw BattleAnim_Safeguard
	dw BattleAnim_PainSplit
	dw BattleAnim_SacredFire
	dw BattleAnim_Magnitude
	dw BattleAnim_Dynamicpunch
	dw BattleAnim_Megahorn
	dw BattleAnim_Dragonbreath
	dw BattleAnim_BatonPass
	dw BattleAnim_Encore
	dw BattleAnim_Pursuit
	dw BattleAnim_RapidSpin
	dw BattleAnim_SweetScent
	dw BattleAnim_IronTail
	dw BattleAnim_MetalClaw
	dw BattleAnim_VitalThrow
	dw BattleAnim_MorningSun
	dw BattleAnim_Synthesis
	dw BattleAnim_Moonlight
	dw BattleAnim_HiddenPower
	dw BattleAnim_CrossChop
	dw BattleAnim_Twister
	dw BattleAnim_RainDance
	dw BattleAnim_SunnyDay
	dw BattleAnim_Crunch
	dw BattleAnim_MirrorCoat
	dw BattleAnim_PsychUp
	dw BattleAnim_Extremespeed
	dw BattleAnim_Ancientpower
	dw BattleAnim_ShadowBall
	dw BattleAnim_FutureSight
	dw BattleAnim_RockSmash
	dw BattleAnim_Whirlpool
	dw BattleAnim_BeatUp
.IndirectEnd::

BattleAnim_Sketch:
	anim_1gfx BATTLE_ANIM_GFX_OBJECTS
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MON_LIGHT_DARK_REPEATING, $0, BG_EFFECT_USER, $20
	anim_sound 0, 0, SFX_SKETCH
	anim_obj BATTLE_ANIM_OBJ_SKETCH, 72, 80, $0
	anim_wait 80
	anim_incbgeffect BATTLE_BG_EFFECT_CYCLE_MON_LIGHT_DARK_REPEATING
	anim_call BattleAnim_ShowMon_0
	anim_wait 1
	anim_ret

BattleAnim_TripleKick:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_if_param_equal $1, .alternate1
	anim_if_param_equal $2, .alternate2
	anim_sound 0, 1, SFX_MEGA_KICK
	anim_obj BATTLE_ANIM_OBJ_KICK, 144, 48, $0
	anim_wait 6
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 144, 48, $0
	anim_wait 8
	anim_ret

.alternate1:
	anim_sound 0, 1, SFX_DOUBLE_KICK
	anim_obj BATTLE_ANIM_OBJ_KICK, 120, 64, $0
	anim_wait 6
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 120, 64, $0
	anim_wait 8
	anim_ret

.alternate2:
	anim_sound 0, 1, SFX_DOUBLE_KICK
	anim_obj BATTLE_ANIM_OBJ_KICK, 132, 32, $0
	anim_wait 6
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 132, 32, $0
	anim_wait 8
	anim_ret

BattleAnim_Thief:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_TACKLE, $0, BG_EFFECT_USER, $0
	anim_wait 16
	anim_sound 0, 1, SFX_THIEF
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 128, 48, $0
	anim_wait 16
	anim_call BattleAnim_ShowMon_0
	anim_wait 1
	anim_1gfx BATTLE_ANIM_GFX_STATUS
	anim_sound 0, 1, SFX_THIEF_2
	anim_obj BATTLE_ANIM_OBJ_THIEF, 120, 76, $1
	anim_wait 64
	anim_ret

BattleAnim_SpiderWeb:
	anim_1gfx BATTLE_ANIM_GFX_WEB
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_obj BATTLE_ANIM_OBJ_SPIDER_WEB, 132, 48, $0
	anim_sound 6, 2, SFX_SPIDER_WEB
	anim_obj BATTLE_ANIM_OBJ_STRING_SHOT, 64, 80, $0
	anim_wait 4
	anim_obj BATTLE_ANIM_OBJ_STRING_SHOT, 64, 88, $0
	anim_wait 4
	anim_obj BATTLE_ANIM_OBJ_STRING_SHOT, 64, 84, $0
	anim_wait 64
	anim_ret

BattleAnim_MindReader:
	anim_1gfx BATTLE_ANIM_GFX_MISC
	anim_sound 0, 1, SFX_MIND_READER
.loop
	anim_obj BATTLE_ANIM_OBJ_MIND_READER, 132, 48, $3
	anim_obj BATTLE_ANIM_OBJ_MIND_READER, 132, 48, $12
	anim_obj BATTLE_ANIM_OBJ_MIND_READER, 132, 48, $20
	anim_obj BATTLE_ANIM_OBJ_MIND_READER, 132, 48, $31
	anim_wait 16
	anim_loop 2, .loop
	anim_wait 32
	anim_ret

BattleAnim_Nightmare:
	anim_1gfx BATTLE_ANIM_GFX_ANGELS
	anim_bgp $1b
	anim_obp0 $f
	anim_obj BATTLE_ANIM_OBJ_NIGHTMARE, 132, 40, $0
	anim_obj BATTLE_ANIM_OBJ_NIGHTMARE, 132, 40, $a0
	anim_sound 0, 1, SFX_NIGHTMARE
	anim_wait 96
	anim_ret

BattleAnim_FlameWheel:
	anim_1gfx BATTLE_ANIM_GFX_FIRE
.loop
	anim_sound 0, 0, SFX_EMBER
	anim_obj BATTLE_ANIM_OBJ_FLAME_WHEEL, 48, 96, $0
	anim_wait 6
	anim_loop 8, .loop
	anim_wait 96
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_TACKLE, $0, BG_EFFECT_USER, $0
	anim_wait 4
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $4, $3
	anim_sound 0, 1, SFX_EMBER
	anim_obj BATTLE_ANIM_OBJ_FIRE_BLAST, 136, 48, $1
	anim_obj BATTLE_ANIM_OBJ_FIRE_BLAST, 136, 48, $4
	anim_obj BATTLE_ANIM_OBJ_FIRE_BLAST, 136, 48, $5
	anim_wait 8
	anim_bgeffect BATTLE_BG_EFFECT_SHOW_MON, $0, BG_EFFECT_TARGET, $0
	anim_wait 4
	anim_incobj 9
	anim_wait 8
	anim_ret

BattleAnim_Snore:
	anim_2gfx BATTLE_ANIM_GFX_STATUS, BATTLE_ANIM_GFX_NOISE
	anim_obj BATTLE_ANIM_OBJ_ASLEEP, 64, 80, $0
	anim_wait 32
	anim_bgeffect BATTLE_BG_EFFECT_SHAKE_SCREEN_X, $60, $2, $0
	anim_sound 0, 0, SFX_SNORE
.loop
	anim_call BattleAnimSub_Sound
	anim_wait 16
	anim_loop 2, .loop
	anim_wait 8
	anim_ret

BattleAnim_Curse:
	anim_if_param_equal $1, .NotGhost
	anim_2gfx BATTLE_ANIM_GFX_HIT, BATTLE_ANIM_GFX_OBJECTS
	anim_obj BATTLE_ANIM_OBJ_CURSE, 68, 72, $0
	anim_sound 0, 0, SFX_CURSE
	anim_wait 32
	anim_incobj 1
	anim_wait 12
	anim_sound 0, 0, SFX_POISON_STING
	anim_obj BATTLE_ANIM_OBJ_HIT, 44, 96, $0
	anim_wait 16
	anim_ret

.NotGhost:
	anim_1gfx BATTLE_ANIM_GFX_SPEED
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_FADE_MON_TO_BLACK_REPEATING, $0, BG_EFFECT_USER, $40
	anim_sound 0, 0, SFX_SHARPEN
	anim_wait 64
	anim_incbgeffect BATTLE_BG_EFFECT_FADE_MON_TO_BLACK_REPEATING
	anim_wait 1
	anim_bgeffect BATTLE_BG_EFFECT_FADE_MON_TO_LIGHT, $0, BG_EFFECT_USER, $40
.loop
	anim_sound 0, 0, SFX_SWORDS_DANCE
	anim_obj BATTLE_ANIM_OBJ_FOCUS, 44, 108, $6
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_FOCUS, 36, 108, $6
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_FOCUS, 52, 108, $8
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_FOCUS, 28, 108, $8
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_FOCUS, 60, 108, $6
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_FOCUS, 20, 108, $8
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_FOCUS, 68, 108, $8
	anim_wait 2
	anim_loop 3, .loop
	anim_wait 8
	anim_incbgeffect BATTLE_BG_EFFECT_FADE_MON_TO_LIGHT
	anim_call BattleAnim_ShowMon_0
	anim_ret

BattleAnim_Flail:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_call BattleAnim_TargetObj_1Row
	anim_sound 0, 0, SFX_SUBMISSION
	anim_bgeffect BATTLE_BG_EFFECT_FLAIL, $0, BG_EFFECT_USER, $0
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 120, 48, $0
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 152, 48, $0
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 136, 48, $0
	anim_wait 8
	anim_incbgeffect BATTLE_BG_EFFECT_FLAIL
	anim_call BattleAnim_ShowMon_0
	anim_ret

BattleAnim_Conversion2:
	anim_1gfx BATTLE_ANIM_GFX_EXPLOSION
	anim_sound 63, 3, SFX_SHARPEN
	anim_obj BATTLE_ANIM_OBJ_CONVERSION2, 132, 44, $0
	anim_obj BATTLE_ANIM_OBJ_CONVERSION2, 132, 44, $8
	anim_obj BATTLE_ANIM_OBJ_CONVERSION2, 132, 44, $10
	anim_obj BATTLE_ANIM_OBJ_CONVERSION2, 132, 44, $18
	anim_obj BATTLE_ANIM_OBJ_CONVERSION2, 132, 44, $20
	anim_obj BATTLE_ANIM_OBJ_CONVERSION2, 132, 44, $28
	anim_obj BATTLE_ANIM_OBJ_CONVERSION2, 132, 44, $30
	anim_obj BATTLE_ANIM_OBJ_CONVERSION2, 132, 44, $38
	anim_wait 128
	anim_wait 48
	anim_ret

BattleAnim_Aeroblast:
	anim_2gfx BATTLE_ANIM_GFX_BEAM, BATTLE_ANIM_GFX_AEROBLAST
	anim_bgp $1b
	anim_bgeffect BATTLE_BG_EFFECT_SHAKE_SCREEN_X, $50, $4, $10
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_sound 0, 0, SFX_AEROBLAST
	anim_obj BATTLE_ANIM_OBJ_AEROBLAST, 72, 88, $0
	anim_wait 32
	anim_sound 0, 0, SFX_HYPER_BEAM
	anim_obj BATTLE_ANIM_OBJ_BEAM, 80, 84, $0
	anim_wait 2
	anim_sound 0, 1, SFX_HYPER_BEAM
	anim_obj BATTLE_ANIM_OBJ_BEAM, 96, 76, $0
	anim_wait 2
	anim_sound 0, 1, SFX_HYPER_BEAM
	anim_obj BATTLE_ANIM_OBJ_BEAM, 112, 68, $0
	anim_obj BATTLE_ANIM_OBJ_BEAM_TIP, 126, 62, $0
	anim_wait 48
	anim_ret

BattleAnim_CottonSpore:
	anim_obp0 $54
	anim_1gfx BATTLE_ANIM_GFX_MISC
	anim_sound 0, 1, SFX_POWDER
.loop
	anim_obj BATTLE_ANIM_OBJ_COTTON_SPORE, 132, 32, $0
	anim_wait 8
	anim_loop 5, .loop
	anim_wait 96
	anim_ret

BattleAnim_Reversal:
	anim_2gfx BATTLE_ANIM_GFX_SHINE, BATTLE_ANIM_GFX_HIT
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $0, $0
	anim_sound 0, 1, SFX_MEGA_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT, 112, 64, $0
	anim_wait 2
	anim_sound 0, 1, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_FORESIGHT, 120, 56, $0
	anim_wait 2
	anim_sound 0, 1, SFX_MEGA_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT, 128, 56, $0
	anim_wait 2
	anim_sound 0, 1, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_FORESIGHT, 136, 48, $0
	anim_wait 2
	anim_sound 0, 1, SFX_MEGA_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT, 144, 48, $0
	anim_wait 2
	anim_sound 0, 1, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_FORESIGHT, 152, 40, $0
	anim_wait 24
	anim_ret

BattleAnim_Spite:
	anim_1gfx BATTLE_ANIM_GFX_ANGELS
	anim_obj BATTLE_ANIM_OBJ_SPITE, 132, 16, $0
	anim_sound 0, 1, SFX_SPITE
	anim_wait 96
	anim_ret

BattleAnim_PowderSnow:
	anim_1gfx BATTLE_ANIM_GFX_ICE
.loop
	anim_sound 6, 2, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_POWDER_SNOW, 64, 88, $23
	anim_wait 2
	anim_sound 6, 2, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_POWDER_SNOW, 64, 80, $24
	anim_wait 2
	anim_sound 6, 2, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_POWDER_SNOW, 64, 96, $23
	anim_wait 2
	anim_loop 2, .loop
	anim_bgeffect BATTLE_BG_EFFECT_WHITE_HUES, $0, $8, $0
	anim_wait 40
	anim_call BattleAnimSub_Ice
	anim_wait 32
	anim_ret

BattleAnim_Protect:
	anim_1gfx BATTLE_ANIM_GFX_OBJECTS
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_obj BATTLE_ANIM_OBJ_PROTECT, 80, 80, $0
	anim_obj BATTLE_ANIM_OBJ_PROTECT, 80, 80, $d
	anim_obj BATTLE_ANIM_OBJ_PROTECT, 80, 80, $1a
	anim_obj BATTLE_ANIM_OBJ_PROTECT, 80, 80, $27
	anim_obj BATTLE_ANIM_OBJ_PROTECT, 80, 80, $34
	anim_sound 0, 0, SFX_PROTECT
	anim_wait 96
	anim_ret

BattleAnim_MachPunch:
	anim_2gfx BATTLE_ANIM_GFX_SPEED, BATTLE_ANIM_GFX_HIT
	anim_bgeffect BATTLE_BG_EFFECT_HIDE_MON, $0, BG_EFFECT_USER, $0
	anim_sound 0, 0, SFX_MENU
	anim_obj BATTLE_ANIM_OBJ_SPEED_LINE, 24, 88, $2
	anim_obj BATTLE_ANIM_OBJ_SPEED_LINE, 32, 88, $1
	anim_obj BATTLE_ANIM_OBJ_SPEED_LINE, 40, 88, $0
	anim_obj BATTLE_ANIM_OBJ_SPEED_LINE, 48, 88, $80
	anim_obj BATTLE_ANIM_OBJ_SPEED_LINE, 56, 88, $81
	anim_obj BATTLE_ANIM_OBJ_SPEED_LINE, 64, 88, $82
	anim_wait 12
	anim_sound 0, 1, SFX_MEGA_PUNCH
	anim_obj BATTLE_ANIM_OBJ_PUNCH, 136, 56, $0
	anim_wait 6
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 8
	anim_bgeffect BATTLE_BG_EFFECT_SHOW_MON, $0, BG_EFFECT_USER, $0
	anim_wait 16
	anim_ret

BattleAnim_ScaryFace:
	anim_1gfx BATTLE_ANIM_GFX_BEAM
	anim_bgeffect BATTLE_BG_EFFECT_ALTERNATE_HUES, $0, $2, $0
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_call BattleAnimSub_EyeBeams
	anim_wait 64
	anim_ret

BattleAnim_FaintAttack:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_sound 0, 0, SFX_CURSE
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_FADE_MON_TO_WHITE_WAIT_FADE_BACK, $0, BG_EFFECT_USER, $80
	anim_wait 96
	anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT, 120, 32, $0
	anim_wait 8
	anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT, 152, 40, $0
	anim_wait 8
	anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT, 136, 48, $0
	anim_wait 32
	anim_incbgeffect BATTLE_BG_EFFECT_FADE_MON_TO_WHITE_WAIT_FADE_BACK
	anim_call BattleAnim_ShowMon_0
	anim_wait 4
	anim_ret

BattleAnim_SweetKiss:
	anim_2gfx BATTLE_ANIM_GFX_OBJECTS, BATTLE_ANIM_GFX_ANGELS
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_obj BATTLE_ANIM_OBJ_SWEET_KISS, 96, 40, $0
	anim_sound 0, 1, SFX_SWEET_KISS
	anim_wait 32
	anim_sound 0, 1, SFX_SWEET_KISS_2
	anim_obj BATTLE_ANIM_OBJ_HEART, 120, 40, $0
	anim_wait 40
	anim_ret

BattleAnim_BellyDrum:
	anim_2gfx BATTLE_ANIM_GFX_HIT, BATTLE_ANIM_GFX_NOISE
	anim_sound 0, 0, SFX_BELLY_DRUM
	anim_obj BATTLE_ANIM_OBJ_BELLY_DRUM_HAND, 64, 104, $0
	anim_obj BATTLE_ANIM_OBJ_BELLY_DRUM_NOTE, 64, 92, $f8
	anim_wait 24
	anim_sound 0, 0, SFX_BELLY_DRUM
	anim_obj BATTLE_ANIM_OBJ_BELLY_DRUM_HAND, 64, 104, $0
	anim_obj BATTLE_ANIM_OBJ_BELLY_DRUM_NOTE, 64, 92, $f8
	anim_wait 24
	anim_sound 0, 0, SFX_BELLY_DRUM
	anim_obj BATTLE_ANIM_OBJ_BELLY_DRUM_HAND, 64, 104, $0
	anim_obj BATTLE_ANIM_OBJ_BELLY_DRUM_NOTE, 64, 92, $f8
	anim_wait 12
	anim_sound 0, 0, SFX_BELLY_DRUM
	anim_obj BATTLE_ANIM_OBJ_BELLY_DRUM_HAND, 64, 104, $0
	anim_obj BATTLE_ANIM_OBJ_BELLY_DRUM_NOTE, 64, 92, $f8
	anim_wait 12
	anim_sound 0, 0, SFX_BELLY_DRUM
	anim_obj BATTLE_ANIM_OBJ_BELLY_DRUM_HAND, 64, 104, $0
	anim_obj BATTLE_ANIM_OBJ_BELLY_DRUM_NOTE, 64, 92, $f8
	anim_wait 24
	anim_sound 0, 0, SFX_BELLY_DRUM
	anim_obj BATTLE_ANIM_OBJ_BELLY_DRUM_HAND, 64, 104, $0
	anim_obj BATTLE_ANIM_OBJ_BELLY_DRUM_NOTE, 64, 92, $f8
	anim_wait 12
	anim_sound 0, 0, SFX_BELLY_DRUM
	anim_obj BATTLE_ANIM_OBJ_BELLY_DRUM_HAND, 64, 104, $0
	anim_obj BATTLE_ANIM_OBJ_BELLY_DRUM_NOTE, 64, 92, $f8
	anim_wait 12
	anim_sound 0, 0, SFX_BELLY_DRUM
	anim_obj BATTLE_ANIM_OBJ_BELLY_DRUM_HAND, 64, 104, $0
	anim_obj BATTLE_ANIM_OBJ_BELLY_DRUM_NOTE, 64, 92, $f8
	anim_wait 12
	anim_sound 0, 0, SFX_BELLY_DRUM
	anim_obj BATTLE_ANIM_OBJ_BELLY_DRUM_HAND, 64, 104, $0
	anim_obj BATTLE_ANIM_OBJ_BELLY_DRUM_NOTE, 64, 92, $f8
	anim_wait 12
	anim_ret

BattleAnim_SludgeBomb:
	anim_2gfx BATTLE_ANIM_GFX_EGG, BATTLE_ANIM_GFX_POISON
	anim_bgeffect BATTLE_BG_EFFECT_BLACK_HUES, $0, $8, $0
	anim_sound 6, 2, SFX_SLUDGE_BOMB
	anim_obj BATTLE_ANIM_OBJ_SLUDGE_BOMB, 64, 92, $10
	anim_wait 36
	anim_call BattleAnimSub_Sludge
	anim_wait 64
	anim_ret

BattleAnim_MudSlap:
	anim_1gfx BATTLE_ANIM_GFX_SAND
	anim_obp0 $fc
	anim_call BattleAnimSub_SandOrMud
	anim_ret

BattleAnim_Octazooka:
	anim_3gfx BATTLE_ANIM_GFX_HAZE, BATTLE_ANIM_GFX_EGG, BATTLE_ANIM_GFX_SMOKE
	anim_sound 6, 2, SFX_SLUDGE_BOMB
	anim_obj BATTLE_ANIM_OBJ_OCTAZOOKA, 64, 92, $4
	anim_wait 16
	anim_obj BATTLE_ANIM_OBJ_BALL_POOF, 132, 56, $10
	anim_wait 8
	anim_if_param_equal $0, .done
.loop
	anim_obj BATTLE_ANIM_OBJ_SMOKE, 132, 60, $20
	anim_wait 8
	anim_loop 5, .loop
	anim_wait 128
.done
	anim_ret

BattleAnim_Spikes:
	anim_1gfx BATTLE_ANIM_GFX_MISC
	anim_sound 6, 2, SFX_MENU
	anim_obj BATTLE_ANIM_OBJ_SPIKES, 48, 88, $20
	anim_wait 8
	anim_sound 6, 2, SFX_MENU
	anim_obj BATTLE_ANIM_OBJ_SPIKES, 48, 88, $30
	anim_wait 8
	anim_sound 6, 2, SFX_MENU
	anim_obj BATTLE_ANIM_OBJ_SPIKES, 48, 88, $28
	anim_wait 64
	anim_ret

BattleAnim_ZapCannon:
	anim_2gfx BATTLE_ANIM_GFX_LIGHTNING, BATTLE_ANIM_GFX_EXPLOSION
	anim_bgp $1b
	anim_obp0 $30
	anim_sound 6, 2, SFX_ZAP_CANNON
	anim_obj BATTLE_ANIM_OBJ_ZAP_CANNON, 64, 92, $2
	anim_wait 40
	anim_sound 0, 1, SFX_THUNDERSHOCK
	anim_obj BATTLE_ANIM_OBJ_THUNDERBOLT_BALL, 136, 56, $2
	anim_wait 16
	anim_obj BATTLE_ANIM_OBJ_SPARKS_CIRCLE_BIG, 136, 56, $0
	anim_wait 128
	anim_ret

BattleAnim_Foresight:
	anim_1gfx BATTLE_ANIM_GFX_SHINE
	anim_call BattleAnim_UserObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $0, $0
	anim_sound 0, 1, SFX_FORESIGHT
	anim_obj BATTLE_ANIM_OBJ_FORESIGHT, 132, 40, $0
	anim_wait 24
	anim_bgeffect BATTLE_BG_EFFECT_FADE_MON_TO_BLACK_REPEATING, $0, BG_EFFECT_TARGET, $40
	anim_wait 64
	anim_incbgeffect BATTLE_BG_EFFECT_FADE_MON_TO_BLACK_REPEATING
	anim_call BattleAnim_ShowMon_1
	anim_wait 8
	anim_ret

BattleAnim_DestinyBond:
	anim_1gfx BATTLE_ANIM_GFX_ANGELS
	anim_bgp $1b
	anim_obp0 $0
	anim_if_param_equal $1, .fainted
	anim_sound 6, 2, SFX_WHIRLWIND
	anim_obj BATTLE_ANIM_OBJ_DESTINY_BOND, 44, 120, $2
	anim_wait 128
	anim_ret

.fainted:
	anim_obj BATTLE_ANIM_OBJ_DESTINY_BOND, 132, 76, $0
	anim_sound 0, 1, SFX_KINESIS
	anim_bgeffect BATTLE_BG_EFFECT_RETURN_MON, $0, BG_EFFECT_TARGET, $0
	anim_wait 32
	anim_ret

BattleAnim_PerishSong:
	anim_1gfx BATTLE_ANIM_GFX_NOISE
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_bgeffect BATTLE_BG_EFFECT_ALTERNATE_HUES, $0, $2, $0
	anim_sound 0, 2, SFX_PERISH_SONG
	anim_obj BATTLE_ANIM_OBJ_PERISH_SONG, 88, 0, $0
	anim_obj BATTLE_ANIM_OBJ_PERISH_SONG, 88, 0, $8
	anim_obj BATTLE_ANIM_OBJ_PERISH_SONG, 88, 0, $10
	anim_obj BATTLE_ANIM_OBJ_PERISH_SONG, 88, 0, $18
	anim_obj BATTLE_ANIM_OBJ_PERISH_SONG, 88, 0, $20
	anim_obj BATTLE_ANIM_OBJ_PERISH_SONG, 88, 0, $28
	anim_obj BATTLE_ANIM_OBJ_PERISH_SONG, 88, 0, $30
	anim_obj BATTLE_ANIM_OBJ_PERISH_SONG, 88, 0, $38
	anim_wait 112
	anim_ret

BattleAnim_IcyWind:
	anim_1gfx BATTLE_ANIM_GFX_SPEED
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_bgeffect BATTLE_BG_EFFECT_ALTERNATE_HUES, $0, $2, $0
	anim_battlergfx_1row
	anim_sound 0, 0, SFX_PSYCHIC
.loop
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_SHOOTING_SPARKLE, 64, 88, $4
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_SHOOTING_SPARKLE, 64, 80, $4
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_SHOOTING_SPARKLE, 64, 96, $4
	anim_wait 8
	anim_loop 2, .loop
	anim_wait 16
	anim_bgeffect BATTLE_BG_EFFECT_BATTLEROBJ_2ROW, $0, BG_EFFECT_USER, $0
	anim_wait 6
	anim_bgeffect BATTLE_BG_EFFECT_NIGHT_SHADE, $0, BG_EFFECT_TARGET, $8
	anim_wait 64
	anim_incbgeffect BATTLE_BG_EFFECT_NIGHT_SHADE
	anim_bgeffect BATTLE_BG_EFFECT_SHOW_MON, $0, BG_EFFECT_USER, $0
	anim_wait 4
	anim_incobj 7
	anim_wait 1
	anim_ret

BattleAnim_Detect:
	anim_1gfx BATTLE_ANIM_GFX_SHINE
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $0, $0
	anim_sound 0, 0, SFX_FORESIGHT
	anim_obj BATTLE_ANIM_OBJ_FORESIGHT, 64, 88, $0
	anim_wait 24
	anim_ret

BattleAnim_BoneRush:
	anim_2gfx BATTLE_ANIM_GFX_HIT, BATTLE_ANIM_GFX_MISC
	anim_sound 0, 1, SFX_BONE_CLUB
	anim_obj BATTLE_ANIM_OBJ_BONE_RUSH, 132, 56, $2
	anim_wait 16
	anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 120, 48, $0
	anim_wait 16
	anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 144, 64, $0
	anim_wait 16
	anim_ret

BattleAnim_LockOn:
	anim_1gfx BATTLE_ANIM_GFX_MISC
	anim_sound 0, 1, SFX_MIND_READER
.loop
	anim_obj BATTLE_ANIM_OBJ_LOCK_ON, 132, 48, $3
	anim_obj BATTLE_ANIM_OBJ_LOCK_ON, 132, 48, $12
	anim_obj BATTLE_ANIM_OBJ_LOCK_ON, 132, 48, $20
	anim_obj BATTLE_ANIM_OBJ_LOCK_ON, 132, 48, $31
	anim_wait 16
	anim_loop 2, .loop
	anim_wait 32
	anim_ret

BattleAnim_Outrage:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MON_LIGHT_DARK_REPEATING, $0, BG_EFFECT_USER, $20
	anim_sound 0, 0, SFX_OUTRAGE
	anim_wait 72
	anim_incbgeffect BATTLE_BG_EFFECT_CYCLE_MON_LIGHT_DARK_REPEATING
	anim_call BattleAnim_ShowMon_0
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $4, $3
	anim_sound 0, 1, SFX_MOVE_PUZZLE_PIECE
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 120, 72, $0
	anim_wait 6
	anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 136, 56, $0
	anim_wait 6
	anim_sound 0, 1, SFX_MEGA_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 152, 40, $0
	anim_wait 16
	anim_ret

BattleAnim_Sandstorm:
	anim_1gfx BATTLE_ANIM_GFX_POWDER
	anim_obj BATTLE_ANIM_OBJ_SANDSTORM, 88, 0, $0
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_SANDSTORM, 72, 0, $1
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_SANDSTORM, 56, 0, $2
.loop
	anim_sound 0, 1, SFX_MENU
	anim_wait 8
	anim_loop 16, .loop
	anim_wait 8
	anim_ret

BattleAnim_GigaDrain:
	anim_2gfx BATTLE_ANIM_GFX_BUBBLE, BATTLE_ANIM_GFX_CHARGE
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_FADE_MONS_TO_BLACK_REPEATING, $0, BG_EFFECT_TARGET, $10
	anim_sound 6, 3, SFX_GIGA_DRAIN
	anim_call BattleAnimSub_Drain
	anim_wait 48
	anim_wait 128
	anim_incbgeffect BATTLE_BG_EFFECT_FADE_MONS_TO_BLACK_REPEATING
	anim_call BattleAnim_ShowMon_0
	anim_wait 1
	anim_1gfx BATTLE_ANIM_GFX_SHINE
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $0, $0
.loop
	anim_sound 0, 0, SFX_METRONOME
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 24, 64, $0
	anim_wait 5
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 56, 104, $0
	anim_wait 5
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 24, 104, $0
	anim_wait 5
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 56, 64, $0
	anim_wait 5
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 40, 84, $0
	anim_wait 5
	anim_loop 2, .loop
	anim_wait 32
	anim_ret

BattleAnim_Endure:
	anim_1gfx BATTLE_ANIM_GFX_SPEED
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MON_LIGHT_DARK_REPEATING, $0, BG_EFFECT_USER, $20
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
.loop
	anim_sound 0, 0, SFX_SWORDS_DANCE
	anim_obj BATTLE_ANIM_OBJ_FOCUS, 44, 108, $6
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_FOCUS, 36, 108, $6
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_FOCUS, 52, 108, $8
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_FOCUS, 28, 108, $8
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_FOCUS, 60, 108, $6
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_FOCUS, 20, 108, $8
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_FOCUS, 68, 108, $8
	anim_wait 2
	anim_loop 5, .loop
	anim_wait 8
	anim_incbgeffect BATTLE_BG_EFFECT_CYCLE_MON_LIGHT_DARK_REPEATING
	anim_call BattleAnim_ShowMon_0
	anim_ret

BattleAnim_Charm:
	anim_1gfx BATTLE_ANIM_GFX_OBJECTS
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_WOBBLE_MON, $0, BG_EFFECT_USER, $0
	anim_sound 0, 0, SFX_ATTRACT
	anim_obj BATTLE_ANIM_OBJ_HEART, 64, 80, $0
	anim_wait 32
	anim_incbgeffect BATTLE_BG_EFFECT_WOBBLE_MON
	anim_call BattleAnim_ShowMon_0
	anim_wait 4
	anim_ret

BattleAnim_Rollout:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_sound 0, 0, SFX_SPARK
	anim_call BattleAnim_TargetObj_2Row
	anim_bgeffect BATTLE_BG_EFFECT_ROLLOUT, $60, $1, $1
	anim_bgeffect BATTLE_BG_EFFECT_BODY_SLAM, $0, BG_EFFECT_USER, $0
	anim_wait 4
	anim_sound 0, 1, SFX_MEGA_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG, 136, 40, $0
	anim_wait 8
	anim_call BattleAnim_ShowMon_0
	anim_ret

BattleAnim_FalseSwipe:
	anim_2gfx BATTLE_ANIM_GFX_SHINE, BATTLE_ANIM_GFX_CUT
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $0, $0
	anim_sound 0, 1, SFX_CUT
	anim_obj BATTLE_ANIM_OBJ_CUT_LONG_DOWN_LEFT, 152, 40, $0
	anim_wait 4
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 136, 40, $0
	anim_wait 32
	anim_ret

BattleAnim_Swagger:
	anim_2gfx BATTLE_ANIM_GFX_MISC, BATTLE_ANIM_GFX_WIND
.loop
	anim_sound 0, 0, SFX_MENU
	anim_obj BATTLE_ANIM_OBJ_SWAGGER, 72, 88, $44
	anim_wait 32
	anim_loop 2, .loop
	anim_wait 32
	anim_sound 0, 1, SFX_KINESIS_2
	anim_obj BATTLE_ANIM_OBJ_ANGER, 104, 40, $0
	anim_wait 40
	anim_ret

BattleAnim_MilkDrink:
	anim_2gfx BATTLE_ANIM_GFX_MISC, BATTLE_ANIM_GFX_BUBBLE
	anim_call BattleAnim_TargetObj_1Row
	anim_obj BATTLE_ANIM_OBJ_MILK_DRINK, 74, 104, $0
	anim_wait 16
	anim_bgeffect BATTLE_BG_EFFECT_FADE_MON_TO_LIGHT_REPEATING, $0, BG_EFFECT_USER, $40
	anim_sound 0, 0, SFX_MILK_DRINK
.loop
	anim_obj BATTLE_ANIM_OBJ_RECOVER, 44, 88, $20
	anim_wait 8
	anim_loop 8, .loop
	anim_wait 128
	anim_incbgeffect BATTLE_BG_EFFECT_FADE_MON_TO_LIGHT_REPEATING
	anim_call BattleAnim_ShowMon_0
	anim_ret

BattleAnim_Spark:
	anim_2gfx BATTLE_ANIM_GFX_LIGHTNING, BATTLE_ANIM_GFX_EXPLOSION
	anim_sound 0, 0, SFX_ZAP_CANNON
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $4, $3
	anim_obj BATTLE_ANIM_OBJ_THUNDER_WAVE, 48, 92, $0
	anim_wait 24
	anim_setobj $1, $3
	anim_wait 1
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_TACKLE, $0, BG_EFFECT_USER, $0
	anim_sound 0, 0, SFX_SPARK
	anim_wait 16
	anim_bgeffect BATTLE_BG_EFFECT_SHOW_MON, $0, BG_EFFECT_TARGET, $0
	anim_wait 4
	anim_incobj 2
	anim_wait 1
	anim_sound 0, 1, SFX_THUNDERSHOCK
	anim_obj BATTLE_ANIM_OBJ_THUNDERBOLT_BALL, 136, 56, $2
	anim_obj BATTLE_ANIM_OBJ_SPARKS_CIRCLE, 136, 56, $0
	anim_wait 32
	anim_ret

BattleAnim_FuryCutter:
	anim_1gfx BATTLE_ANIM_GFX_CUT
.loop
	anim_sound 0, 1, SFX_CUT
	anim_if_param_and %00000001, .obj1
	anim_obj BATTLE_ANIM_OBJ_CUT_LONG_DOWN_LEFT, 152, 40, $0
	anim_jump .okay

.obj1
	anim_obj BATTLE_ANIM_OBJ_CUT_LONG_DOWN_RIGHT, 112, 40, $0
.okay
	anim_wait 16
	anim_jumpuntil .loop
	anim_ret

BattleAnim_SteelWing:
	anim_1gfx BATTLE_ANIM_GFX_REFLECT
	anim_obp0 $0
	anim_sound 0, 0, SFX_RAGE
	anim_call BattleAnim_TargetObj_1Row
	anim_call BattleAnimSub_Metallic
	anim_call BattleAnim_ShowMon_0
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_resetobp0
	anim_sound 0, 1, SFX_WING_ATTACK
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 148, 56, $0
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 116, 56, $0
	anim_wait 6
	anim_sound 0, 1, SFX_WING_ATTACK
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 144, 56, $0
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 120, 56, $0
	anim_wait 6
	anim_sound 0, 1, SFX_WING_ATTACK
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 140, 56, $0
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 124, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_MeanLook:
	anim_1gfx BATTLE_ANIM_GFX_PSYCHIC
	anim_obp0 $e0
	anim_sound 0, 1, SFX_MEAN_LOOK
	anim_obj BATTLE_ANIM_OBJ_MEAN_LOOK, 148, 32, $0
	anim_wait 5
	anim_obj BATTLE_ANIM_OBJ_MEAN_LOOK, 116, 64, $0
	anim_wait 5
	anim_obj BATTLE_ANIM_OBJ_MEAN_LOOK, 148, 64, $0
	anim_wait 5
	anim_obj BATTLE_ANIM_OBJ_MEAN_LOOK, 116, 32, $0
	anim_wait 5
	anim_obj BATTLE_ANIM_OBJ_MEAN_LOOK, 132, 48, $0
	anim_wait 128
	anim_ret

BattleAnim_Attract:
	anim_1gfx BATTLE_ANIM_GFX_OBJECTS
.loop
	anim_sound 0, 0, SFX_ATTRACT
	anim_obj BATTLE_ANIM_OBJ_ATTRACT, 44, 80, $2
	anim_wait 8
	anim_loop 5, .loop
	anim_wait 128
	anim_wait 64
	anim_ret

BattleAnim_SleepTalk:
	anim_1gfx BATTLE_ANIM_GFX_STATUS
.loop
	anim_sound 0, 0, SFX_STRENGTH
	anim_obj BATTLE_ANIM_OBJ_ASLEEP, 64, 80, $0
	anim_wait 40
	anim_loop 2, .loop
	anim_wait 32
	anim_ret

BattleAnim_HealBell:
	anim_2gfx BATTLE_ANIM_GFX_MISC, BATTLE_ANIM_GFX_NOISE
	anim_obj BATTLE_ANIM_OBJ_HEAL_BELL, 72, 56, $0
	anim_wait 32
.loop
	anim_sound 0, 0, SFX_HEAL_BELL
	anim_obj BATTLE_ANIM_OBJ_HEAL_BELL_NOTE, 72, 52, $0
	anim_wait 8
	anim_sound 0, 0, SFX_HEAL_BELL
	anim_obj BATTLE_ANIM_OBJ_HEAL_BELL_NOTE, 72, 52, $1
	anim_wait 8
	anim_sound 0, 0, SFX_HEAL_BELL
	anim_obj BATTLE_ANIM_OBJ_HEAL_BELL_NOTE, 72, 52, $2
	anim_wait 8
	anim_sound 0, 0, SFX_HEAL_BELL
	anim_obj BATTLE_ANIM_OBJ_HEAL_BELL_NOTE, 72, 52, $0
	anim_wait 8
	anim_sound 0, 0, SFX_HEAL_BELL
	anim_obj BATTLE_ANIM_OBJ_HEAL_BELL_NOTE, 72, 52, $2
	anim_wait 8
	anim_loop 4, .loop
	anim_wait 64
	anim_ret

BattleAnim_Return:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_call BattleAnim_TargetObj_2Row
	anim_bgeffect BATTLE_BG_EFFECT_BOUNCE_DOWN, $0, BG_EFFECT_USER, $0
	anim_sound 0, 0, SFX_RETURN
	anim_wait 64
	anim_incbgeffect BATTLE_BG_EFFECT_BOUNCE_DOWN
	anim_wait 32
	anim_bgeffect BATTLE_BG_EFFECT_BODY_SLAM, $0, BG_EFFECT_USER, $0
	anim_wait 4
	anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG, 136, 40, $0
	anim_wait 8
	anim_call BattleAnim_ShowMon_0
	anim_ret

BattleAnim_Present:
	anim_2gfx BATTLE_ANIM_GFX_STATUS, BATTLE_ANIM_GFX_BUBBLE
	anim_sound 0, 1, SFX_PRESENT
	anim_obj BATTLE_ANIM_OBJ_PRESENT, 64, 88, $6c
	anim_wait 56
	anim_obj BATTLE_ANIM_OBJ_AMNESIA, 104, 48, $0
	anim_wait 48
	anim_incobj 2
	anim_if_param_equal $3, .heal
	anim_incobj 1
	anim_wait 1
	anim_1gfx BATTLE_ANIM_GFX_EXPLOSION
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $8, $12
.loop
	anim_call BattleAnimSub_Explosion2
	anim_wait 16
	anim_jumpuntil .loop
	anim_ret

.heal
	anim_sound 0, 1, SFX_METRONOME
.loop2
	anim_obj BATTLE_ANIM_OBJ_RECOVER, 132, 48, $24
	anim_wait 8
	anim_loop 8, .loop2
	anim_wait 128
	anim_ret

BattleAnim_Frustration:
	anim_1gfx BATTLE_ANIM_GFX_MISC
	anim_sound 0, 0, SFX_KINESIS_2
	anim_obj BATTLE_ANIM_OBJ_ANGER, 72, 80, $0
	anim_wait 40
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_WOBBLE_MON, $0, BG_EFFECT_USER, $0
	anim_wait 8
	anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 120, 48, $0
	anim_wait 8
	anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 152, 48, $0
	anim_wait 8
	anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 136, 48, $0
	anim_wait 8
	anim_incbgeffect BATTLE_BG_EFFECT_WOBBLE_MON
	anim_wait 1
	anim_call BattleAnim_ShowMon_0
	anim_ret

BattleAnim_Safeguard:
	anim_1gfx BATTLE_ANIM_GFX_MISC
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_obj BATTLE_ANIM_OBJ_SAFEGUARD, 80, 80, $0
	anim_obj BATTLE_ANIM_OBJ_SAFEGUARD, 80, 80, $d
	anim_obj BATTLE_ANIM_OBJ_SAFEGUARD, 80, 80, $1a
	anim_obj BATTLE_ANIM_OBJ_SAFEGUARD, 80, 80, $27
	anim_obj BATTLE_ANIM_OBJ_SAFEGUARD, 80, 80, $34
	anim_sound 0, 0, SFX_PROTECT
	anim_wait 96
	anim_ret

BattleAnim_PainSplit:
	anim_2gfx BATTLE_ANIM_GFX_HIT, BATTLE_ANIM_GFX_OBJECTS
	anim_call BattleAnim_TargetObj_2Row
	anim_bgeffect BATTLE_BG_EFFECT_BODY_SLAM, $0, BG_EFFECT_USER, $0
	anim_wait 4
	anim_sound 0, 1, SFX_TACKLE
	anim_obj BATTLE_ANIM_OBJ_HIT, 112, 48, $0
	anim_obj BATTLE_ANIM_OBJ_HIT, 76, 96, $0
	anim_wait 8
	anim_call BattleAnim_ShowMon_0
	anim_wait 1
	anim_ret

BattleAnim_SacredFire:
	anim_1gfx BATTLE_ANIM_GFX_FIRE
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_bgeffect BATTLE_BG_EFFECT_ALTERNATE_HUES, $0, $2, $0
.loop
	anim_sound 0, 0, SFX_EMBER
	anim_obj BATTLE_ANIM_OBJ_SACRED_FIRE, 48, 104, $0
	anim_wait 8
	anim_loop 8, .loop
	anim_wait 96
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_TACKLE, $0, BG_EFFECT_USER, $0
	anim_wait 4
	anim_sound 0, 1, SFX_EMBER
	anim_obj BATTLE_ANIM_OBJ_FIRE_BLAST, 136, 48, $1
	anim_obj BATTLE_ANIM_OBJ_FIRE_BLAST, 136, 48, $4
	anim_obj BATTLE_ANIM_OBJ_FIRE_BLAST, 136, 48, $5
	anim_wait 8
	anim_bgeffect BATTLE_BG_EFFECT_SHOW_MON, $0, BG_EFFECT_TARGET, $0
	anim_wait 4
	anim_incobj 9
	anim_wait 8
	anim_ret

BattleAnim_Magnitude:
	anim_1gfx BATTLE_ANIM_GFX_ROCKS
.loop
	anim_bgeffect BATTLE_BG_EFFECT_SHAKE_SCREEN_X, $e, $4, $0
	anim_sound 0, 1, SFX_STRENGTH
	anim_obj BATTLE_ANIM_OBJ_SMALL_ROCK, 128, 64, $40
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_SMALL_ROCK, 120, 68, $30
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_SMALL_ROCK, 152, 68, $30
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_SMALL_ROCK, 144, 64, $40
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_SMALL_ROCK, 136, 68, $30
	anim_wait 2
	anim_jumpuntil .loop
	anim_wait 96
	anim_ret

BattleAnim_Dynamicpunch:
	anim_2gfx BATTLE_ANIM_GFX_HIT, BATTLE_ANIM_GFX_EXPLOSION
	anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj BATTLE_ANIM_OBJ_PUNCH_SHAKE, 136, 56, $43
	anim_wait 16
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $8, $12
	anim_call BattleAnimSub_Explosion2
	anim_wait 16
	anim_ret

BattleAnim_Megahorn:
	anim_2gfx BATTLE_ANIM_GFX_HORN, BATTLE_ANIM_GFX_HIT
	anim_bgeffect BATTLE_BG_EFFECT_SHAKE_SCREEN_X, $40, $2, $0
	anim_wait 48
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $8, $3
	anim_obj BATTLE_ANIM_OBJ_HORN, 72, 80, $1
	anim_sound 0, 1, SFX_HORN_ATTACK
	anim_wait 16
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_Dragonbreath:
	anim_1gfx BATTLE_ANIM_GFX_FIRE
	anim_sound 6, 2, SFX_EMBER
.loop
	anim_obj BATTLE_ANIM_OBJ_DRAGONBREATH, 64, 92, $4
	anim_wait 4
	anim_loop 10, .loop
	anim_wait 64
	anim_ret

BattleAnim_BatonPass:
	anim_1gfx BATTLE_ANIM_GFX_MISC
	anim_obj BATTLE_ANIM_OBJ_BATON_PASS, 44, 104, $20
	anim_sound 0, 0, SFX_BATON_PASS
	anim_call BattleAnimSub_Return
	anim_wait 64
	anim_ret

BattleAnim_Encore:
	anim_1gfx BATTLE_ANIM_GFX_OBJECTS
	anim_obj BATTLE_ANIM_OBJ_ENCORE_HAND, 64, 80, $90
	anim_obj BATTLE_ANIM_OBJ_ENCORE_HAND, 64, 80, $10
	anim_sound 0, 0, SFX_ENCORE
	anim_wait 16
	anim_obj BATTLE_ANIM_OBJ_ENCORE_STAR, 64, 72, $2c
	anim_wait 32
	anim_obj BATTLE_ANIM_OBJ_ENCORE_STAR, 64, 72, $34
	anim_wait 16
	anim_ret

BattleAnim_Pursuit:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_if_param_equal $1, .pursued
	anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

.pursued:
	anim_bgeffect BATTLE_BG_EFFECT_HIDE_MON, $0, BG_EFFECT_TARGET, $0
	anim_wait 4
	anim_call BattleAnim_UserObj_1Row
	anim_obj BATTLE_ANIM_OBJ_BETA_PURSUIT, 132, 64, $0
	anim_wait 64
	anim_obj BATTLE_ANIM_OBJ_BETA_PURSUIT, 132, 64, $1
	anim_sound 0, 1, SFX_BALL_POOF
	anim_bgeffect BATTLE_BG_EFFECT_ENTER_MON, $0, BG_EFFECT_TARGET, $0
	anim_wait 64
	anim_incobj 3
	anim_wait 16
	anim_sound 0, 1, SFX_MEGA_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 120, 56, $0
	anim_bgeffect BATTLE_BG_EFFECT_BETA_PURSUIT, $0, BG_EFFECT_TARGET, $0
	anim_wait 16
	anim_call BattleAnim_ShowMon_1
	anim_wait 1
	anim_ret

BattleAnim_RapidSpin:
	anim_2gfx BATTLE_ANIM_GFX_WIND, BATTLE_ANIM_GFX_HIT
	anim_obp0 $e4
.loop
	anim_sound 0, 0, SFX_MENU
	anim_obj BATTLE_ANIM_OBJ_RAPID_SPIN, 44, 112, $0
	anim_wait 2
	anim_loop 5, .loop
	anim_wait 24
	anim_call BattleAnim_TargetObj_2Row
	anim_bgeffect BATTLE_BG_EFFECT_BODY_SLAM, $0, BG_EFFECT_USER, $0
	anim_wait 4
	anim_resetobp0
	anim_sound 0, 1, SFX_MEGA_KICK
	anim_obj BATTLE_ANIM_OBJ_HIT, 136, 40, $0
	anim_wait 8
	anim_bgeffect BATTLE_BG_EFFECT_SHOW_MON, $0, BG_EFFECT_TARGET, $0
	anim_wait 4
	anim_incobj 6
	anim_wait 1
	anim_ret

BattleAnim_SweetScent:
	anim_2gfx BATTLE_ANIM_GFX_FLOWER, BATTLE_ANIM_GFX_MISC
	anim_sound 0, 0, SFX_SWEET_SCENT
	anim_obj BATTLE_ANIM_OBJ_FLOWER, 64, 96, $2
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_FLOWER, 64, 80, $2
	anim_wait 96
	anim_obp0 $54
	anim_sound 0, 1, SFX_SWEET_SCENT_2
	anim_obj BATTLE_ANIM_OBJ_COTTON, 136, 40, $15
	anim_obj BATTLE_ANIM_OBJ_COTTON, 136, 40, $2a
	anim_obj BATTLE_ANIM_OBJ_COTTON, 136, 40, $3f
	anim_wait 128
	anim_ret

BattleAnim_IronTail:
	anim_1gfx BATTLE_ANIM_GFX_REFLECT
	anim_obp0 $0
	anim_sound 0, 0, SFX_RAGE
	anim_call BattleAnim_TargetObj_1Row
	anim_call BattleAnimSub_Metallic
	anim_wait 4
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_resetobp0
	anim_bgeffect BATTLE_BG_EFFECT_WOBBLE_MON, $0, BG_EFFECT_USER, $0
	anim_wait 16
	anim_sound 0, 1, SFX_MEGA_KICK
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 136, 48, $0
	anim_wait 16
	anim_incbgeffect BATTLE_BG_EFFECT_WOBBLE_MON
	anim_call BattleAnim_ShowMon_0
	anim_ret

BattleAnim_MetalClaw:
	anim_1gfx BATTLE_ANIM_GFX_REFLECT
	anim_obp0 $0
	anim_sound 0, 0, SFX_RAGE
	anim_call BattleAnim_TargetObj_1Row
	anim_call BattleAnimSub_Metallic
	anim_call BattleAnim_ShowMon_0
	anim_1gfx BATTLE_ANIM_GFX_CUT
	anim_resetobp0
	anim_sound 0, 1, SFX_SCRATCH
	anim_obj BATTLE_ANIM_OBJ_CUT_DOWN_LEFT, 144, 48, $0
	anim_obj BATTLE_ANIM_OBJ_CUT_DOWN_LEFT, 140, 44, $0
	anim_obj BATTLE_ANIM_OBJ_CUT_DOWN_LEFT, 136, 40, $0
	anim_wait 32
	anim_ret

BattleAnim_VitalThrow:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_VITAL_THROW, $0, BG_EFFECT_USER, $0
	anim_wait 16
	anim_sound 0, 0, SFX_MENU
	anim_obj BATTLE_ANIM_OBJ_HIT, 64, 96, $0
	anim_wait 8
	anim_sound 0, 0, SFX_MENU
	anim_obj BATTLE_ANIM_OBJ_HIT, 56, 88, $0
	anim_wait 8
	anim_sound 0, 0, SFX_MENU
	anim_obj BATTLE_ANIM_OBJ_HIT, 68, 104, $0
	anim_wait 8
	anim_incbgeffect BATTLE_BG_EFFECT_VITAL_THROW
	anim_wait 16
	anim_call BattleAnim_ShowMon_0
	anim_sound 0, 1, SFX_MEGA_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG, 132, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_MorningSun:
	anim_1gfx BATTLE_ANIM_GFX_SHINE
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $0, $0
	anim_sound 0, 0, SFX_MORNING_SUN
.loop
	anim_obj BATTLE_ANIM_OBJ_MORNING_SUN, 16, 48, $88
	anim_wait 6
	anim_loop 5, .loop
	anim_wait 32
	anim_if_param_equal 0, .zero
	anim_call BattleAnimSub_Glimmer
	anim_ret

.zero
	anim_call BattleAnimSub_Glimmer2
	anim_ret

BattleAnim_Synthesis:
	anim_1gfx BATTLE_ANIM_GFX_SHINE
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_FADE_MON_TO_LIGHT_REPEATING, $0, BG_EFFECT_USER, $40
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $0, $0
	anim_sound 0, 0, SFX_OUTRAGE
	anim_wait 72
	anim_incbgeffect BATTLE_BG_EFFECT_FADE_MON_TO_LIGHT_REPEATING
	anim_call BattleAnim_ShowMon_0
	anim_if_param_equal $1, .one
	anim_call BattleAnimSub_Glimmer
	anim_ret

.one
	anim_call BattleAnimSub_Glimmer2
	anim_ret

BattleAnim_Crunch:
	anim_2gfx BATTLE_ANIM_GFX_CUT, BATTLE_ANIM_GFX_HIT
	anim_bgp $1b
	anim_obp0 $c0
	anim_bgeffect BATTLE_BG_EFFECT_SHAKE_SCREEN_X, $20, $2, $0
	anim_obj BATTLE_ANIM_OBJ_BITE, 136, 56, $a8
	anim_obj BATTLE_ANIM_OBJ_BITE, 136, 56, $28
	anim_wait 8
	anim_sound 0, 1, SFX_BITE
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 144, 48, $18
	anim_wait 16
	anim_sound 0, 1, SFX_BITE
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 128, 64, $18
	anim_wait 8
	anim_ret

BattleAnim_Moonlight:
	anim_1gfx BATTLE_ANIM_GFX_SHINE
	anim_bgp $1b
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $0, $0
	anim_obj BATTLE_ANIM_OBJ_MOONLIGHT, 0, 40, $0
	anim_obj BATTLE_ANIM_OBJ_MOONLIGHT, 16, 56, $0
	anim_obj BATTLE_ANIM_OBJ_MOONLIGHT, 32, 72, $0
	anim_obj BATTLE_ANIM_OBJ_MOONLIGHT, 48, 88, $0
	anim_obj BATTLE_ANIM_OBJ_MOONLIGHT, 64, 104, $0
	anim_wait 1
	anim_sound 0, 0, SFX_MOONLIGHT
	anim_wait 63
	anim_if_param_equal $3, .three
	anim_call BattleAnimSub_Glimmer
	anim_ret

.three
	anim_call BattleAnimSub_Glimmer2
	anim_ret

BattleAnim_HiddenPower:
	anim_1gfx BATTLE_ANIM_GFX_CHARGE
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MON_LIGHT_DARK_REPEATING, $0, BG_EFFECT_USER, $20
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_obj BATTLE_ANIM_OBJ_HIDDEN_POWER, 44, 88, $0
	anim_obj BATTLE_ANIM_OBJ_HIDDEN_POWER, 44, 88, $8
	anim_obj BATTLE_ANIM_OBJ_HIDDEN_POWER, 44, 88, $10
	anim_obj BATTLE_ANIM_OBJ_HIDDEN_POWER, 44, 88, $18
	anim_obj BATTLE_ANIM_OBJ_HIDDEN_POWER, 44, 88, $20
	anim_obj BATTLE_ANIM_OBJ_HIDDEN_POWER, 44, 88, $28
	anim_obj BATTLE_ANIM_OBJ_HIDDEN_POWER, 44, 88, $30
	anim_obj BATTLE_ANIM_OBJ_HIDDEN_POWER, 44, 88, $38
.loop
	anim_sound 0, 0, SFX_SWORDS_DANCE
	anim_wait 8
	anim_loop 12, .loop
	anim_incbgeffect BATTLE_BG_EFFECT_CYCLE_MON_LIGHT_DARK_REPEATING
	anim_call BattleAnim_ShowMon_0
	anim_wait 1
	anim_incobj 2
	anim_incobj 3
	anim_incobj 4
	anim_incobj 5
	anim_incobj 6
	anim_incobj 7
	anim_incobj 8
	anim_incobj 9
	anim_wait 16
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 136, 56, $0
	anim_wait 32
	anim_ret

BattleAnim_CrossChop:
	anim_1gfx BATTLE_ANIM_GFX_CUT
	anim_sound 0, 1, SFX_CUT
	anim_obj BATTLE_ANIM_OBJ_CROSS_CHOP1, 152, 40, $0
	anim_obj BATTLE_ANIM_OBJ_CROSS_CHOP2, 120, 72, $0
	anim_wait 8
	anim_bgeffect BATTLE_BG_EFFECT_SHAKE_SCREEN_X, $58, $2, $0
	anim_wait 92
	anim_sound 0, 1, SFX_VICEGRIP
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $8, $10
	anim_wait 16
	anim_ret

BattleAnim_Twister:
	anim_2gfx BATTLE_ANIM_GFX_WIND, BATTLE_ANIM_GFX_HIT
.loop1
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_obj BATTLE_ANIM_OBJ_GUST, 64, 112, $0
	anim_wait 6
	anim_loop 9, .loop1
.loop2
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_wait 8
	anim_loop 8, .loop2
	anim_incobj 1
	anim_incobj 2
	anim_incobj 3
	anim_incobj 4
	anim_incobj 5
	anim_incobj 6
	anim_incobj 7
	anim_incobj 8
	anim_incobj 9
	anim_wait 64
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 144, 64, $18
.loop3
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_wait 8
	anim_loop 4, .loop3
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 128, 32, $18
.loop4
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_wait 8
	anim_loop 4, .loop4
	anim_incobj 1
	anim_incobj 2
	anim_incobj 3
	anim_incobj 4
	anim_incobj 5
	anim_incobj 6
	anim_incobj 7
	anim_incobj 8
	anim_incobj 9
	anim_wait 32
	anim_ret

BattleAnim_RainDance:
	anim_1gfx BATTLE_ANIM_GFX_WATER
	anim_bgp $f8
	anim_obp0 $7c
	anim_sound 0, 1, SFX_RAIN_DANCE
	anim_obj BATTLE_ANIM_OBJ_RAIN, 88, 0, $0
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_RAIN, 88, 0, $1
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 128
	anim_ret

BattleAnim_SunnyDay:
	anim_1gfx BATTLE_ANIM_GFX_WATER
	anim_bgp $90
	anim_sound 0, 1, SFX_MORNING_SUN
	anim_obj BATTLE_ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 128
	anim_ret

BattleAnim_MirrorCoat:
	anim_2gfx BATTLE_ANIM_GFX_REFLECT, BATTLE_ANIM_GFX_SPEED
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
.loop
	anim_sound 0, 0, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_SCREEN, 72, 80, $0
	anim_obj BATTLE_ANIM_OBJ_SHOOTING_SPARKLE, 64, 72, $4
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_SHOOTING_SPARKLE, 64, 88, $4
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_SHOOTING_SPARKLE, 64, 80, $4
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_SHOOTING_SPARKLE, 64, 96, $4
	anim_wait 8
	anim_loop 3, .loop
	anim_wait 32
	anim_ret

BattleAnim_PsychUp:
	anim_1gfx BATTLE_ANIM_GFX_STATUS
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MON_LIGHT_DARK_REPEATING, $0, BG_EFFECT_USER, $20
	anim_sound 0, 0, SFX_PSYBEAM
	anim_obj BATTLE_ANIM_OBJ_PSYCH_UP, 44, 88, $0
	anim_obj BATTLE_ANIM_OBJ_PSYCH_UP, 44, 88, $10
	anim_obj BATTLE_ANIM_OBJ_PSYCH_UP, 44, 88, $20
	anim_obj BATTLE_ANIM_OBJ_PSYCH_UP, 44, 88, $30
	anim_wait 64
	anim_incbgeffect BATTLE_BG_EFFECT_CYCLE_MON_LIGHT_DARK_REPEATING
	anim_call BattleAnim_ShowMon_0
	anim_wait 16
	anim_ret

BattleAnim_Extremespeed:
	anim_2gfx BATTLE_ANIM_GFX_SPEED, BATTLE_ANIM_GFX_CUT
	anim_bgeffect BATTLE_BG_EFFECT_HIDE_MON, $0, BG_EFFECT_USER, $0
	anim_sound 0, 0, SFX_MENU
	anim_obj BATTLE_ANIM_OBJ_SPEED_LINE, 24, 88, $2
	anim_obj BATTLE_ANIM_OBJ_SPEED_LINE, 32, 88, $1
	anim_obj BATTLE_ANIM_OBJ_SPEED_LINE, 40, 88, $0
	anim_obj BATTLE_ANIM_OBJ_SPEED_LINE, 48, 88, $80
	anim_obj BATTLE_ANIM_OBJ_SPEED_LINE, 56, 88, $81
	anim_obj BATTLE_ANIM_OBJ_SPEED_LINE, 64, 88, $82
	anim_wait 12
	anim_sound 0, 1, SFX_CUT
	anim_obj BATTLE_ANIM_OBJ_CUT_LONG_DOWN_LEFT, 152, 40, $0
	anim_wait 32
	anim_bgeffect BATTLE_BG_EFFECT_SHOW_MON, $0, BG_EFFECT_USER, $0
	anim_wait 16
	anim_ret

BattleAnim_Ancientpower:
	anim_2gfx BATTLE_ANIM_GFX_ROCKS, BATTLE_ANIM_GFX_HIT
	anim_sound 0, 0, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_ANCIENTPOWER, 64, 108, $20
	anim_wait 8
	anim_sound 0, 0, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_ANCIENTPOWER, 75, 102, $20
	anim_wait 8
	anim_sound 0, 0, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_ANCIENTPOWER, 85, 97, $20
	anim_wait 8
	anim_sound 0, 0, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_ANCIENTPOWER, 96, 92, $20
	anim_wait 8
	anim_sound 0, 1, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_ANCIENTPOWER, 106, 87, $20
	anim_wait 8
	anim_sound 0, 1, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_ANCIENTPOWER, 116, 82, $20
	anim_wait 8
	anim_sound 0, 1, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_ANCIENTPOWER, 126, 77, $20
	anim_wait 8
	anim_sound 0, 1, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 136, 56, $0
	anim_wait 6
	anim_ret

BattleAnim_ShadowBall:
	anim_2gfx BATTLE_ANIM_GFX_EGG, BATTLE_ANIM_GFX_SMOKE
	anim_bgp $1b
	anim_sound 6, 2, SFX_SLUDGE_BOMB
	anim_obj BATTLE_ANIM_OBJ_SHADOW_BALL, 64, 92, $2
	anim_wait 32
	anim_obj BATTLE_ANIM_OBJ_BALL_POOF, 132, 56, $10
	anim_wait 24
	anim_ret

BattleAnim_FutureSight:
	anim_1gfx BATTLE_ANIM_GFX_WIND
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_bgeffect BATTLE_BG_EFFECT_ALTERNATE_HUES, $0, $2, $0
	anim_bgeffect BATTLE_BG_EFFECT_PSYCHIC, $0, $0, $0
	anim_obj BATTLE_ANIM_OBJ_AGILITY, 8, 24, $10
	anim_obj BATTLE_ANIM_OBJ_AGILITY, 8, 48, $2
	anim_obj BATTLE_ANIM_OBJ_AGILITY, 8, 88, $8
	anim_wait 4
	anim_obj BATTLE_ANIM_OBJ_AGILITY, 8, 32, $6
	anim_obj BATTLE_ANIM_OBJ_AGILITY, 8, 56, $c
	anim_obj BATTLE_ANIM_OBJ_AGILITY, 8, 80, $4
	anim_obj BATTLE_ANIM_OBJ_AGILITY, 8, 104, $e
.loop
	anim_sound 0, 0, SFX_THROW_BALL
	anim_wait 16
	anim_loop 4, .loop
	anim_incbgeffect BATTLE_BG_EFFECT_PSYCHIC
	anim_ret

BattleAnim_RockSmash:
	anim_2gfx BATTLE_ANIM_GFX_ROCKS, BATTLE_ANIM_GFX_HIT
	anim_sound 0, 1, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 128, 56, $0
	anim_sound 0, 1, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 64, $28
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 64, $5c
	anim_sound 0, 1, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 64, $10
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 64, $e8
	anim_sound 0, 1, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 64, $9c
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 64, $d0
	anim_wait 6
	anim_sound 0, 1, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 64, $1c
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 64, $50
	anim_sound 0, 1, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 64, $dc
	anim_obj BATTLE_ANIM_OBJ_ROCK_SMASH, 128, 64, $90
	anim_wait 32
	anim_ret

BattleAnim_Whirlpool:
	anim_1gfx BATTLE_ANIM_GFX_WIND
	anim_bgeffect BATTLE_BG_EFFECT_WHIRLPOOL, $0, $0, $0
	anim_sound 0, 1, SFX_SURF
	anim_wait 16
.loop
	anim_obj BATTLE_ANIM_OBJ_GUST, 132, 72, $0
	anim_wait 6
	anim_loop 9, .loop
	anim_wait 64
	anim_incbgeffect BATTLE_BG_EFFECT_WHIRLPOOL
	anim_wait 1
	anim_ret

BattleAnim_BeatUp:
	anim_if_param_equal $0, .current_mon
	anim_sound 0, 0, SFX_BALL_POOF
	anim_bgeffect BATTLE_BG_EFFECT_RETURN_MON, $0, BG_EFFECT_USER, $0
	anim_wait 16
	anim_beatup
	anim_sound 0, 0, SFX_BALL_POOF
	anim_bgeffect BATTLE_BG_EFFECT_ENTER_MON, $0, BG_EFFECT_USER, $0
	anim_wait 16
.current_mon
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_TACKLE, $0, BG_EFFECT_USER, $0
	anim_wait 4
	anim_sound 0, 1, SFX_BEAT_UP
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 136, 48, $0
	anim_wait 8
	anim_call BattleAnim_ShowMon_0
	anim_ret

BattleAnimSub_Drain:
	anim_obj BATTLE_ANIM_OBJ_DRAIN, 132, 44, $0
	anim_obj BATTLE_ANIM_OBJ_DRAIN, 132, 44, $8
	anim_obj BATTLE_ANIM_OBJ_DRAIN, 132, 44, $10
	anim_obj BATTLE_ANIM_OBJ_DRAIN, 132, 44, $18
	anim_obj BATTLE_ANIM_OBJ_DRAIN, 132, 44, $20
	anim_obj BATTLE_ANIM_OBJ_DRAIN, 132, 44, $28
	anim_obj BATTLE_ANIM_OBJ_DRAIN, 132, 44, $30
	anim_obj BATTLE_ANIM_OBJ_DRAIN, 132, 44, $38
	anim_ret

BattleAnimSub_EyeBeams:
	anim_sound 6, 2, SFX_LEER
	anim_obj BATTLE_ANIM_OBJ_LEER, 72, 84, $0
	anim_obj BATTLE_ANIM_OBJ_LEER, 64, 80, $0
	anim_obj BATTLE_ANIM_OBJ_LEER, 88, 76, $0
	anim_obj BATTLE_ANIM_OBJ_LEER, 80, 72, $0
	anim_obj BATTLE_ANIM_OBJ_LEER, 104, 68, $0
	anim_obj BATTLE_ANIM_OBJ_LEER, 96, 64, $0
	anim_obj BATTLE_ANIM_OBJ_LEER, 120, 60, $0
	anim_obj BATTLE_ANIM_OBJ_LEER, 112, 56, $0
	anim_obj BATTLE_ANIM_OBJ_LEER_TIP, 130, 54, $0
	anim_obj BATTLE_ANIM_OBJ_LEER_TIP, 122, 50, $0
	anim_ret

BattleAnimSub_WarpAway:
	anim_sound 0, 0, SFX_WARP_TO
	anim_obj BATTLE_ANIM_OBJ_WARP, 44, 108, $0
	anim_obj BATTLE_ANIM_OBJ_WARP, 44, 100, $0
	anim_obj BATTLE_ANIM_OBJ_WARP, 44, 92, $0
	anim_obj BATTLE_ANIM_OBJ_WARP, 44, 84, $0
	anim_obj BATTLE_ANIM_OBJ_WARP, 44, 76, $0
	anim_obj BATTLE_ANIM_OBJ_WARP, 44, 68, $0
	anim_obj BATTLE_ANIM_OBJ_WARP, 44, 60, $0
	anim_ret

BattleAnimSub_Beam:
	anim_sound 0, 0, SFX_HYPER_BEAM
	anim_obj BATTLE_ANIM_OBJ_BEAM, 64, 92, $0
	anim_wait 4
	anim_sound 0, 0, SFX_HYPER_BEAM
	anim_obj BATTLE_ANIM_OBJ_BEAM, 80, 84, $0
	anim_wait 4
	anim_sound 0, 1, SFX_HYPER_BEAM
	anim_obj BATTLE_ANIM_OBJ_BEAM, 96, 76, $0
	anim_wait 4
	anim_sound 0, 1, SFX_HYPER_BEAM
	anim_obj BATTLE_ANIM_OBJ_BEAM, 112, 68, $0
	anim_obj BATTLE_ANIM_OBJ_BEAM_TIP, 126, 62, $0
	anim_ret

BattleAnimSub_Explosion1:
	anim_sound 0, 0, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_EXPLOSION1, 24, 64, $0
	anim_wait 5
	anim_sound 0, 0, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_EXPLOSION1, 56, 104, $0
	anim_wait 5
	anim_sound 0, 0, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_EXPLOSION1, 24, 104, $0
	anim_wait 5
	anim_sound 0, 0, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_EXPLOSION1, 56, 64, $0
	anim_wait 5
	anim_sound 0, 0, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_EXPLOSION1, 40, 84, $0
	anim_ret

BattleAnimSub_Explosion2:
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_EXPLOSION1, 148, 32, $0
	anim_wait 5
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_EXPLOSION1, 116, 72, $0
	anim_wait 5
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_EXPLOSION1, 148, 72, $0
	anim_wait 5
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_EXPLOSION1, 116, 32, $0
	anim_wait 5
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_EXPLOSION1, 132, 52, $0
	anim_ret

BattleAnimSub_Sound:
	anim_obj BATTLE_ANIM_OBJ_SOUND, 64, 76, $0
	anim_obj BATTLE_ANIM_OBJ_SOUND, 64, 88, $1
	anim_obj BATTLE_ANIM_OBJ_SOUND, 64, 100, $2
	anim_ret

BattleAnimSub_Fire:
	anim_sound 0, 1, SFX_EMBER
.loop
	anim_obj BATTLE_ANIM_OBJ_BURNED, 136, 56, $10
	anim_obj BATTLE_ANIM_OBJ_BURNED, 136, 56, $90
	anim_wait 4
	anim_loop 4, .loop
	anim_ret

BattleAnimSub_Ice:
	anim_sound 0, 1, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_ICE, 128, 42, $0
	anim_wait 6
	anim_sound 0, 1, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_ICE, 144, 70, $0
	anim_wait 6
	anim_sound 0, 1, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_ICE, 120, 56, $0
	anim_wait 6
	anim_sound 0, 1, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_ICE, 152, 56, $0
	anim_wait 6
	anim_sound 0, 1, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_ICE, 144, 42, $0
	anim_wait 6
	anim_sound 0, 1, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_ICE, 128, 70, $0
	anim_ret

BattleAnimSub_Sludge:
.loop
	anim_sound 0, 1, SFX_TOXIC
	anim_obj BATTLE_ANIM_OBJ_SLUDGE, 132, 72, $0
	anim_wait 8
	anim_sound 0, 1, SFX_TOXIC
	anim_obj BATTLE_ANIM_OBJ_SLUDGE, 116, 72, $0
	anim_wait 8
	anim_sound 0, 1, SFX_TOXIC
	anim_obj BATTLE_ANIM_OBJ_SLUDGE, 148, 72, $0
	anim_wait 8
	anim_loop 5, .loop
	anim_ret

BattleAnimSub_Acid:
.loop
	anim_sound 6, 2, SFX_BUBBLEBEAM
	anim_obj BATTLE_ANIM_OBJ_ACID, 64, 92, $10
	anim_wait 5
	anim_loop 8, .loop
	anim_ret

BattleAnimSub_Metallic:
	anim_sound 0, 0, SFX_SHINE
	anim_bgeffect BATTLE_BG_EFFECT_FADE_MON_TO_BLACK, $0, BG_EFFECT_USER, $40
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_HARDEN, 48, 84, $0
	anim_wait 32
	anim_obj BATTLE_ANIM_OBJ_HARDEN, 48, 84, $0
	anim_wait 64
	anim_incbgeffect BATTLE_BG_EFFECT_FADE_MON_TO_BLACK
	anim_ret

BattleAnimSub_SandOrMud:
.loop
	anim_sound 6, 2, SFX_MENU
	anim_obj BATTLE_ANIM_OBJ_SAND, 64, 92, $4
	anim_wait 4
	anim_loop 8, .loop
	anim_wait 32
	anim_ret

BattleAnimSub_Glimmer:
	anim_sound 0, 0, SFX_METRONOME
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 44, 64, $0
	anim_wait 5
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 24, 96, $0
	anim_wait 5
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 56, 104, $0
	anim_wait 21
	anim_ret

BattleAnimSub_Glimmer2:
	anim_sound 0, 0, SFX_METRONOME
.loop
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 24, 64, $0
	anim_wait 5
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 56, 104, $0
	anim_wait 5
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 24, 104, $0
	anim_wait 5
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 56, 64, $0
	anim_wait 5
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 40, 84, $0
	anim_wait 5
	anim_loop 2, .loop
	anim_wait 16
	anim_ret
