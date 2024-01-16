BattleAnimationsNegatives::
	dw BattleAnim_ThrowPokeBall
	dw BattleAnim_SendOutMon
	dw BattleAnim_ReturnMon
	dw BattleAnim_Confused
	dw BattleAnim_Slp
	dw BattleAnim_Brn
	dw BattleAnim_Psn
	dw BattleAnim_Sap
	dw BattleAnim_Frz
	dw BattleAnim_Par
	dw BattleAnim_InLove
	dw BattleAnim_InSandstorm
	dw BattleAnim_InNightmare
	dw BattleAnim_InWhirlpool
	dw BattleAnim_Miss
	dw BattleAnim_EnemyDamage
	dw BattleAnim_EnemyStatDown
	dw BattleAnim_PlayerStatDown
	dw BattleAnim_PlayerDamage
	dw BattleAnim_Wobble
	dw BattleAnim_Shake
	dw BattleAnim_HitConfusion
.IndirectEnd::

BattleAnim_ThrowPokeBall:
	anim_if_param_item_equal NO_ITEM, .TheTrainerBlockedTheBall
	anim_if_param_item_equal MASTER_BALL, .MasterBall
	anim_if_param_item_equal ULTRA_BALL, .UltraBall
	anim_if_param_item_equal GREAT_BALL, .GreatBall
	; any other ball
	anim_2gfx BATTLE_ANIM_GFX_POKE_BALL, BATTLE_ANIM_GFX_SMOKE
	anim_sound 6, 2, SFX_THROW_BALL
	anim_obj BATTLE_ANIM_OBJ_POKE_BALL, 68, 92, $40
	anim_wait 36
	anim_obj BATTLE_ANIM_OBJ_POKE_BALL, 136, 65, $0
	anim_setobj $2, $7
	anim_wait 16
	anim_sound 0, 1, SFX_BALL_POOF
	anim_obj BATTLE_ANIM_OBJ_BALL_POOF, 136, 64, $10
	anim_wait 16
	anim_jump .Shake

.TheTrainerBlockedTheBall:
	anim_2gfx BATTLE_ANIM_GFX_POKE_BALL, BATTLE_ANIM_GFX_HIT
	anim_sound 6, 2, SFX_THROW_BALL
	anim_obj BATTLE_ANIM_OBJ_POKE_BALL_BLOCKED, 64, 92, $20
	anim_wait 20
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 112, 40, $0
	anim_wait 32
	anim_ret

.UltraBall:
	anim_2gfx BATTLE_ANIM_GFX_POKE_BALL, BATTLE_ANIM_GFX_SMOKE
	anim_sound 6, 2, SFX_THROW_BALL
	anim_obj BATTLE_ANIM_OBJ_POKE_BALL, 68, 92, $40
	anim_wait 36
	anim_obj BATTLE_ANIM_OBJ_POKE_BALL, 136, 65, $0
	anim_setobj $2, $7
	anim_wait 16
	anim_sound 0, 1, SFX_BALL_POOF
	anim_obj BATTLE_ANIM_OBJ_BALL_POOF, 136, 64, $10
	anim_wait 16
	anim_jump .Shake

.GreatBall:
	anim_2gfx BATTLE_ANIM_GFX_POKE_BALL, BATTLE_ANIM_GFX_SMOKE
	anim_sound 6, 2, SFX_THROW_BALL
	anim_obj BATTLE_ANIM_OBJ_POKE_BALL, 68, 92, $40
	anim_wait 36
	anim_obj BATTLE_ANIM_OBJ_POKE_BALL, 136, 65, $0
	anim_setobj $2, $7
	anim_wait 16
	anim_sound 0, 1, SFX_BALL_POOF
	anim_obj BATTLE_ANIM_OBJ_BALL_POOF, 136, 64, $10
	anim_wait 16
	anim_jump .Shake

