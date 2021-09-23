	object_const_def
	const AZALEAPOKECENTER1F_NURSE
	const AZALEAPOKECENTER1F_GENTLEMAN
	const AZALEAPOKECENTER1F_FISHING_GURU
	const AZALEAPOKECENTER1F_POKEFAN_F
	const AZALEAPOKECENTER1F_SCIENTIST

AzaleaPokecenter1F_MapScripts:
	def_scene_scripts
	scene_script .DummyScene

	def_callbacks

.DummyScene:
	end

AzaleaPokecenter1FScientistPC:
	faceplayer
	opentext
	setevent EVENT_GOT_PC_LINK
	writetext AzaleaPokecenter1FScientistText
	waitbutton
	verbosegiveitem PCLINK
	writetext AzaleaPokecenter1FScientistTextAfter
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear AZALEAPOKECENTER1F_SCIENTIST
	pause 15
	playsound SFX_EXIT_BUILDING
	waitsfx
	special FadeInQuickly
	end

AzaleaPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

AzaleaPokecenter1FGentlemanScript:
	jumptextfaceplayer AzaleaPokecenter1FGentlemanText

AzaleaPokecenter1FFishingGuruScript:
	jumptextfaceplayer AzaleaPokecenter1FFishingGuruText

AzaleaPokecenter1FPokefanFScript:
	jumptextfaceplayer AzaleaPokecenter1FPokefanFText

AzaleaPokecenter1FGentlemanText:
	text "I got here using"
	line "my #PAGER!"
	
	done

AzaleaPokecenter1FScientistText:
	text "<PLAYER>!"

	para "I was hoping I'd"
	line "find you here."

	para "PROF. ELM asked"
	line "me to give you"
	cont "this."
	done

AzaleaPokecenter1FScientistTextAfter:
	text "This device is"
	line "known as the"
	cont "PC LINK."

	para "It allows you to"
	line "access the PC"
	cont "from anywhere."

	para "I hope you make"
	line "great use of it."

	para "Good luck on"
	line "your adventure!"
	done


AzaleaPokecenter1FUnusedText: ; unreferenced
	text "This BILL guy"
	line "created the system"

	para "for storing"
	line "#MON in a PC."

	para "BILL's PC can"
	line "store up to 20"
	cont "#MON per BOX."
	done

AzaleaPokecenter1FFishingGuruText:
	text "BILL's PC can"
	line "store up to 20"
	cont "#MON per BOX."
	done

AzaleaPokecenter1FPokefanFText:
	text "Do you know about"
	line "APRICORNS?"

	para "Crack one open,"
	line "hollow it out and"

	para "fit it with a"
	line "special device."

	para "Then you can catch"
	line "#MON with it."

	para "Before # BALLS"
	line "were invented,"

	para "everyone used"
	line "APRICORNS."
	done

AzaleaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, AZALEA_TOWN, 1
	warp_event  4,  7, AZALEA_TOWN, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FNurseScript, -1
	object_event  9,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FGentlemanScript, -1
	object_event  6,  1, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FFishingGuruScript, -1
	object_event  1,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FPokefanFScript, -1
	object_event  5,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AzaleaPokecenter1FScientistPC, EVENT_GOT_PC_LINK
