DEF TIME_GROUP EQU 0 ; use the nth TimeFishGroups entry

MACRO fishgroup
; chance, old rod, good rod, super rod
	db \1
	dw \2, \3, \4
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH, FishGroups
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 50 percent + 1, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super
	fishgroup 50 percent + 1, .Remoraid_Swarm_Old,   .Remoraid_Swarm_Good,   .Remoraid_Swarm_Super
	fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	fishgroup 50 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 50 percent + 1, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super
	fishgroup 50 percent + 1, .Qwilfish_NoSwarm_Old, .Qwilfish_NoSwarm_Good, .Qwilfish_NoSwarm_Super
	assert_table_length NUM_FISHGROUPS

.Shore_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, KRABBY
.Shore_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, KRABBY
	dbbw  90 percent + 1, 20, KRABBY
	dbbw 100 percent,     0, TIME_GROUP
.Shore_Super:
	dbbw  40 percent,     40, KRABBY
	dbbw  70 percent,     1, TIME_GROUP
	dbbw  90 percent + 1, 40, KRABBY
	dbbw 100 percent,     40, KINGLER

.Ocean_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, TENTACOOL
.Ocean_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, TENTACOOL
	dbbw  90 percent + 1, 20, CHINCHOU
	dbbw 100 percent,     2, TIME_GROUP
.Ocean_Super:
	dbbw  40 percent,     40, CHINCHOU
	dbbw  70 percent,     3, TIME_GROUP
	dbbw  90 percent + 1, 40, TENTACRUEL
	dbbw 100 percent,     40, LANTURN

.Lake_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, GOLDEEN
.Lake_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, GOLDEEN
	dbbw  90 percent + 1, 20, GOLDEEN
	dbbw 100 percent,     4, TIME_GROUP
.Lake_Super:
	dbbw  40 percent,     40, GOLDEEN
	dbbw  70 percent,     5, TIME_GROUP
	dbbw  90 percent + 1, 40, MAGIKARP
	dbbw 100 percent,     40, SEAKING

.Pond_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, POLIWAG
.Pond_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, POLIWAG
	dbbw  90 percent + 1, 20, POLIWAG
	dbbw 100 percent,     6, TIME_GROUP
.Pond_Super:
	dbbw  40 percent,     40, POLIWAG
	dbbw  70 percent,     7, TIME_GROUP
	dbbw  90 percent + 1, 40, MAGIKARP
	dbbw 100 percent,     40, POLIWAG

.Dratini_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, MAGIKARP
.Dratini_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, MAGIKARP
	dbbw  90 percent + 1, 20, MAGIKARP
	dbbw 100 percent,     8, TIME_GROUP
.Dratini_Super:
	dbbw  40 percent,     40, MAGIKARP
	dbbw  70 percent,     9, TIME_GROUP
	dbbw  90 percent + 1, 40, MAGIKARP
	dbbw 100 percent,     40, DRAGONAIR

.Qwilfish_Swarm_Old:
	dbbw  70 percent + 1, 5, MAGIKARP
	dbbw  85 percent + 1, 5, MAGIKARP
	dbbw 100 percent,     5, QWILFISH
.Qwilfish_Swarm_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, QWILFISH
	dbbw  90 percent + 1, 20, QWILFISH
	dbbw 100 percent,     10, TIME_GROUP
.Qwilfish_Swarm_Super:
	dbbw  40 percent,     40, QWILFISH
	dbbw  70 percent,     11, TIME_GROUP
	dbbw  90 percent + 1, 40, QWILFISH
	dbbw 100 percent,     40, QWILFISH

.Remoraid_Swarm_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, REMORAID
.Remoraid_Swarm_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, REMORAID
	dbbw  90 percent + 1, 20, REMORAID
	dbbw 100 percent,     12, TIME_GROUP
.Remoraid_Swarm_Super:
	dbbw  40 percent,     40, REMORAID
	dbbw  70 percent,     13, TIME_GROUP
	dbbw  90 percent + 1, 40, REMORAID
	dbbw 100 percent,     40, REMORAID

.Gyarados_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, MAGIKARP
.Gyarados_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, MAGIKARP
	dbbw  90 percent + 1, 20, MAGIKARP
	dbbw 100 percent,     14, TIME_GROUP
