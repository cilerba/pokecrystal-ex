PokeRideMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 12, SCREEN_HEIGHT - 1
	dw .RideMons
	db 1 ; default option
	db 0 ; ????
	
.RideMons:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 8 ; items
	db "FLASH@"
	db "ROCK SMASH@"
	db "CUT@"
	db "FLY@"
	db "STRENGTH@"
	db "SURF@"
	db "WHIRLPOOL@"
	db "WATERFALL@"
	db 3 ; title indent
	db " PAGE @" ; title