.MasterBall:
	anim_3gfx BATTLE_ANIM_GFX_POKE_BALL, BATTLE_ANIM_GFX_SMOKE, BATTLE_ANIM_GFX_SPEED
	anim_sound 6, 2, SFX_THROW_BALL
	anim_obj BATTLE_ANIM_OBJ_POKE_BALL, 64, 92, $20
	anim_wait 36
	anim_obj BATTLE_ANIM_OBJ_POKE_BALL, 136, 65, $0
	anim_setobj $2, $7
	anim_wait 16
	anim_sound 0, 1, SFX_BALL_POOF
	anim_obj BATTLE_ANIM_OBJ_BALL_POOF, 136, 64, $10
	anim_wait 24
	anim_sound 0, 1, SFX_MASTER_BALL
	anim_obj BATTLE_ANIM_OBJ_MASTER_BALL_SPARKLE, 136, 56, $30
	anim_obj BATTLE_ANIM_OBJ_MASTER_BALL_SPARKLE, 136, 56, $31
	anim_obj BATTLE_ANIM_OBJ_MASTER_BALL_SPARKLE, 136, 56, $32
	anim_obj BATTLE_ANIM_OBJ_MASTER_BALL_SPARKLE, 136, 56, $33
	anim_obj BATTLE_ANIM_OBJ_MASTER_BALL_SPARKLE, 136, 56, $34
	anim_obj BATTLE_ANIM_OBJ_MASTER_BALL_SPARKLE, 136, 56, $35
	anim_obj BATTLE_ANIM_OBJ_MASTER_BALL_SPARKLE, 136, 56, $36
	anim_obj BATTLE_ANIM_OBJ_MASTER_BALL_SPARKLE, 136, 56, $37
	anim_wait 64
.Shake:
	anim_bgeffect BATTLE_BG_EFFECT_RETURN_MON, $0, BG_EFFECT_TARGET, $0
	anim_wait 8
	anim_incobj 2
	anim_wait 16
	anim_sound 0, 1, SFX_CHANGE_DEX_MODE
	anim_incobj 1
	anim_wait 32
	anim_sound 0, 1, SFX_BALL_BOUNCE
	anim_wait 32
	anim_wait 32
	anim_wait 32
	anim_wait 8
	anim_setvar $0
.Loop:
	anim_wait 48
	anim_checkpokeball
	anim_if_var_equal $1, .Click
	anim_if_var_equal $2, .BreakFree
	anim_incobj 1
	anim_sound 0, 1, SFX_BALL_WOBBLE
	anim_jump .Loop

.Click:
	anim_keepspritesandoam
	anim_ret

.BreakFree:
	anim_setobj $1, $b
	anim_sound 0, 1, SFX_BALL_POOF
	anim_obj BATTLE_ANIM_OBJ_BALL_POOF, 136, 64, $10
	anim_wait 2
	anim_bgeffect BATTLE_BG_EFFECT_ENTER_MON, $0, BG_EFFECT_TARGET, $0
	anim_wait 32
	anim_ret

BattleAnim_SendOutMon:
	anim_if_param_equal $0, .Normal
	anim_if_param_equal $1, .Shiny
	anim_if_param_equal $2, .Unknown
	anim_1gfx BATTLE_ANIM_GFX_SMOKE
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_BETA_SEND_OUT_MON2, $0, BG_EFFECT_USER, $0
	anim_sound 0, 0, SFX_BALL_POOF
	anim_obj BATTLE_ANIM_OBJ_BETA_BALL_POOF, 48, 96, $0
	anim_bgeffect BATTLE_BG_EFFECT_ENTER_MON, $0, BG_EFFECT_USER, $0
	anim_wait 128
	anim_wait 4
	anim_call BattleAnim_ShowMon_0
	anim_ret

.Unknown:
	anim_1gfx BATTLE_ANIM_GFX_SMOKE
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_BETA_SEND_OUT_MON1, $0, BG_EFFECT_USER, $0
	anim_wait 1
	anim_bgeffect BATTLE_BG_EFFECT_SHOW_MON, $0, BG_EFFECT_USER, $0
	anim_wait 4
	anim_sound 0, 0, SFX_BALL_POOF
	anim_obj BATTLE_ANIM_OBJ_BETA_BALL_POOF, 48, 96, $0
	anim_incbgeffect BATTLE_BG_EFFECT_BETA_SEND_OUT_MON1
	anim_wait 96
	anim_incbgeffect BATTLE_BG_EFFECT_BETA_SEND_OUT_MON1
	anim_call BattleAnim_ShowMon_0
	anim_ret

.Shiny:
	anim_1gfx BATTLE_ANIM_GFX_SPEED
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $4, $3
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_sound 0, 0, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_SHINY, 48, 96, $0
	anim_wait 4
	anim_sound 0, 0, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_SHINY, 48, 96, $8
	anim_wait 4
	anim_sound 0, 0, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_SHINY, 48, 96, $10
	anim_wait 4
	anim_sound 0, 0, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_SHINY, 48, 96, $18
	anim_wait 4
	anim_sound 0, 0, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_SHINY, 48, 96, $20
	anim_wait 4
	anim_sound 0, 0, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_SHINY, 48, 96, $28
	anim_wait 4
	anim_sound 0, 0, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_SHINY, 48, 96, $30
	anim_wait 4
	anim_sound 0, 0, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_SHINY, 48, 96, $38
	anim_wait 32
	anim_ret

