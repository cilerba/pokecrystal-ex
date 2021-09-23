; GetOptionPointer.Pointers indexes
	const_def
	const OPT_TEXT_SPEED   	; 0
	const OPT_BATTLE_SCENE 	; 1
	const OPT_BATTLE_STYLE 	; 2
	const OPT_SOUND        	; 3
	const OPT_PRINT        	; 4
	const OPT_MENU_ACCOUNT 	; 5
	const OPT_NEXT        	; 6
	const OPT_CANCEL1       ; 7
NUM_OPTIONS_1 EQU const_value    ; 8

	const_def
	const OPT_FRAME   		; 0
	const OPT_BIKEMUSIC  	; 1
	const OPT_BLANK1        ; 2
	const OPT_BLANK2       	; 3
	const OPT_BLANK3 		; 4
	const OPT_BLANK4 		; 5
	const OPT_PREV        	; 6
	const OPT_CANCEL2       ; 7
NUM_OPTIONS_2 EQU const_value    ; 8

_Option:
	ld a, [wCurOptionsPage]
	xor a
	ld [wCurOptionsPage], a

	ld hl, hInMenu
	ld a, [hl]
	push af
	ld [hl], TRUE
	call ClearBGPalettes
	hlcoord 0, 0
	ld b, SCREEN_HEIGHT - 2
	ld c, SCREEN_WIDTH - 2
	call Textbox
	hlcoord 2, 2
	ld de, StringOptions
	call OptionPrint

.joypad_loop
	call JoyTextDelay
	ldh a, [hJoyPressed]
	and START | B_BUTTON
	jr nz, .ExitOptions
	call OptionsControl
	jr c, .dpad
	call GetOptionPointer
	jr c, .ExitOptions

.dpad
	call Options_UpdateCursorPosition
	ld c, 3
	call DelayFrames
	jr .joypad_loop

.ExitOptions:
	ld de, SFX_TRANSACTION
	call PlaySFX
	call WaitSFX
	pop af
	ldh [hInMenu], a
	ret

OptionPrint:
	call PlaceString
	xor a
	ld [wJumptableIndex], a
	ldh [hJoyPressed], a

; display the settings of each option when the menu is opened
	ld c, NUM_OPTIONS_1 - 2 ; omit frame type, the last option
.print_text_loop
	push bc
	xor a
	ldh [hJoyLast], a
	call GetOptionPointer
	pop bc
	ld hl, wJumptableIndex
	inc [hl]
	dec c
	jr nz, .print_text_loop
	ld a, [wCurOptionsPage]
	and a
	call nz, UpdateFrame ; display the frame type

	xor a
	ld [wJumptableIndex], a
	inc a
	ldh [hBGMapMode], a
	call WaitBGMap
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	call SetPalettes



StringOptions:
	db "TEXT SPEED<LF>"
	db "        :<LF>"
	db "BATTLE SCENE<LF>"
	db "        :<LF>"
	db "BATTLE STYLE<LF>"
	db "        :<LF>"
	db "SOUND<LF>"
	db "        :<LF>"
	db "PRINT<LF>"
	db "        :<LF>"
	db "MENU ACCOUNT<LF>"
	db "        :<LF>"
	db "NEXT<LF>"
	db "<LF>"
	db "CANCEL@"

StringOptions2:
	db "FRAME<LF>"
	db "        :TYPE<LF>"
	db "BIKE MUSIC<LF>"
	db "        :<LF>"
	db "<LF>"
	db "<LF>"
	db "<LF>"
	db "<LF>"
	db "<LF>"
	db "<LF>"
	db "<LF>"
	db "<LF>"
	db "PREVIOUS<LF>"
	db "<LF>"
	db "CANCEL@"

GetOptionPointer:
	ld a, [wCurOptionsPage]
	cp 1
	jr z, .SecondPage
	jumptable .Pointers, wJumptableIndex
.SecondPage
	jumptable .Pointers2, wJumptableIndex

.Pointers:
; entries correspond to OPT_* constants
	dw Options_TextSpeed
	dw Options_BattleScene
	dw Options_BattleStyle
	dw Options_Sound
	dw Options_Print
	dw Options_MenuAccount
	dw Options_NextPrevious
	dw Options_Cancel
	
.Pointers2
	dw Options_Frame
	dw Options_Bike
	dw Options_Blank
	dw Options_Blank
	dw Options_Blank
	dw Options_Blank
	dw Options_NextPrevious
	dw Options_Cancel

	const_def
	const OPT_TEXT_SPEED_FAST ; 0
	const OPT_TEXT_SPEED_MED  ; 1
	const OPT_TEXT_SPEED_SLOW ; 2

