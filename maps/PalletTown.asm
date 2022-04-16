	object_const_def
	const PALLETTOWN_TEACHER
	const PALLETTOWN_FISHER
	const PALLETTOWN_OAK

PalletTown_MapScripts:
	def_scene_scripts
	scene_script .DummyScene1
	scene_script .OakLanded
	scene_script .DummyScene2 ; SCENE_PALLET_TOWN_CANTLEAVE

	def_callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_PALLET
	endcallback

.DummyScene1:
	end

.DummyScene2:
	end

.OakLanded:
	sdefer .OakLandedDefer
	end

.OakLandedDefer:
	opentext
	writetext PalletTownProfOak1
	promptbutton
	turnobject PALLETTOWN_OAK, LEFT
	turnobject PLAYER, RIGHT
	writetext PalletTownProfOak2
	waitbutton
	closetext
	applymovement PALLETTOWN_OAK, PalletTownOakDown
	disappear PALLETTOWN_OAK
	setevent EVENT_LANDED_IN_PALLET
	setscene SCENE_PALLET_TOWN_CANTLEAVE
	setmapscene OAKS_LAB, SCENE_OAKS_LAB_KANTOJOURNEY
	reloadmappart
	refreshscreen
	end

TryToLeaveScript:
	opentext
	writetext CantLeavePalletTownText
	waitbutton
	closetext
	applymovement PLAYER, PalletTownDown
	end

PalletTownTeacherScript:
	jumptextfaceplayer PalletTownTeacherText

PalletTownFisherScript:
	jumptextfaceplayer PalletTownFisherText

PalletTownSign:
	jumptext PalletTownSignText

RedsHouseSign:
	jumptext RedsHouseSignText

OaksLabSign:
	jumptext OaksLabSignText

BluesHouseSign:
	jumptext BluesHouseSignText

PalletTownOak:
	end

RoadBlock:
	jumptext RoadBlockText

PalletTownTeacherText:
	text "I'm raising #-"
	line "MON too."

	para "They serve as my"
	line "private guards."
	done

PalletTownFisherText:
	text "Technology is"
	line "incredible!"

	para "You can now trade"
	line "#MON across"
	cont "time like e-mail."
	done

PalletTownSignText:
	text "PALLET TOWN"

	para "A Tranquil Setting"
	line "of Peace & Purity"
	done

RedsHouseSignText:
	text "RED'S HOUSE"
	done

OaksLabSignText:
	text "OAK #MON"
	line "RESEARCH LAB"
	done

BluesHouseSignText:
	text "BLUE'S HOUSE"
	done

PalletTownProfOak1:
	text "At last, here we"
	line "are…"
	done

PalletTownProfOak2:
	text "Welcome to"
	line "PALLET TOWN!"

	para "My lab is just"
	line "down the way here."
	done

CantLeavePalletTownText:
	text "PROF.OAK is"
	line "waiting…"
	done

RoadBlockText:
	text "Today, we're"
	line "swimming for no"
	cont "reason."

	para "Someday, we'll"
	line "disappear for"
	cont "no reason."
	done

PalletTownDown:
	step DOWN
	step_end

PalletTownOakDown:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

PalletTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, REDS_HOUSE_1F, 1
	warp_event 13,  5, BLUES_HOUSE, 1
	warp_event 12, 11, OAKS_LAB, 1

	def_coord_events
	coord_event 8, 1, SCENE_PALLET_TOWN_CANTLEAVE, TryToLeaveScript
	coord_event  9,  1, SCENE_PALLET_TOWN_CANTLEAVE, TryToLeaveScript

	def_bg_events
	bg_event  7,  9, BGEVENT_READ, PalletTownSign
	bg_event  3,  5, BGEVENT_READ, RedsHouseSign
	bg_event 13, 13, BGEVENT_READ, OaksLabSign
	bg_event 11,  5, BGEVENT_READ, BluesHouseSign

	def_object_events
	object_event  3,  8, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PalletTownTeacherScript, -1
	object_event 12, 14, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PalletTownFisherScript, -1
	object_event  9,  2, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PalletTownOak, EVENT_LANDED_IN_PALLET
	object_event  6, 17, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RoadBlock, EVENT_BEAT_JANINE
	object_event  7, 17, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RoadBlock, EVENT_BEAT_JANINE
	object_event  5, 17, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RoadBlock, EVENT_BEAT_JANINE
	object_event  4, 17, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RoadBlock, EVENT_BEAT_JANINE