.Normal:
	anim_1gfx BATTLE_ANIM_GFX_SMOKE
	anim_sound 0, 0, SFX_BALL_POOF
	anim_obj BATTLE_ANIM_OBJ_BALL_POOF, 44, 96, $0
	anim_wait 4
	anim_bgeffect BATTLE_BG_EFFECT_ENTER_MON, $0, BG_EFFECT_USER, $0
	anim_wait 32
	anim_ret

BattleAnim_ReturnMon:
	anim_sound 0, 0, SFX_BALL_POOF
BattleAnimSub_Return:
	anim_bgeffect BATTLE_BG_EFFECT_RETURN_MON, $0, BG_EFFECT_USER, $0
	anim_wait 32
	anim_ret

BattleAnim_Confused:
	anim_1gfx BATTLE_ANIM_GFX_STATUS
	anim_sound 0, 0, SFX_KINESIS
	anim_obj BATTLE_ANIM_OBJ_CHICK, 44, 56, $15
	anim_obj BATTLE_ANIM_OBJ_CHICK, 44, 56, $aa
	anim_obj BATTLE_ANIM_OBJ_CHICK, 44, 56, $bf
	anim_wait 96
	anim_ret

BattleAnim_Slp:
	anim_1gfx BATTLE_ANIM_GFX_STATUS
	anim_sound 0, 0, SFX_TAIL_WHIP
.loop
	anim_obj BATTLE_ANIM_OBJ_ASLEEP, 64, 80, $0
	anim_wait 40
	anim_loop 3, .loop
	anim_wait 32
	anim_ret

BattleAnim_Brn:
	anim_1gfx BATTLE_ANIM_GFX_FIRE
.loop
	anim_sound 0, 0, SFX_BURN
	anim_obj BATTLE_ANIM_OBJ_BURNED, 56, 88, $10
	anim_wait 4
	anim_loop 3, .loop
	anim_wait 6
	anim_ret

BattleAnim_Psn:
	anim_1gfx BATTLE_ANIM_GFX_POISON
	anim_sound 0, 0, SFX_POISON
	anim_obj BATTLE_ANIM_OBJ_SKULL, 64, 56, $0
	anim_wait 8
	anim_sound 0, 0, SFX_POISON
	anim_obj BATTLE_ANIM_OBJ_SKULL, 48, 56, $0
	anim_wait 8
	anim_ret

BattleAnim_Sap:
	anim_1gfx BATTLE_ANIM_GFX_CHARGE
	anim_sound 6, 3, SFX_WATER_GUN
	anim_obj BATTLE_ANIM_OBJ_ABSORB, 128, 48, $2
	anim_wait 6
	anim_sound 6, 3, SFX_WATER_GUN
	anim_obj BATTLE_ANIM_OBJ_ABSORB, 136, 64, $3
	anim_wait 6
	anim_sound 6, 3, SFX_WATER_GUN
	anim_obj BATTLE_ANIM_OBJ_ABSORB, 136, 32, $4
	anim_wait 16
	anim_ret

BattleAnim_Frz:
	anim_1gfx BATTLE_ANIM_GFX_ICE
	anim_obj BATTLE_ANIM_OBJ_FROZEN, 44, 110, $0
	anim_sound 0, 0, SFX_SHINE
	anim_wait 16
	anim_sound 0, 0, SFX_SHINE
	anim_wait 16
	anim_ret

BattleAnim_Par:
	anim_1gfx BATTLE_ANIM_GFX_STATUS
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_sound 0, 0, SFX_THUNDERSHOCK
	anim_obj BATTLE_ANIM_OBJ_PARALYZED, 20, 88, $42
	anim_obj BATTLE_ANIM_OBJ_PARALYZED, 76, 88, $c2
	anim_wait 128
	anim_ret

BattleAnim_InLove:
	anim_1gfx BATTLE_ANIM_GFX_OBJECTS
	anim_sound 0, 0, SFX_LICK
	anim_obj BATTLE_ANIM_OBJ_HEART, 64, 76, $0
	anim_wait 32
	anim_sound 0, 0, SFX_LICK
	anim_obj BATTLE_ANIM_OBJ_HEART, 36, 72, $0
	anim_wait 32
	anim_ret