Options_TextSpeed:
	call GetTextSpeed
	ldh a, [hJoyPressed]
	bit D_LEFT_F, a
	jr nz, .LeftPressed
	bit D_RIGHT_F, a
	jr z, .NonePressed
	ld a, c ; right pressed
	cp OPT_TEXT_SPEED_SLOW
	jr c, .Increase
	ld c, OPT_TEXT_SPEED_FAST - 1

.Increase:
	inc c
	ld a, e
	jr .Save

.LeftPressed:
	ld a, c
	and a
	jr nz, .Decrease
	ld c, OPT_TEXT_SPEED_SLOW + 1

.Decrease:
	dec c
	ld a, d

.Save:
	ld b, a
	ld a, [wOptions]
	and $f0
	or b
	ld [wOptions], a

.NonePressed:
	ld b, 0
	ld hl, .Strings
	add hl, bc
	add hl, bc
	ld e, [hl]
	inc hl
	ld d, [hl]
	hlcoord 11, 3
	call PlaceString
	and a
	ret

.Strings:
; entries correspond to OPT_TEXT_SPEED_* constants
	dw .Fast
	dw .Mid
	dw .Slow

.Fast: db "FAST@"
.Mid:  db "MID @"
.Slow: db "SLOW@"

GetTextSpeed:
; converts TEXT_DELAY_* value in a to OPT_TEXT_SPEED_* value in c,
; with previous/next TEXT_DELAY_* values in d/e
	ld a, [wOptions]
	and TEXT_DELAY_MASK
	cp TEXT_DELAY_SLOW
	jr z, .slow
	cp TEXT_DELAY_FAST
	jr z, .fast
	; none of the above
	ld c, OPT_TEXT_SPEED_MED
	lb de, TEXT_DELAY_FAST, TEXT_DELAY_SLOW
	ret

.slow
	ld c, OPT_TEXT_SPEED_SLOW
	lb de, TEXT_DELAY_MED, TEXT_DELAY_FAST
	ret

.fast
	ld c, OPT_TEXT_SPEED_FAST
	lb de, TEXT_DELAY_SLOW, TEXT_DELAY_MED
	ret

Options_BattleScene:
	ld hl, wOptions
	ldh a, [hJoyPressed]
	bit D_LEFT_F, a
	jr nz, .LeftPressed
	bit D_RIGHT_F, a
	jr z, .NonePressed
	bit BATTLE_SCENE, [hl]
	jr nz, .ToggleOn
	jr .ToggleOff

.LeftPressed:
	bit BATTLE_SCENE, [hl]
	jr z, .ToggleOff
	jr .ToggleOn

.NonePressed:
	bit BATTLE_SCENE, [hl]
	jr z, .ToggleOn
	jr .ToggleOff

.ToggleOn:
	res BATTLE_SCENE, [hl]
	ld de, .On
	jr .Display

.ToggleOff:
	set BATTLE_SCENE, [hl]
	ld de, .Off

.Display:
	hlcoord 11, 5
	call PlaceString
	and a
	ret

.On:  db "ON @"
.Off: db "OFF@"

Options_BattleStyle:
	ld hl, wOptions
	ldh a, [hJoyPressed]
	bit D_LEFT_F, a
	jr nz, .LeftPressed
	bit D_RIGHT_F, a
	jr z, .NonePressed
	bit BATTLE_SHIFT, [hl]
	jr nz, .ToggleShift
	jr .ToggleSet

.LeftPressed:
	bit BATTLE_SHIFT, [hl]
	jr z, .ToggleSet
	jr .ToggleShift

.NonePressed:
	bit BATTLE_SHIFT, [hl]
	jr nz, .ToggleSet

.ToggleShift:
	res BATTLE_SHIFT, [hl]
	ld de, .Shift
	jr .Display

.ToggleSet:
	set BATTLE_SHIFT, [hl]
	ld de, .Set

.Display:
	hlcoord 11, 7
	call PlaceString
	and a
	ret

.Shift: db "SHIFT@"
.Set:   db "SET  @"

Options_Sound:
	ld hl, wOptions
	ldh a, [hJoyPressed]
	bit D_LEFT_F, a
	jr nz, .LeftPressed
	bit D_RIGHT_F, a
	jr z, .NonePressed
	bit STEREO, [hl]
	jr nz, .SetMono
	jr .SetStereo

.LeftPressed:
	bit STEREO, [hl]
	jr z, .SetStereo
	jr .SetMono

.NonePressed:
	bit STEREO, [hl]
	jr nz, .ToggleStereo
	jr .ToggleMono

.SetMono:
	res STEREO, [hl]
	call RestartMapMusic

