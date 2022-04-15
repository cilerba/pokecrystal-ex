    const_def
    const POKEPAGER_FLASH
    const POKEPAGER_CUT
    const POKEPAGER_SURF
    const POKEPAGER_STRENGTH
    const POKEPAGER_FLY
    const POKEPAGER_WHIRLPOOL
    const POKEPAGER_WATERFALL

    
PokePager::
	ld hl, Script_PokePager
    call QueueScript
    ld a, $1
    ld [wFieldMoveSucceeded], a
    ret

Script_PokePager:
	reloadmappart
	special UpdateTimePals
    callasm _PokePager
	reloadmappart
	special UpdateTimePals
    end 

_PokePager:
    call ClearWindowData
    farcall ReanchorBGMap_NoOAMUpdate
    ld hl, .MenuHeader
    call LoadMenuHeader
	call .SetUpMenuItems
	ld a, [wBattleMenuCursorPosition]
	ld [wMenuCursorPosition], a
	call .DrawMenuAccount
	call DrawVariableLengthMenuBox
	call SafeUpdateSprites
	call _OpenAndCloseMenu_HDMATransferTilemapAndAttrmap
	farcall LoadFonts_NoOAMUpdate
	call UpdateTimePals
	jr .Select

.Reopen:
	call UpdateSprites
	call UpdateTimePals
	call .SetUpMenuItems
	ld a, [wBattleMenuCursorPosition]
	ld [wMenuCursorPosition], a

.Select:
	call .GetInput
	jr c, .Exit
	call ._DrawMenuAccount
	ld a, [wMenuCursorPosition]
	ld [wBattleMenuCursorPosition], a
	call PlayClickSFX
	call PlaceHollowCursor
	call .OpenMenu
; Menu items have different return functions.
; For example, saving exits the menu.
    ld hl, .MenuReturns
    ld e, a
    ld d, 0
    add hl, de
    add hl, de
    ld a, [hli]
    ld h, [hl]
    ld l, a
    jp hl
    
.MenuReturns:
    dw .Reopen
    dw .Exit
    dw .ExitMenuCallFuncCloseText
    dw .ExitMenuRunScriptCloseText
    dw .ExitMenuRunScript
    dw .ReturnEnd
    dw .ReturnRedraw


.Exit:
	ldh a, [hOAMUpdate]
	push af
	ld a, 1
	ldh [hOAMUpdate], a
	call LoadFontsExtra
	pop af
	ldh [hOAMUpdate], a
.ReturnEnd:
	call ExitMenu
.ReturnEnd2:
	call CloseText
	call UpdateTimePals
	ret
    .ExitMenuRunScript:
	call ExitMenu
	ld a, HMENURETURN_SCRIPT
	ldh [hMenuReturn], a
	ret


.GetInput:
; Return carry on exit, and no-carry on selection.
    xor a
    ldh [hBGMapMode], a
    call ._DrawMenuAccount
    call SetUpMenu
    ld a, $ff
    ld [wMenuSelection], a
.loop
    call .PrintMenuAccount
    call GetScrollingMenuJoypad
    ld a, [wMenuJoypad]
    cp B_BUTTON
    jr z, .b
    cp A_BUTTON
    jr z, .a
    jr .loop
.a
    call PlayClickSFX
    and a
    ret
.b
    scf
    ret

.ExitMenuRunScriptCloseText:
	call ExitMenu
	ld a, HMENURETURN_SCRIPT
	ldh [hMenuReturn], a
	jr .ReturnEnd2

.ExitMenuCallFuncCloseText:
	call ExitMenu
	ld hl, wQueuedScriptAddr
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wQueuedScriptBank]
	rst FarCall
	jr .ReturnEnd2

.ReturnRedraw:
	call .Clear
	jp .Reopen

.Clear:
	call ClearBGPalettes
	call Call_ExitMenu
	call ReloadTilesetAndPalettes
	call .DrawMenuAccount
	call DrawVariableLengthMenuBox
	call UpdateSprites
	call GSReloadPalettes
	call FinishExitMenu
	ret

.OpenMenu:
	ld a, [wMenuSelection]
	call .GetMenuAccountTextPointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.MenuHeader:
    db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 12, SCREEN_HEIGHT - 1
    dw .MenuData
    db 1 ; default option

.MenuData
    db STATICMENU_CURSOR | STATICMENU_WRAP ; flags
    dn 0, 0
    dw wPPMenuItems
    dw .PPString
    dw .Items

.Items:
    dw PokePager_Flash,         .FlashString,       .FlashDesc
    dw PokePager_Cut,           .CutString,         .CutDesc
    dw PokePager_Surf,          .SurfString,        .SurfDesc
    dw PokePager_Strength,      .StrengthString,    .StrengthDesc
    dw PokePager_Fly,           .FlyString,         .FlyDesc
    dw PokePager_Whirlpool,     .WhirlpoolString,   .WhirlpoolDesc
    dw PokePager_Waterfall,     .WaterfallString,   .WaterfallDesc

