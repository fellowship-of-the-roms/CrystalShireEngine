MobileBattleRoom_MapScripts:
	def_scene_scripts
	scene_script MobileBattleRoomInitializeScene, SCENE_MOBILEBATTLEROOM_INITIALIZE
	scene_script MobileBattleRoomNoopScene,       SCENE_MOBILEBATTLEROOM_NOOP

	def_callbacks

MobileBattleRoomInitializeScene:
	sdefer MobileBattleRoomInitializeAndPreparePokecenter2FScript
	end

MobileBattleRoomNoopScene:
	end

MobileBattleRoomInitializeAndPreparePokecenter2FScript:
	setscene SCENE_MOBILEBATTLEROOM_NOOP
	setmapscene POKECENTER_2F, SCENE_POKECENTER2F_LEAVE_MOBILE_BATTLE_ROOM
	end

MobileBattleRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, POKECENTER_2F, 6
	warp_event  5,  7, POKECENTER_2F, 6

	def_coord_events

	def_bg_events

	def_object_events
