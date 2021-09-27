	object_const_def
	const ROUTE42ECRUTEAKGATE_OFFICER
	const ROUTE42ECRUTEAKGATE_ROADBLOCKA
	const ROUTE42ECRUTEAKGATE_ROADBLOCKB

Route42EcruteakGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route42EcruteakGateOfficerScript:
	jumptextfaceplayer Route42EcruteakGateOfficerText

Route42EcruteakGateRoadblockAScript:
	jumptextfaceplayer Route42EcruteakGateRoadblockAText

Route42EcruteakGateRoadblockBScript:
	jumptextfaceplayer Route42EcruteakGateRoadblockBText

Route42EcruteakGateOfficerText:
	text "MT.MORTAR is like"
	line "a maze inside."

	para "Be careful. Don't"
	line "get lost in there."
	done

Route42EcruteakGateRoadblockAText:
	text "Slow down, kid."

	para "There was an acc-"
	line "ident up ahead."

	para "We've got every-"
	line "thing under"
	cont "control."

	para "Though it will"
	line "be a while be-"
	cont "fore the road is"
	cont "open."
	done

Route42EcruteakGateRoadblockBText:
	text "Huh?"

	para "Something hap-"
	line "pened outside."

	para "No clue what,"
	line "though."

	para "I just show up"
	line "where I'm told."
	done

Route42EcruteakGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ECRUTEAK_CITY, 1
	warp_event  0,  5, ECRUTEAK_CITY, 2
	warp_event  9,  4, ROUTE_42, 1
	warp_event  9,  5, ROUTE_42, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route42EcruteakGateOfficerScript, -1
	object_event  9,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route42EcruteakGateRoadblockAScript, EVENT_BEAT_JASMINE
	object_event  9,  5, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route42EcruteakGateRoadblockBScript, EVENT_BEAT_JASMINE
