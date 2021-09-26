	object_const_def
	const CIANWOODLUGIASPEECHHOUSE_TEACHER
	const CIANWOODLUGIASPEECHHOUSE_LASS
	const CIANWOODLUGIASPEECHHOUSE_TWIN
	const CIANWOODLUGIASPEECHHOUSE_MAN

CianwoodLugiaSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CianwoodLugiaSpeechHouseTeacherScript:
	jumptextfaceplayer CianwoodLugiaSpeechHouseTeacherText

CianwoodLugiaSpeechHouseLassScript:
	jumptextfaceplayer CianwoodLugiaSpeechHouseLassText

CianwoodLugiaSpeechHouseTwinScript:
	jumptextfaceplayer CianwoodLugiaSpeechHouseTwinText

CianwoodLugiaSpeechHouseBookshelf:
	jumpstd PictureBookshelfScript

CianwoodLugiaSpeechHouseStrength:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM04_STRENGTH
	iftrue .GotStrength
	writetext CianwoodLugiaSpeechHouseStrengthText
	yesorno
	iffalse .Cancel
	writetext CianwoodLugiaSpeechHouseStrengthGo
	waitbutton
	writetext CianwoodLugiaSpeechHouseStrengthPause
	waitbutton
	closetext
	playsound SFX_STRENGTH
	earthquake 30
	pause 30
	opentext
	writetext CianwoodLugiaSpeechHouseStrengthPause
	waitbutton
	closetext
	playsound SFX_STRENGTH
	earthquake 30
	pause 30
	opentext
	writetext CianwoodLugiaSpeechHouseStrengthPause
	waitbutton
	closetext
	playsound SFX_STRENGTH
	earthquake 90
	pause 30
	showemote EMOTE_SHOCK, CIANWOODLUGIASPEECHHOUSE_MAN, 15
	setevent EVENT_GOT_HM04_STRENGTH
	loadmem wUnlockedSTRENGTH, 1
	opentext
	writetext CianwoodLugiaSpeechHouseGettingStrengthText
	waitbutton
	writetext CianwoodLugiaSpeechHouseGetPrimeapeText
	playsound SFX_ITEM
	waitsfx
.GotStrength
	writetext CianwoodLugiaSpeechHouseGotStrengthText
	waitbutton
	closetext
	end
.Cancel
	writetext CianwoodLugiaSpeechHouseCancelText
	waitbutton
	closetext
	end

CianwoodLugiaSpeechHouseStrengthText:
	text "Howdy there,"
	line "partner!"

	para "This kind family"
	line "is lettin' me"
	cont "stay here 'til"

	para "I get back on my"
	line "feet and out in-"
	cont "to the ocean."

	para "Say, while I"
	line "wait…"

	para "How's about a"
	line "good ol' arm"
	cont "wrestle?"

	done

CianwoodLugiaSpeechHouseStrengthGo:
	text "Let's rock!"
	done

CianwoodLugiaSpeechHouseStrengthPause:
	text "<……> <……>"

	done

CianwoodLugiaSpeechHouseGettingStrengthText:
	text "Boy howdy!"
	
	para "You sure got a"
	line "heck of an arm"
	cont "there."

	para "For winning, let"
	line "me give you this."

	para "This here is the"
	line "access code to"
	cont "PRIMEAPE."

	para "Callin' on a"
	line "PRIMEAPE will"
	
	para "have you pushing"
	line "boulders left"
	cont "and right!"

	done

CianwoodLugiaSpeechHouseGotStrengthText:
	text "You won fair an'"
	line "square now I"
	cont "tell you what."

	done

CianwoodLugiaSpeechHouseCancelText:
	text "I'll be here."
	done

CianwoodLugiaSpeechHouseGetPrimeapeText:
	text "<PLAYER> can now"
	line "call PRIMEAPE!"

	done

CianwoodLugiaSpeechHouseTeacherText:
	text "You came from"
	line "OLIVINE?"

	para "Do you remember"
	line "the four islands"
	cont "along the way?"

	para "I heard that a "
	line "mythical sea crea-"
	cont "ture is hiding in"
	cont "them."
	done

CianwoodLugiaSpeechHouseLassText:
	text "I heard that you"
	line "can only see it if"

	para "you have a SILVER"
	line "WING."

	para "It must have the"
	line "same scent as the"
	cont "creature."
	done

CianwoodLugiaSpeechHouseTwinText:
	text "I've heard that"
	line "the whirlpools"

	para "around the islands"
	line "are caused by the"
	cont "sea creature."

	para "You might need a"
	line "special #MON"
	cont "to get past"
	cont "them."
	done

CianwoodLugiaSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 6
	warp_event  3,  7, CIANWOOD_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CianwoodLugiaSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CianwoodLugiaSpeechHouseBookshelf

	def_object_events
	object_event  2,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodLugiaSpeechHouseTeacherScript, -1
	object_event  6,  2, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CianwoodLugiaSpeechHouseLassScript, -1
	object_event  0,  2, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CianwoodLugiaSpeechHouseTwinScript, -1
	object_event  5,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CianwoodLugiaSpeechHouseStrength, -1