.ToggleMono:
	ld de, .Mono
	jr .Display

.SetStereo:
	set STEREO, [hl]
	call RestartMapMusic

.ToggleStereo:
	ld de, .Stereo

.Display:
	hlcoord 11, 9
	call PlaceString
	and a
	ret

.Mono:   db "MONO  @"
.Stereo: db "STEREO@"

	const_def
	const OPT_PRINT_LIGHTEST ; 0
	const OPT_PRINT_LIGHTER  ; 1
	const OPT_PRINT_NORMAL   ; 2
	const OPT_PRINT_DARKER   ; 3
	const OPT_PRINT_DARKEST  ; 4

Options_Print:
	call GetPrinterSetting
	ldh a, [hJoyPressed]
	bit D_LEFT_F, a
	jr nz, .LeftPressed
	bit D_RIGHT_F, a
	jr z, .NonePressed
	ld a, c
	cp OPT_PRINT_DARKEST
	jr c, .Increase
	ld c, OPT_PRINT_LIGHTEST - 1

.Increase:
	inc c
	ld a, e
	jr .Save

.LeftPressed:
	ld a, c
	and a
	jr nz, .Decrease
	ld c, OPT_PRINT_DARKEST + 1

.Decrease:
	dec c
	ld a, d

.Save:
	ld b, a
	ld [wGBPrinterBrightness], a

.NonePressed:
	ld b, 0
	ld hl, .Strings
	add hl, bc
	add hl, bc
	ld e, [hl]
	inc hl
	ld d, [hl]
	hlcoord 11, 11
	call PlaceString
	and a
	ret

.Strings:
; entries correspond to OPT_PRINT_* constants
	dw .Lightest
	dw .Lighter
	dw .Normal
	dw .Darker
	dw .Darkest

.Lightest: db "LIGHTEST@"
.Lighter:  db "LIGHTER @"
.Normal:   db "NORMAL  @"
.Darker:   db "DARKER  @"
.Darkest:  db "DARKEST @"

GetPrinterSetting:
; converts GBPRINTER_* value in a to OPT_PRINT_* value in c,
; with previous/next GBPRINTER_* values in d/e
	ld a, [wGBPrinterBrightness]
	and a
	jr z, .IsLightest
	cp GBPRINTER_LIGHTER
	jr z, .IsLight
	cp GBPRINTER_DARKER
	jr z, .IsDark
	cp GBPRINTER_DARKEST
	jr z, .IsDarkest
	; none of the above
	ld c, OPT_PRINT_NORMAL
	lb de, GBPRINTER_LIGHTER, GBPRINTER_DARKER
	ret

.IsLightest:
	ld c, OPT_PRINT_LIGHTEST
	lb de, GBPRINTER_DARKEST, GBPRINTER_LIGHTER
	ret

.IsLight:
	ld c, OPT_PRINT_LIGHTER
	lb de, GBPRINTER_LIGHTEST, GBPRINTER_NORMAL
	ret

.IsDark:
	ld c, OPT_PRINT_DARKER
	lb de, GBPRINTER_NORMAL, GBPRINTER_DARKEST
	ret

.IsDarkest:
	ld c, OPT_PRINT_DARKEST
	lb de, GBPRINTER_DARKER, GBPRINTER_LIGHTEST
	ret

Options_MenuAccount:
	ld hl, wOptions2
	ldh a, [hJoyPressed]
	bit D_LEFT_F, a
	jr nz, .LeftPressed
	bit D_RIGHT_F, a
	jr z, .NonePressed
	bit MENU_ACCOUNT, [hl]
	jr nz, .ToggleOff
	jr .ToggleOn

.LeftPressed:
	bit MENU_ACCOUNT, [hl]
	jr z, .ToggleOn
	jr .ToggleOff

.NonePressed:
	bit MENU_ACCOUNT, [hl]
	jr nz, .ToggleOn

.ToggleOff:
	res MENU_ACCOUNT, [hl]
	ld de, .Off
	jr .Display

.ToggleOn:
	set MENU_ACCOUNT, [hl]
	ld de, .On

.Display:
	hlcoord 11, 13
	call PlaceString
	and a
	ret

.Off: db "OFF@"
.On:  db "ON @"

Options_Frame:
	ld hl, wTextboxFrame
	ldh a, [hJoyPressed]
	bit D_LEFT_F, a
	jr nz, .LeftPressed
	bit D_RIGHT_F, a
	jr nz, .RightPressed
	and a
	ret

.RightPressed:
	ld a, [hl]
	inc a
	jr .Save

.LeftPressed:
	ld a, [hl]
	dec a