.FlashString:       db "AMPHAROS@"
.CutString:         db "SCYTHER@"
.SurfString         db "LAPRAS@"
.StrengthString     db "PRIMEAPE@"
.FlyString:         db "PIDGEOT@"
.WhirlpoolString    db "FERALIGATR@"
.WaterfallString    db "GYARADOS@"

.FlashDesc:         db "FLASH@"
.CutDesc:           db "CUT@"
.SurfDesc:          db "SURF@"
.StrengthDesc:      db "STRENGTH@"
.FlyDesc:           db "FLY@"
.WhirlpoolDesc:     db "WHIRLPOOL@"
.WaterfallDesc:     db "WATERFALL@"

.PPString:
	push de
	ld a, [wMenuSelection]
	call .GetMenuAccountTextPointer
	inc hl
	inc hl
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop hl
	call PlaceString
	ret

.MenuDesc:
	push de
	ld a, [wMenuSelection]
	cp $ff
	jr z, .none
	call .GetMenuAccountTextPointer
rept 4
	inc hl
endr
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop hl
	call PlaceString
	ret
.none
	pop de
	ret

.GetMenuAccountTextPointer:
	ld e, a
	ld d, 0
	ld hl, wMenuDataPointerTableAddr
	ld a, [hli]
	ld h, [hl]
	ld l, a
rept 6
	add hl, de
endr
	ret

.SetUpMenuItems:
    xor a
    ld [wWhichIndexSet], a
    call .FillMenuList

    ld a, [wUnlockedFLASH] ; Checks to see if we've unlocked the HM
	cp 1
	jr c, .noFlash
    ld a, POKEPAGER_FLASH
    call .AppendMenuList
.noFlash

    ld a, [wUnlockedCUT] ; Checks to see if we've unlocked the HM
	cp 1
	jr c, .noCut
    ld a, POKEPAGER_CUT
    call .AppendMenuList
.noCut

    ld a, [wUnlockedSURF] ; Checks to see if we've unlocked the HM
	cp 1
	jr c, .noSurf
    ld a, POKEPAGER_SURF
    call .AppendMenuList
.noSurf

    ld a, [wUnlockedSTRENGTH] ; Checks to see if we've unlocked the HM
	cp 1
	jr c, .noStrength
    ld a, POKEPAGER_STRENGTH
    call .AppendMenuList
.noStrength

    ld a, [wUnlockedFLY] ; Checks to see if we've unlocked the HM
	cp 1
	jr c, .noFly
    ld a, POKEPAGER_FLY
    call .AppendMenuList
.noFly

    ld a, [wUnlockedWHIRLPOOL] ; Checks to see if we've unlocked the HM
	cp 1
	jr c, .noWhirlpool
    ld a, POKEPAGER_WHIRLPOOL
    call .AppendMenuList
.noWhirlpool

    ld a, [wUnlockedWATERFALL] ; Checks to see if we've unlocked the HM
	cp 1
	jr c, .noWaterfall
    ld a, POKEPAGER_WATERFALL
    call .AppendMenuList
.noWaterfall

    ld a, c
    ld [wPPMenuItems], a
    ret

.FillMenuList:
    xor a ; Set a to 0
    ld hl, wPPMenuItems
    ld [hli], a
    ld a, -1
    ld bc, wPPMenuItemsEnd - (wPPMenuItems + 1)
    call ByteFill
    ld de, wPPMenuItems + 1
    ld c, 0
    ret

.AppendMenuList:
    ld [de], a
    inc de
    inc c ; c gets incremented as a counter for wPPMenuItems
    ret

.DrawMenuAccount:
	jp ._DrawMenuAccount

.PrintMenuAccount:
	call ._DrawMenuAccount
	decoord 2, 17
	jp .MenuDesc

._DrawMenuAccount:
	hlcoord 0, 16
	lb bc, 2, 13
	call ClearBox
	hlcoord 0, 14
	ld b, 2
	ld c, 11
	jp TextboxPalette


PokePager_Flash:
	ld a, 1
	ld [wUsingHMItem], a
    farcall FlashFunction
    ld a, 4
	ret

PokePager_Cut:
	ld a, 1
	ld [wUsingHMItem], a
    farcall CutFunction
    ld a, 4
	ret

PokePager_Fly:
    ld a, 1
    ld [wUsingHMItem], a
    farcall FlyFunction
    ld a, 4
	ret

PokePager_Strength:
    ld a, 1
    ld [wUsingHMItem], a
    farcall StrengthFunction
    ld a, 4
	ret

PokePager_Surf:
	ld a, 1
	ld [wUsingHMItem], a

    farcall SurfFunction
    ld a, 4
	ret

PokePager_Whirlpool:
    ld a, 1
    ld [wUsingHMItem], a
    farcall WhirlpoolFunction
    ld a, 4
	ret

PokePager_Waterfall:
    ld a, 1
    ld [wUsingHMItem], a
    farcall WaterfallFunction
    ld a, 4
	ret
