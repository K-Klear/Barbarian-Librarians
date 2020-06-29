return {
	[hash("menu_fight")] = {"FIGHT", "BOJOVAT"},
	[hash("menu_settings")] = {"Settings", "Nastavení"},
	[hash("menu_exit")] = {"EXIT", "KONEC"},
	[hash("menu_credits")] = {"Credits", "Titulky"},
	[hash("menu_close")] = {"close", "zpět"},
	
	[hash("credits_text")] = {"Game by Vojta Kynčl\n\nMusic by Kevin MacLeod:\n\nWelcome to the Show by Kevin MacLeod\nLink: https://incompetech.filmmusic.io/song/4614-welcome-to-the-show\nLicense: http://creativecommons.org/licenses/by/4.0/\n\nBeauty Flow by Kevin MacLeod\nLink: https://incompetech.filmmusic.io/song/5025-beauty-flow\nLicense: http://creativecommons.org/licenses/by/4.0/\n\nEDM Detection Mode by Kevin MacLeod\nLink: https://incompetech.filmmusic.io/song/3687-edm-detection-mode\nLicense: http://creativecommons.org/licenses/by/4.0/", 
	"Naprogramoval Vojta Kynčl\n\nHudba Kevin MacLeod:\n\nWelcome to the Show - Kevin MacLeod\nLink: https://incompetech.filmmusic.io/song/4614-welcome-to-the-show\nLicence: http://creativecommons.org/licenses/by/4.0/\n\nBeauty Flow - Kevin MacLeod\nLink: https://incompetech.filmmusic.io/song/5025-beauty-flow\nLicence: http://creativecommons.org/licenses/by/4.0/\n\nEDM Detection Mode - Kevin MacLeod\nLink: https://incompetech.filmmusic.io/song/3687-edm-detection-mode\nLicence: http://creativecommons.org/licenses/by/4.0/"},
	[hash("credits_font_1")] = {"Elementary Gothic Bookhand font by Bill Roach", "Font Elementary Gothic Bookhand: Bill Roach"},
	[hash("credits_font_2")] = {"Barbarian NS font by Anthony Robinson", "Font Barbarian NS: Anthony Robinson"},

	[hash("settings_volume")] = {"Volume", "Hlasitost"},
	[hash("settings_volume_labels")] = {
		music = {function(volume) return "Music: "..volume.."%" end, function(volume) return "Hudba: "..volume.." %" end},
		sound = {function(volume) return "Sound: "..volume.."%" end, function(volume) return "Zvuk: "..volume.." %" end},
		voice = {function(volume) return "Voice: "..volume.."%" end, function(volume) return "Hlas: "..volume.." %" end}
	},
	[hash("language_label")] = {"Language", "Jazyk"},

	[hash("settings_damage_multiplier")] = {"Damage\nmultiplier", "Síla\nútoků"},
	[hash("settings_damage_labels")] = {function(damage, player) return "Player "..player..": "..damage.."%" end, function(damage, player) return "Hráč "..player..": "..damage.." %" end},
		
	[hash("selection_player_1")] = {"Player 1", "Hráč 1"},
	[hash("selection_player_2")] = {"Player 2", "Hráč 2"},
	[hash("selection_choose_fighter")] = {"Choose your librarian", "Vyber si knihovníka"},
	[hash("selection_exit")] = {"Exit (esc)", "Zpět (esc)"},
	[hash("selection_versus")] = {"VERSUS", "VERSUS"},
	[hash("selection_random")] = {"Random", "Náhodný"},

	[hash("lu_throw")] = {"Helmet Heave", "Hod helmou"},
	[hash("lu_smash")] = {"Scooter Smash", "Rána koloběžkou"},
	[hash("lu_ride")] = {"Scooter Ride", "Koloběh života"},

	[hash("bo_throw")] = {"Throw the Book at Them", "Čtení je radost"},
	[hash("bo_smash")] = {"Analytical Psychology", "Analytická psychologie"},
	[hash("bo_hook")] = {"Hook", "Hák"},

	[hash("vo_spit")] = {"Coffee Spit", "Plivnutí kafe"},
	[hash("vo_smash")] = {"Smell the Coffee", "Ranní káva"},
	[hash("vo_teleport")] = {"Defold Hack", "Hacknutí hry"},

	[hash("pe_jump")] = {"Jump", "Zadupání do země"},
	[hash("pe_stomp")] = {"Quake", "Zemětřesení"},
	[hash("pe_charge")] = {"Charge", "Poskočení"},

	[hash("main_fight")] = {"FIGHT", "FIGHT"},
	[hash("main_round")] = {function(x) return "Round "..x end, function(x) return x..". kolo" end},
	[hash("main_winner")] = {function(name) return name.." wins" end, function(name) return name.." zvítězil" end},
	[hash("main_draw")] = {"Draw", "Nerozhodně"},

	[hash("pause_resume")] = {"Resume", "Pokračovat"},
	[hash("pause_title")] = {"Paused", "Pozastaveno"},
}