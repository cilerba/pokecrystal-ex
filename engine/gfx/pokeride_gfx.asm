ShowPokeRideChoices:
    ld hl, PokeRideMenuHeader
    call LoadMenuHeader
    call VerticalMenu
    ld a, [wMenuCursorY]
    dec a
    call CopyNameFromMenu
    call CloseWindow
    ret
	
INCLUDE "data/pokeride_names.asm"