.Save:
	maskbits NUM_FRAMES
	ld [hl], a
UpdateFrame:
	ld a, [wTextboxFrame]
	hlcoord 16, 3 ; where on the screen the number is drawn
	add "1"
	ld [hl], a
	call LoadFontsExtra
	and a
	ret

Options_Bike:
	ld hl, wOptions2
	ldh a, [hJoyPressed]
	bit D_LEFT_F, a
	jr nz, .LeftPressed
	bit D_RIGHT_F, a
	jr z, .NonePressed
	bit BIKEMUSIC, [hl]
	jr nz, .ToggleOff
	jr .ToggleOn

.LeftPressed:
	bit BIKEMUSIC, [hl]
	jr z, .ToggleOn
	jr .ToggleOff

.NonePressed:
	bit BIKEMUSIC, [hl]
	jr nz, .ToggleOn

.ToggleOff:
	res BIKEMUSIC, [hl]
	ld de, .Off
	jr .Display

.ToggleOn:
	set BIKEMUSIC, [hl]
	ld de, .On

.Display:
	hlcoord 11, 5
	call PlaceString
	and a
	ret

.Off: db "OFF@"
.On:  db "ON @"


Options_NextPrevious:
	ld hl, wCurOptionsPage
	ldh a, [hJoyPressed]
	and A_BUTTON | D_RIGHT | D_LEFT
	jr z, .NonePressed
	bit 0, [hl]
	jr z, .Page2
	res 0, [hl]
	ld de, StringOptions
	jr .Display
.Page2:
	set 0, [hl]
	ld de, StringOptions2
.Display:
	push de
	hlcoord 0, 0
	lb bc, 16, 18
	call Textbox
	pop de
	hlcoord 2, 2
	call PlaceString
	call OptionPrint
	ld a, OPT_FRAME
	ld [wJumptableIndex], a
.NonePressed:
	and a
	ret

Options_Blank:
	ldh a, [hJoyPressed]
	and A_BUTTON
	jr nz, .Exit
	and a
	ret
	
.Exit:
	scf
	ret

Options_Cancel:
	ldh a, [hJoyPressed]
	and A_BUTTON
	jr nz, .Exit
	and a
	ret

.Exit:
	scf
	ret

OptionsControl:
	ld hl, wJumptableIndex
	ldh a, [hJoyLast]
	cp D_DOWN
	jr z, .DownPressed
	cp D_UP
	jr z, .UpPressed
	and a
	ret

.DownPressed:
	ld a, [wCurOptionsPage]
	cp 1
	jr z, .downSecPage
	jr .downFirstPage
.downSecPage
	ld a, [hl] ; Load the cursor position to a
	cp OPT_BIKEMUSIC ; Check if it's on the Bike Music option
	jr nz, .downSecPageCancel ; Increase if it isn't
	ld [hl], OPT_PREV
	jr .doneDown
.downSecPageCancel
	ld a, [hl]
	cp OPT_CANCEL2
	jr nz, .Increase
	ld [hl], OPT_FRAME
	jr .doneDown
.downFirstPage
	ld a, [hl]
	cp OPT_CANCEL1 ; maximum option index
	jr nz, .Increase
	ld [hl], OPT_TEXT_SPEED ; first option
.doneDown
	and a
	ret

.Increase:
	inc [hl]
	scf
	ret

.UpPressed:
	ld a, [hl]
	ld a, [wCurOptionsPage]
	cp 1
	jr z, .upSecPage
	jr .upFirstPage
.upSecPage
	ld a, [hl] ; Load the cursor position to a
	cp OPT_PREV ; Check if it's on the Bike Music option
	jr nz, .upSecPageCancel ; Increase if it isn't
	ld [hl], OPT_BIKEMUSIC
	jr .doneUp
.upSecPageCancel
	ld a, [hl]
	cp OPT_FRAME
	jr nz, .Decrease
	ld [hl], OPT_CANCEL2
	jr .doneUp
.upFirstPage
	ld a, [hl]
	and a ; minimum option index
	jr nz, .Decrease
	ld [hl], OPT_CANCEL1 ; first option
.doneUp
	and a
	ret

.Decrease:
	dec [hl]
	scf
	ret

Options_UpdateCursorPosition:
	hlcoord 1, 1
	ld de, SCREEN_WIDTH
	ld c, SCREEN_HEIGHT - 2
.loop
	ld [hl], " "
	add hl, de
	dec c
	jr nz, .loop
	hlcoord 1, 2
	ld bc, 2 * SCREEN_WIDTH
	ld a, [wJumptableIndex]
	call AddNTimes
	ld [hl], "▶"
	ret