BattleAnim_InSandstorm:
	anim_1gfx BATTLE_ANIM_GFX_POWDER
	anim_obj BATTLE_ANIM_OBJ_SANDSTORM, 88, 0, $0
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_SANDSTORM, 72, 0, $1
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_SANDSTORM, 56, 0, $2
.loop
	anim_sound 0, 1, SFX_MENU
	anim_wait 8
	anim_loop 6, .loop
	anim_wait 8
	anim_ret

BattleAnim_InNightmare:
	anim_1gfx BATTLE_ANIM_GFX_ANGELS
	anim_sound 0, 0, SFX_BUBBLEBEAM
	anim_obj BATTLE_ANIM_OBJ_IN_NIGHTMARE, 68, 80, $0
	anim_wait 40
	anim_ret

BattleAnim_InWhirlpool:
	anim_1gfx BATTLE_ANIM_GFX_WIND
	anim_bgeffect BATTLE_BG_EFFECT_WHIRLPOOL, $0, $0, $0
	anim_sound 0, 1, SFX_SURF
.loop
	anim_obj BATTLE_ANIM_OBJ_GUST, 132, 72, $0
	anim_wait 6
	anim_loop 6, .loop
	anim_incbgeffect BATTLE_BG_EFFECT_WHIRLPOOL
	anim_wait 1
	anim_ret

BattleAnim_HitConfusion:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_sound 0, 0, SFX_POUND
	anim_obj BATTLE_ANIM_OBJ_HIT, 44, 96, $0
	anim_wait 16
	anim_ret

BattleAnim_Miss:
	anim_ret

BattleAnim_EnemyDamage:
.loop
	anim_bgeffect BATTLE_BG_EFFECT_HIDE_MON, $0, BG_EFFECT_TARGET, $0
	anim_wait 5
	anim_bgeffect BATTLE_BG_EFFECT_SHOW_MON, $0, BG_EFFECT_TARGET, $0
	anim_wait 5
	anim_loop 3, .loop
	anim_ret

BattleAnim_EnemyStatDown:
	anim_call BattleAnim_UserObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_VIBRATE_MON, $0, BG_EFFECT_TARGET, $0
	anim_wait 40
	anim_call BattleAnim_ShowMon_1
	anim_wait 1
	anim_ret

BattleAnim_PlayerStatDown:
	anim_call BattleAnim_UserObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_WOBBLE_PLAYER, $0, $0, $0
	anim_wait 40
	anim_call BattleAnim_ShowMon_1
	anim_wait 1
	anim_ret

BattleAnim_PlayerDamage:
	anim_bgeffect BATTLE_BG_EFFECT_SHAKE_SCREEN_Y, $20, $2, $20
	anim_wait 40
	anim_ret

BattleAnim_Wobble:
	anim_bgeffect BATTLE_BG_EFFECT_WOBBLE_SCREEN, $0, $0, $0
	anim_wait 40
	anim_ret

BattleAnim_Shake:
	anim_bgeffect BATTLE_BG_EFFECT_SHAKE_SCREEN_X, $20, $2, $40
	anim_wait 40
	anim_ret

	BattleAnim_TargetObj_1Row:
	anim_battlergfx_2row
	anim_bgeffect BATTLE_BG_EFFECT_BATTLEROBJ_1ROW, $0, BG_EFFECT_TARGET, $0
	anim_wait 6
	anim_ret

BattleAnim_TargetObj_2Row:
	anim_battlergfx_1row
	anim_bgeffect BATTLE_BG_EFFECT_BATTLEROBJ_2ROW, $0, BG_EFFECT_TARGET, $0
	anim_wait 6
	anim_ret

BattleAnim_ShowMon_0:
	anim_wait 1
	anim_bgeffect BATTLE_BG_EFFECT_SHOW_MON, $0, BG_EFFECT_TARGET, $0
	anim_wait 5
	anim_incobj 1
	anim_wait 1
	anim_ret

BattleAnim_UserObj_1Row:
	anim_battlergfx_2row
	anim_bgeffect BATTLE_BG_EFFECT_BATTLEROBJ_1ROW, $0, BG_EFFECT_USER, $0
	anim_wait 6
	anim_ret

BattleAnim_UserObj_2Row:
	anim_battlergfx_1row
	anim_bgeffect BATTLE_BG_EFFECT_BATTLEROBJ_2ROW, $0, BG_EFFECT_USER, $0
	anim_wait 4
	anim_ret

BattleAnim_ShowMon_1:
	anim_wait 1
	anim_bgeffect BATTLE_BG_EFFECT_SHOW_MON, $0, BG_EFFECT_USER, $0
	anim_wait 4
	anim_incobj 1
	anim_wait 1
	anim_ret
