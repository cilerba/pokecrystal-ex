	object_const_def

ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBugCatcherAbner:
	trainer BUG_CATCHER, ABNER, EVENT_BEAT_BUG_CATCHER_ABNER, BugCatcherAbnerSeenText, BugCatcherAbnerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherAbnerAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherEllis:
	trainer BUG_CATCHER, ELLIS, EVENT_BEAT_BUG_CATCHER_ELLIS, BugCatcherEllisSeenText, BugCatherEllisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherEllisAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherStacey:
	trainer BUG_CATCHER, STACEY, EVENT_BEAT_BUG_CATCHER_STACEY, BugCatcherStaceySeenText, BugCatherStaceyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherStaceyAfterBattleText
	waitbutton
	closetext
	end
	end

TrainerBugCatcherDion:
	trainer BUG_CATCHER, DION, EVENT_BEAT_BUG_CATCHER_DION, BugCatcherDionSeenText, BugCatherDionBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDionAfterBattleText
	waitbutton
	closetext
	end
	end

TrainerBugCatcherDane:
	trainer BUG_CATCHER, DANE, EVENT_BEAT_BUG_CATCHER_DANE, BugCatcherDaneSeenText, BugCatherDaneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherDaneAfterBattleText
	waitbutton
	closetext
	end

ViridianForestSign1:
	jumptext ViridianForestSign1Text

ViridianForestSign1Text:
	text "VIRIDIAN FOREST"
	done

BugCatcherAbnerSeenText:
	text "Whoa! You're from"
	line "JOHTO?"

	para "We have to battle!"
	done

BugCatcherAbnerBeatenText:
	text "What a rush!"
	done

BugCatcherAbnerAfterBattleText:
	text "I bet I'm stronger"
	line "than the BUG-type"
	
	para "#MON TRAINERS"
	line "in JOHTO!"
	done

BugCatcherEllisSeenText:
	text "My BEEDRILL are"
	line "itching to battle!"
	done

BugCatherEllisBeatenText:
	text "What now?"
	done

BugCatcherEllisAfterBattleText:
	text "I need to evolve"
	line "my KAKUNA…"
	done

BugCatcherStaceySeenText:
	text "Hey, wait up!"
	
	para "I want to show"
	line "you my cool BUG"
	cont "#MON!"
	done

BugCatherStaceyBeatenText:
	text "What did you"
	line "think?"
	done

BugCatcherStaceyAfterBattleText:
	text "I love BUG"
	line "#MON!"
	done
	done

BugCatcherDionSeenText:
	text "Oh, right."

	para "We should pro-"
	line "bably battle,"
	cont "right?"
	done

BugCatherDionBeatenText:
	text "That wasn't so"
	line "bad."
	done

BugCatcherDionAfterBattleText:
	text "I don't really"
	line "like battling."

	para "I just like to"
	line "collect BUG"
	cont "#MON."
	done

BugCatcherDaneSeenText:
	text "Last match!"
	done

BugCatherDaneBeatenText:
	text "Whoa!"
	done

BugCatcherDaneAfterBattleText:
	text "With battle skills"
	line "like that, you'll"

	para "defeat BROCK in"
	line "no time!"
	done

ViridianForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 51, ROUTE_2_SOUTH_GATE, 1
	warp_event 16, 51, ROUTE_2_SOUTH_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 14, 46, BGEVENT_READ, ViridianForestSign1

	def_object_events
	object_event  3, 46, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherAbner, -1
	object_event 29, 37, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherEllis, -1
	object_event 29, 19, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherStacey, -1
	object_event 13, 21, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherDion, -1
	object_event  2, 23, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBugCatcherDane, -1
