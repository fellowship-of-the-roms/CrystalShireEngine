MACRO tilecoll
; used in data/tilesets/*_collision.asm
	db COLL_\1, COLL_\2, COLL_\3, COLL_\4
ENDM


SECTION "Tileset Data 1", ROMX

TilesetKantovTiles2GFX::
INCBIN "gfx/tilesets/kanto.2bpp.vtiles2.lz"

TilesetKantovTiles5GFX::
INCBIN "gfx/tilesets/kanto.2bpp.vtiles5.lz"

TilesetKantovTiles4GFX::
INCBIN "gfx/tilesets/kanto.2bpp.vtiles4.lz"

TilesetKantoMeta::
INCBIN "data/tilesets/kanto_metatiles.bin.lz"

TilesetKantoColl::
INCLUDE "data/tilesets/kanto_collision.asm"

Tileset0vTiles2GFX::
TilesetJohtovTiles2GFX::
INCBIN "gfx/tilesets/johto.2bpp.vtiles2.lz"

Tileset0vTiles5GFX::
TilesetJohtovTiles5GFX::
INCBIN "gfx/tilesets/johto.2bpp.vtiles5.lz"

Tileset0vTiles4GFX::
TilesetJohtovTiles4GFX::
INCBIN "gfx/tilesets/johto.2bpp.vtiles4.lz"

Tileset0Meta::
TilesetJohtoMeta::
INCBIN "data/tilesets/johto_metatiles.bin.lz"

Tileset0Coll::
TilesetJohtoColl::
INCLUDE "data/tilesets/johto_collision.asm"

TilesetIcePathvTiles2GFX::
INCBIN "gfx/tilesets/ice_path.2bpp.vtiles2.lz"

TilesetIcePathvTiles5GFX::
INCBIN "gfx/tilesets/ice_path.2bpp.vtiles5.lz"

TilesetIcePathvTiles4GFX::
INCBIN "gfx/tilesets/ice_path.2bpp.vtiles4.lz"

TilesetIcePathMeta::
INCBIN "data/tilesets/ice_path_metatiles.bin.lz"

TilesetIcePathColl::
INCLUDE "data/tilesets/ice_path_collision.asm"

TilesetPlayersRoomvTiles2GFX::
INCBIN "gfx/tilesets/players_room.2bpp.vtiles2.lz"

TilesetPlayersRoomvTiles5GFX::
INCBIN "gfx/tilesets/players_room.2bpp.vtiles5.lz"

TilesetPlayersRoomvTiles4GFX::
INCBIN "gfx/tilesets/players_room.2bpp.vtiles4.lz"

TilesetPlayersRoomMeta::
INCBIN "data/tilesets/players_room_metatiles.bin.lz"

TilesetPlayersRoomColl::
INCLUDE "data/tilesets/players_room_collision.asm"


SECTION "Tileset Data 2", ROMX

TilesetPokecentervTiles2GFX::
INCBIN "gfx/tilesets/pokecenter.2bpp.vtiles2.lz"

TilesetPokecentervTiles5GFX::
INCBIN "gfx/tilesets/pokecenter.2bpp.vtiles5.lz"

TilesetPokecentervTiles4GFX::
INCBIN "gfx/tilesets/pokecenter.2bpp.vtiles4.lz"

TilesetPokecenterMeta::
INCBIN "data/tilesets/pokecenter_metatiles.bin.lz"

TilesetPokecenterColl::
INCLUDE "data/tilesets/pokecenter_collision.asm"

TilesetPortvTiles2GFX::
INCBIN "gfx/tilesets/port.2bpp.vtiles2.lz"

TilesetPortvTiles5GFX::
INCBIN "gfx/tilesets/port.2bpp.vtiles5.lz"

TilesetPortvTiles4GFX::
INCBIN "gfx/tilesets/port.2bpp.vtiles4.lz"

TilesetPortMeta::
INCBIN "data/tilesets/port_metatiles.bin.lz"

TilesetPortColl::
INCLUDE "data/tilesets/port_collision.asm"

TilesetPlayersHousevTiles2GFX::
INCBIN "gfx/tilesets/players_house.2bpp.vtiles2.lz"

TilesetPlayersHousevTiles5GFX::
INCBIN "gfx/tilesets/players_house.2bpp.vtiles5.lz"

TilesetPlayersHousevTiles4GFX::
INCBIN "gfx/tilesets/players_house.2bpp.vtiles4.lz"

TilesetPlayersHouseMeta::
INCBIN "data/tilesets/players_house_metatiles.bin.lz"

TilesetPlayersHouseColl::
INCLUDE "data/tilesets/players_house_collision.asm"

TilesetMansionvTiles2GFX::
INCBIN "gfx/tilesets/mansion.2bpp.vtiles2.lz"

TilesetMansionvTiles5GFX::
INCBIN "gfx/tilesets/mansion.2bpp.vtiles5.lz"

TilesetMansionvTiles4GFX::
INCBIN "gfx/tilesets/mansion.2bpp.vtiles4.lz"

TilesetMansionMeta::
INCBIN "data/tilesets/mansion_metatiles.bin.lz"

TilesetMansionColl::
INCLUDE "data/tilesets/mansion_collision.asm"

TilesetCavevTiles2GFX::
INCBIN "gfx/tilesets/cave.2bpp.vtiles2.lz"

TilesetCavevTiles5GFX::
INCBIN "gfx/tilesets/cave.2bpp.vtiles5.lz"

TilesetCavevTiles4GFX::
INCBIN "gfx/tilesets/cave.2bpp.vtiles4.lz"

TilesetCaveMeta::
TilesetDarkCaveMeta::
INCBIN "data/tilesets/cave_metatiles.bin.lz"

TilesetCaveColl::
TilesetDarkCaveColl::
INCLUDE "data/tilesets/cave_collision.asm"


SECTION "Tileset Data 3", ROMX

TilesetTowervTiles2GFX::
INCBIN "gfx/tilesets/tower.2bpp.vtiles2.lz"

TilesetTowervTiles5GFX::
INCBIN "gfx/tilesets/tower.2bpp.vtiles5.lz"

TilesetTowervTiles4GFX::
INCBIN "gfx/tilesets/tower.2bpp.vtiles4.lz"

TilesetTowerMeta::
INCBIN "data/tilesets/tower_metatiles.bin.lz"

TilesetTowerColl::
INCLUDE "data/tilesets/tower_collision.asm"

TilesetLabvTiles2GFX::
INCBIN "gfx/tilesets/lab.2bpp.vtiles2.lz"

TilesetLabvTiles5GFX::
INCBIN "gfx/tilesets/lab.2bpp.vtiles5.lz"

TilesetLabvTiles4GFX::
INCBIN "gfx/tilesets/lab.2bpp.vtiles4.lz"

TilesetLabMeta::
INCBIN "data/tilesets/lab_metatiles.bin.lz"

TilesetLabColl::
INCLUDE "data/tilesets/lab_collision.asm"

TilesetMartvTiles2GFX::
INCBIN "gfx/tilesets/mart.2bpp.vtiles2.lz"

TilesetMartvTiles5GFX::
INCBIN "gfx/tilesets/mart.2bpp.vtiles5.lz"

TilesetMartvTiles4GFX::
INCBIN "gfx/tilesets/mart.2bpp.vtiles4.lz"

TilesetMartMeta::
INCBIN "data/tilesets/mart_metatiles.bin.lz"

TilesetMartColl::
INCLUDE "data/tilesets/mart_collision.asm"

TilesetGameCornervTiles2GFX::
INCBIN "gfx/tilesets/game_corner.2bpp.vtiles2.lz"

TilesetGameCornervTiles5GFX::
INCBIN "gfx/tilesets/game_corner.2bpp.vtiles5.lz"

TilesetGameCornervTiles4GFX::
INCBIN "gfx/tilesets/game_corner.2bpp.vtiles4.lz"

TilesetGameCornerMeta::
INCBIN "data/tilesets/game_corner_metatiles.bin.lz"

TilesetGameCornerColl::
INCLUDE "data/tilesets/game_corner_collision.asm"

TilesetTrainStationvTiles2GFX::
INCBIN "gfx/tilesets/train_station.2bpp.vtiles2.lz"

TilesetTrainStationvTiles5GFX::
INCBIN "gfx/tilesets/train_station.2bpp.vtiles5.lz"

TilesetTrainStationvTiles4GFX::
INCBIN "gfx/tilesets/train_station.2bpp.vtiles4.lz"

TilesetTrainStationMeta::
INCBIN "data/tilesets/train_station_metatiles.bin.lz"

TilesetTrainStationColl::
INCLUDE "data/tilesets/train_station_collision.asm"

TilesetForestMeta::
INCBIN "data/tilesets/forest_metatiles.bin.lz"


SECTION "Tileset Data 4", ROMX

TilesetEliteFourRoomvTiles2GFX::
INCBIN "gfx/tilesets/elite_four_room.2bpp.vtiles2.lz"

TilesetEliteFourRoomvTiles5GFX::
INCBIN "gfx/tilesets/elite_four_room.2bpp.vtiles5.lz"

TilesetEliteFourRoomvTiles4GFX::
INCBIN "gfx/tilesets/elite_four_room.2bpp.vtiles4.lz"

TilesetEliteFourRoomMeta::
INCBIN "data/tilesets/elite_four_room_metatiles.bin.lz"

TilesetEliteFourRoomColl::
INCLUDE "data/tilesets/elite_four_room_collision.asm"

TilesetParkvTiles2GFX::
INCBIN "gfx/tilesets/park.2bpp.vtiles2.lz"

TilesetParkvTiles5GFX::
INCBIN "gfx/tilesets/park.2bpp.vtiles5.lz"

TilesetParkvTiles4GFX::
INCBIN "gfx/tilesets/park.2bpp.vtiles4.lz"

TilesetParkMeta::
INCBIN "data/tilesets/park_metatiles.bin.lz"

TilesetParkColl::
INCLUDE "data/tilesets/park_collision.asm"

TilesetRadioTowervTiles2GFX::
INCBIN "gfx/tilesets/radio_tower.2bpp.vtiles2.lz"

TilesetRadioTowervTiles5GFX::
INCBIN "gfx/tilesets/radio_tower.2bpp.vtiles5.lz"

TilesetRadioTowervTiles4GFX::
INCBIN "gfx/tilesets/radio_tower.2bpp.vtiles4.lz"

TilesetRadioTowerMeta::
INCBIN "data/tilesets/radio_tower_metatiles.bin.lz"

TilesetRadioTowerColl::
INCLUDE "data/tilesets/radio_tower_collision.asm"

TilesetUndergroundvTiles2GFX::
INCBIN "gfx/tilesets/underground.2bpp.vtiles2.lz"

TilesetUndergroundvTiles5GFX::
INCBIN "gfx/tilesets/underground.2bpp.vtiles5.lz"

TilesetUndergroundvTiles4GFX::
INCBIN "gfx/tilesets/underground.2bpp.vtiles4.lz"

TilesetUndergroundMeta::
INCBIN "data/tilesets/underground_metatiles.bin.lz"

TilesetUndergroundColl::
INCLUDE "data/tilesets/underground_collision.asm"

TilesetDarkCavevTiles2GFX::
INCBIN "gfx/tilesets/dark_cave.2bpp.vtiles2.lz"

TilesetDarkCavevTiles5GFX::
INCBIN "gfx/tilesets/dark_cave.2bpp.vtiles5.lz"

TilesetDarkCavevTiles4GFX::
INCBIN "gfx/tilesets/dark_cave.2bpp.vtiles4.lz"


SECTION "Tileset Data 5", ROMX

TilesetPokeComCentervTiles2GFX::
INCBIN "gfx/tilesets/pokecom_center.2bpp.vtiles2.lz"

TilesetPokeComCentervTiles5GFX::
INCBIN "gfx/tilesets/pokecom_center.2bpp.vtiles5.lz"

TilesetPokeComCentervTiles4GFX::
INCBIN "gfx/tilesets/pokecom_center.2bpp.vtiles4.lz"

TilesetPokeComCenterMeta::
INCBIN "data/tilesets/pokecom_center_metatiles.bin.lz"

TilesetPokeComCenterColl::
INCLUDE "data/tilesets/pokecom_center_collision.asm"

TilesetBattleTowerInsidevTiles2GFX::
INCBIN "gfx/tilesets/battle_tower_inside.2bpp.vtiles2.lz"

TilesetBattleTowerInsidevTiles5GFX::
INCBIN "gfx/tilesets/battle_tower_inside.2bpp.vtiles5.lz"

TilesetBattleTowerInsidevTiles4GFX::
INCBIN "gfx/tilesets/battle_tower_inside.2bpp.vtiles4.lz"

TilesetBattleTowerInsideMeta::
INCBIN "data/tilesets/battle_tower_inside_metatiles.bin.lz"

TilesetBattleTowerInsideColl::
INCLUDE "data/tilesets/battle_tower_inside_collision.asm"

TilesetGatevTiles2GFX::
INCBIN "gfx/tilesets/gate.2bpp.vtiles2.lz"

TilesetGatevTiles5GFX::
INCBIN "gfx/tilesets/gate.2bpp.vtiles5.lz"

TilesetGatevTiles4GFX::
INCBIN "gfx/tilesets/gate.2bpp.vtiles4.lz"

TilesetGateMeta::
INCBIN "data/tilesets/gate_metatiles.bin.lz"

TilesetGateColl::
INCLUDE "data/tilesets/gate_collision.asm"

TilesetJohtoModernvTiles2GFX::
TilesetBattleTowerOutsidevTiles2GFX::
INCBIN "gfx/tilesets/johto_modern.2bpp.vtiles2.lz"

TilesetJohtoModernvTiles5GFX::
TilesetBattleTowerOutsidevTiles5GFX::
INCBIN "gfx/tilesets/johto_modern.2bpp.vtiles5.lz"

TilesetJohtoModernvTiles4GFX::
TilesetBattleTowerOutsidevTiles4GFX::
INCBIN "gfx/tilesets/johto_modern.2bpp.vtiles4.lz"

TilesetJohtoModernMeta::
INCBIN "data/tilesets/johto_modern_metatiles.bin.lz"

TilesetJohtoModernColl::
INCLUDE "data/tilesets/johto_modern_collision.asm"

TilesetTraditionalHousevTiles2GFX::
INCBIN "gfx/tilesets/traditional_house.2bpp.vtiles2.lz"

TilesetTraditionalHousevTiles5GFX::
INCBIN "gfx/tilesets/traditional_house.2bpp.vtiles5.lz"

TilesetTraditionalHousevTiles4GFX::
INCBIN "gfx/tilesets/traditional_house.2bpp.vtiles4.lz"

TilesetTraditionalHouseMeta::
INCBIN "data/tilesets/traditional_house_metatiles.bin.lz"

TilesetTraditionalHouseColl::
INCLUDE "data/tilesets/traditional_house_collision.asm"


SECTION "Tileset Data 6", ROMX

TilesetForestvTiles2GFX::
INCBIN "gfx/tilesets/forest.2bpp.vtiles2.lz"

TilesetForestvTiles5GFX::
INCBIN "gfx/tilesets/forest.2bpp.vtiles5.lz"

TilesetForestvTiles4GFX::
INCBIN "gfx/tilesets/forest.2bpp.vtiles4.lz"

TilesetChampionsRoomvTiles2GFX::
INCBIN "gfx/tilesets/champions_room.2bpp.vtiles2.lz"

TilesetChampionsRoomvTiles5GFX::
INCBIN "gfx/tilesets/champions_room.2bpp.vtiles5.lz"

TilesetChampionsRoomvTiles4GFX::
INCBIN "gfx/tilesets/champions_room.2bpp.vtiles4.lz"

TilesetChampionsRoomMeta::
INCBIN "data/tilesets/champions_room_metatiles.bin.lz"

TilesetChampionsRoomColl::
INCLUDE "data/tilesets/champions_room_collision.asm"

TilesetHousevTiles2GFX::
INCBIN "gfx/tilesets/house.2bpp.vtiles2.lz"

TilesetHousevTiles5GFX::
INCBIN "gfx/tilesets/house.2bpp.vtiles5.lz"

TilesetHousevTiles4GFX::
INCBIN "gfx/tilesets/house.2bpp.vtiles4.lz"

TilesetHouseMeta::
INCBIN "data/tilesets/house_metatiles.bin.lz"

TilesetHouseColl::
INCLUDE "data/tilesets/house_collision.asm"

TilesetLighthousevTiles2GFX::
INCBIN "gfx/tilesets/lighthouse.2bpp.vtiles2.lz"

TilesetLighthousevTiles5GFX::
INCBIN "gfx/tilesets/lighthouse.2bpp.vtiles5.lz"

TilesetLighthousevTiles4GFX::
INCBIN "gfx/tilesets/lighthouse.2bpp.vtiles4.lz"

TilesetLighthouseMeta::
INCBIN "data/tilesets/lighthouse_metatiles.bin.lz"

TilesetLighthouseColl::
INCLUDE "data/tilesets/lighthouse_collision.asm"

TilesetForestColl::
INCLUDE "data/tilesets/forest_collision.asm"

TilesetFacilityvTiles2GFX::
INCBIN "gfx/tilesets/facility.2bpp.vtiles2.lz"

TilesetFacilityvTiles5GFX::
INCBIN "gfx/tilesets/facility.2bpp.vtiles5.lz"

TilesetFacilityvTiles4GFX::
INCBIN "gfx/tilesets/facility.2bpp.vtiles4.lz"

TilesetFacilityMeta::
INCBIN "data/tilesets/facility_metatiles.bin.lz"

TilesetFacilityColl::
INCLUDE "data/tilesets/facility_collision.asm"

TilesetBattleTowerOutsideMeta::
INCBIN "data/tilesets/battle_tower_outside_metatiles.bin.lz"

TilesetBattleTowerOutsideColl::
INCLUDE "data/tilesets/battle_tower_outside_collision.asm"

TilesetBetaWordRoomMeta::
INCBIN "data/tilesets/beta_word_room_metatiles.bin.lz"

TilesetBetaWordRoomColl::
TilesetHoOhWordRoomColl::
TilesetKabutoWordRoomColl::
TilesetOmanyteWordRoomColl::
TilesetAerodactylWordRoomColl::
INCLUDE "data/tilesets/beta_word_room_collision.asm"


SECTION "Tileset Data 7", ROMX

TilesetRuinsOfAlphvTiles2GFX::
TilesetBetaWordRoomvTiles2GFX::
TilesetHoOhWordRoomvTiles2GFX::
TilesetKabutoWordRoomvTiles2GFX::
TilesetOmanyteWordRoomvTiles2GFX::
TilesetAerodactylWordRoomvTiles2GFX::
INCBIN "gfx/tilesets/ruins_of_alph.2bpp.vtiles2.lz"

TilesetRuinsOfAlphvTiles5GFX::
TilesetBetaWordRoomvTiles5GFX::
TilesetHoOhWordRoomvTiles5GFX::
TilesetKabutoWordRoomvTiles5GFX::
TilesetOmanyteWordRoomvTiles5GFX::
TilesetAerodactylWordRoomvTiles5GFX::
INCBIN "gfx/tilesets/ruins_of_alph.2bpp.vtiles5.lz"

TilesetRuinsOfAlphvTiles4GFX::
TilesetBetaWordRoomvTiles4GFX::
TilesetHoOhWordRoomvTiles4GFX::
TilesetKabutoWordRoomvTiles4GFX::
TilesetOmanyteWordRoomvTiles4GFX::
TilesetAerodactylWordRoomvTiles4GFX::
INCBIN "gfx/tilesets/ruins_of_alph.2bpp.vtiles4.lz"

TilesetRuinsOfAlphMeta::
INCBIN "data/tilesets/ruins_of_alph_metatiles.bin.lz"

TilesetRuinsOfAlphColl::
INCLUDE "data/tilesets/ruins_of_alph_collision.asm"


SECTION "Tileset Data 8", ROMX

TilesetHoOhWordRoomMeta::
INCBIN "data/tilesets/ho_oh_word_room_metatiles.bin.lz"

TilesetKabutoWordRoomMeta::
INCBIN "data/tilesets/kabuto_word_room_metatiles.bin.lz"

TilesetOmanyteWordRoomMeta::
INCBIN "data/tilesets/omanyte_word_room_metatiles.bin.lz"

TilesetAerodactylWordRoomMeta::
INCBIN "data/tilesets/aerodactyl_word_room_metatiles.bin.lz"

SECTION "Tileset Data 9", ROMX

Tileset0Attr::
TilesetJohtoAttr::
INCBIN "data/tilesets/johto_attributes.bin.lz"

TilesetJohtoModernAttr::
INCBIN "data/tilesets/johto_modern_attributes.bin.lz"

TilesetKantoAttr::
INCBIN "data/tilesets/kanto_attributes.bin.lz"

TilesetBattleTowerOutsideAttr::
INCBIN "data/tilesets/battle_tower_outside_attributes.bin.lz"

TilesetHouseAttr::
INCBIN "data/tilesets/house_attributes.bin.lz"

TilesetPlayersHouseAttr::
INCBIN "data/tilesets/players_house_attributes.bin.lz"

TilesetPokecenterAttr::
INCBIN "data/tilesets/pokecenter_attributes.bin.lz"

TilesetGateAttr::
INCBIN "data/tilesets/gate_attributes.bin.lz"

TilesetPortAttr::
INCBIN "data/tilesets/port_attributes.bin.lz"

TilesetLabAttr::
INCBIN "data/tilesets/lab_attributes.bin.lz"


SECTION "Tileset Data 10", ROMX

TilesetFacilityAttr::
INCBIN "data/tilesets/facility_attributes.bin.lz"

TilesetMartAttr::
INCBIN "data/tilesets/mart_attributes.bin.lz"

TilesetMansionAttr::
INCBIN "data/tilesets/mansion_attributes.bin.lz"

TilesetGameCornerAttr::
INCBIN "data/tilesets/game_corner_attributes.bin.lz"

TilesetEliteFourRoomAttr::
INCBIN "data/tilesets/elite_four_room_attributes.bin.lz"

TilesetTraditionalHouseAttr::
INCBIN "data/tilesets/traditional_house_attributes.bin.lz"

TilesetTrainStationAttr::
INCBIN "data/tilesets/train_station_attributes.bin.lz"

TilesetChampionsRoomAttr::
INCBIN "data/tilesets/champions_room_attributes.bin.lz"

TilesetLighthouseAttr::
INCBIN "data/tilesets/lighthouse_attributes.bin.lz"

TilesetPlayersRoomAttr::
INCBIN "data/tilesets/players_room_attributes.bin.lz"

TilesetPokeComCenterAttr::
INCBIN "data/tilesets/pokecom_center_attributes.bin.lz"

TilesetBattleTowerInsideAttr::
INCBIN "data/tilesets/battle_tower_inside_attributes.bin.lz"

TilesetTowerAttr::
INCBIN "data/tilesets/tower_attributes.bin.lz"


SECTION "Tileset Data 11", ROMX

TilesetCaveAttr::
TilesetDarkCaveAttr::
INCBIN "data/tilesets/cave_attributes.bin.lz"

TilesetParkAttr::
INCBIN "data/tilesets/park_attributes.bin.lz"

TilesetRuinsOfAlphAttr::
INCBIN "data/tilesets/ruins_of_alph_attributes.bin.lz"

TilesetRadioTowerAttr::
INCBIN "data/tilesets/radio_tower_attributes.bin.lz"

TilesetUndergroundAttr::
INCBIN "data/tilesets/underground_attributes.bin.lz"

TilesetIcePathAttr::
INCBIN "data/tilesets/ice_path_attributes.bin.lz"

TilesetForestAttr::
INCBIN "data/tilesets/forest_attributes.bin.lz"

TilesetBetaWordRoomAttr::
INCBIN "data/tilesets/beta_word_room_attributes.bin.lz"

TilesetHoOhWordRoomAttr::
INCBIN "data/tilesets/ho_oh_word_room_attributes.bin.lz"

TilesetKabutoWordRoomAttr::
INCBIN "data/tilesets/kabuto_word_room_attributes.bin.lz"

TilesetOmanyteWordRoomAttr::
INCBIN "data/tilesets/omanyte_word_room_attributes.bin.lz"

TilesetAerodactylWordRoomAttr::
INCBIN "data/tilesets/aerodactyl_word_room_attributes.bin.lz"