.Gyarados_Super:
	dbbw  40 percent,     40, MAGIKARP
	dbbw  70 percent,     15, TIME_GROUP
	dbbw  90 percent + 1, 40, MAGIKARP
	dbbw 100 percent,     40, MAGIKARP

.Dratini_2_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, MAGIKARP
.Dratini_2_Good:
	dbbw  35 percent,     10, MAGIKARP
	dbbw  70 percent,     10, MAGIKARP
	dbbw  90 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     16, TIME_GROUP
.Dratini_2_Super:
	dbbw  40 percent,     10, MAGIKARP
	dbbw  70 percent,     17, TIME_GROUP
	dbbw  90 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, DRAGONAIR

.WhirlIslands_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, KRABBY
.WhirlIslands_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, KRABBY
	dbbw  90 percent + 1, 20, KRABBY
	dbbw 100 percent,     18, TIME_GROUP
.WhirlIslands_Super:
	dbbw  40 percent,     40, KRABBY
	dbbw  70 percent,     19, TIME_GROUP
	dbbw  90 percent + 1, 40, KINGLER
	dbbw 100 percent,     40, SEADRA

.Qwilfish_NoSwarm_Old:
.Qwilfish_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, TENTACOOL
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, TENTACOOL
	dbbw  90 percent + 1, 20, TENTACOOL
	dbbw 100 percent,     20, TIME_GROUP
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super:
	dbbw  40 percent,     40, TENTACOOL
	dbbw  70 percent,     21, TIME_GROUP
	dbbw  90 percent + 1, 40, MAGIKARP
	dbbw 100 percent,     40, QWILFISH

.Remoraid_Old:
	dbbw  70 percent + 1, 10, MAGIKARP
	dbbw  85 percent + 1, 10, MAGIKARP
	dbbw 100 percent,     10, POLIWAG
.Remoraid_Good:
	dbbw  35 percent,     20, MAGIKARP
	dbbw  70 percent,     20, POLIWAG
	dbbw  90 percent + 1, 20, POLIWAG
	dbbw 100 percent,     6, TIME_GROUP
.Remoraid_Super:
	dbbw  40 percent,     40, POLIWAG
	dbbw  70 percent,     7, TIME_GROUP
	dbbw  90 percent + 1, 40, MAGIKARP
	dbbw 100 percent,     40, REMORAID

TimeFishGroups:
	;     day             nite
	dbwbw 20, CORSOLA,    20, STARYU     ; 0
	dbwbw 40, CORSOLA,    40, STARYU     ; 1
	dbwbw 20, SHELLDER,   20, SHELLDER   ; 2
	dbwbw 40, SHELLDER,   40, SHELLDER   ; 3
	dbwbw 20, GOLDEEN,    20, GOLDEEN    ; 4
	dbwbw 40, GOLDEEN,    40, GOLDEEN    ; 5
	dbwbw 20, POLIWAG,    20, POLIWAG    ; 6
	dbwbw 40, POLIWAG,    40, POLIWAG    ; 7
	dbwbw 20, DRATINI,    20, DRATINI    ; 8
	dbwbw 40, DRATINI,    40, DRATINI    ; 9
	dbwbw 20, QWILFISH,   20, QWILFISH   ; 10
	dbwbw 40, QWILFISH,   40, QWILFISH   ; 11
	dbwbw 20, REMORAID,   20, REMORAID   ; 12
	dbwbw 40, REMORAID,   40, REMORAID   ; 13
	dbwbw 20, GYARADOS,   20, GYARADOS   ; 14
	dbwbw 40, GYARADOS,   40, GYARADOS   ; 15
	dbwbw 10, DRATINI,    10, DRATINI    ; 16
	dbwbw 10, DRATINI,    10, DRATINI    ; 17
	dbwbw 20, HORSEA,     20, HORSEA     ; 18
	dbwbw 40, HORSEA,     40, HORSEA     ; 19
	dbwbw 20, TENTACOOL,  20, TENTACOOL  ; 20
	dbwbw 40, TENTACOOL,  40, TENTACOOL  ; 21
