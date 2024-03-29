﻿local T, C, L = unpack(select(2, ...))
if T.client ~= "deDE" then return end

----------------------------------------------------------------------------------------
--	Localization for deDE client(Thanks to Baine, chubidu, Vienchen and Alwa for the translation)
----------------------------------------------------------------------------------------
-- Announce your Lightwell
L_ANNOUNCE_LA_USE = " used my lightwell. " -- Needs review
L_ANNOUNCE_LA_CHARGE = " charge(s))" -- Needs review
L_ANNOUNCE_LA_USELESS = " used my lightwell, uselessly. " -- Needs review
L_ANNOUNCE_LA_STOP = "You shouldn't have used the lightwell." -- Needs review
L_ANNOUNCE_LA_PLACED = "Lightwell placed. " -- Needs review
L_ANNOUNCE_LA_CHARGES = " charges." -- Needs review

-- Announce flasks and food
L_ANNOUNCE_FF_NOFOOD = "Kein Essen: "
L_ANNOUNCE_FF_NOFLASK = "Kein Fläschchen: "
L_ANNOUNCE_FF_ALLBUFFED = "Alles drin!"
L_ANNOUNCE_FF_CHECK_BUTTON = "Check food and flask" -- Needs review

-- Says thanks for some spells
L_ANNOUNCE_SS_THANKS = "Thanks for " -- Needs review
L_ANNOUNCE_SS_RECEIVED = " received from " -- Needs review

-- Tooltip
L_TOOLTIP_NO_TALENT = "Keine Talente"
L_TOOLTIP_LOADING = "Lade..."
L_TOOLTIP_ACH_STATUS = "Dein Fortschritt:"
L_TOOLTIP_ACH_COMPLETE = "Dein Status: Fertig gestellt am "
L_TOOLTIP_ACH_INCOMPLETE = "Dein Status: Noch nicht Ferig"
L_TOOLTIP_SPELL_ID = "Zauber ID:"
L_TOOLTIP_ITEM_ID = "Gegenstands ID:"
L_TOOLTIP_WHO_TARGET = "Anvisiert von"
L_TOOLTIP_ITEM_COUNT = "Gegenstandsstufe:"

-- Misc
L_MISC_UNDRESS = "Ausziehen"
L_MISC_DRINKING = " trinkt."
L_MISC_BUY_STACK = "Alt-Klick um einen Stapel zu kaufen"
L_MISC_ONECLICK_BUYOUT = "Shift-Click um den ausgewählten Gegenstand ohne Bestätigung zu kaufen"
L_MISC_ONECLICK_BID = "Shift-Click um auf den ausgewählten Gegenstand ohne Bestätigung zu bieten"
L_MISC_UI_OUTDATED = "Deine Version von ShestakUI ist veraltet. Du kannst die aktuelle Version von www.shestak.org laden"
L_MISC_HEADER_MARK = "Mouseover Raid Icons" -- Needs review
L_MISC_BINDER_OPEN = "Mouse Bindings" -- Needs review

-- Raid Utility
L_RAID_UTIL_DISBAND = "Gruppe auflösen"

-- Zone name
L_ZONE_WINTERGRASP = "Tausendwintersee"
L_ZONE_TOLBARAD = "Tol Barad"
L_ZONE_TOLBARADPEN = "Halbinsel von Tol Barad"
L_ZONE_ARATHIBASIN = "Arathibecken"
L_ZONE_GILNEAS = "Die Schlacht um Gilneas"

-- WatchFrame Wowhead link
L_WATCH_WOWHEAD_LINK = "Wowhead Link"

-- Toggle Menu
L_TOGGLE_ADDON = "Erweiterung "
L_TOGGLE_ADDONS = " Erweiterungen"
L_TOGGLE_EXPAND = "erweitern "
L_TOGGLE_COLLAPSE = "schließen "
L_TOGGLE_RCLICK = "Rechtsklick zum Aktivieren oder Deaktiveren "
L_TOGGLE_LCLICK = "Links klicken um Fenster aktiv zu halten "
L_TOGGLE_RELOAD = " (benötigt UI neustart)"

-- UnitFrame
L_UF_GHOST = "Geist"
L_UF_DEAD = "Tod"
L_UF_OFFLINE = "Offline"
L_UF_MANA = "Niedriges Mana"
L_UF_TRINKET_READY = "Schmuckstück bereit: "
L_UF_TRINKET_USED = "Schmuckstück benutzt: "
L_UF_WOTF_USED = "WdV benutzt: "

-- Map
L_MAP_CURSOR = "Mauszeiger: "
L_MAP_BOUNDS = "Außerhalb der Begrenzung!"

-- Minimap
L_MINIMAP_CALENDAR = "Kalender"

-- Addons list
L_ALOAD_RL = "Interface Neuladen"
L_ALOAD_DEP = "Abhängigkeiten: "
L_ALOAD_OP_DEP = "Optional Dependencies: " -- Needs review
L_ALOAD_PROFILES = "Profiles" -- Needs review
L_ALOAD_ENABLE_ALL = "Enable All" -- Needs review
L_ALOAD_DISABLE_ALL = "Disable All" -- Needs review
L_ALOAD_PROFILE_NAME = "Profile Name" -- Needs review
L_ALOAD_SET_TO = "Set To.." -- Needs review
L_ALOAD_ADD_TO = "Add To.." -- Needs review
L_ALOAD_REMOVE_FROM = "Remove From.." -- Needs review
L_ALOAD_DELETE_PROFILE = "Delete Profile.." -- Needs review
L_ALOAD_CONFIRM_DELETE = "Are you sure you want to delete this profile? Hold down shift and click again if you are." -- Needs review

-- Chat
L_CHAT_WHISPER = "Von"
L_CHAT_BN_WHISPER = "Von"
L_CHAT_AFK = "[AFK]"
L_CHAT_DND = "[DND]"
L_CHAT_GM = "[GM]"
L_CHAT_GUILD = "G"
L_CHAT_PARTY = "P"
L_CHAT_PARTY_LEADER = "PL"
L_CHAT_RAID = "R"
L_CHAT_RAID_LEADER = "RL"
L_CHAT_RAID_WARNING = "RW"
L_CHAT_BATTLEGROUND = "BG"
L_CHAT_BATTLEGROUND_LEADER = "BGL"
L_CHAT_OFFICER = "O"
L_CHAT_PET_BATTLE = "PB" -- Needs review
L_CHAT_COME_ONLINE = "ist jetzt online."
L_CHAT_GONE_OFFLINE = "ist jetzt offline."
L_CHAT_COME_ONLINE_COLOR = "ist jetzt |cff298F00online|r !"
L_CHAT_GONE_OFFLINE_COLOR = "ist jetzt |cffff0000offline|r !"

-- Errors frame
L_ERRORFRAME_L = "Klick um Fehler anzuzeigen."

-- Bags
L_BAG_BANK = "Bank"
L_BAG_NO_SLOTS = "Kann keine weiteren Taschenplätze kaufen!"
L_BAG_COSTS = "Kosten: %.2f Gold"
L_BAG_BUY_SLOTS = "Kaufe neuen Platz mit /bags purchase yes"
L_BAG_OPEN_BANK = "Du musst erst das Bankfach öffnen."
L_BAG_SORT = "Sortiert deine Taschen oder die Bank, falls geöffnet."
L_BAG_STACK = "Stapelt Items neu in deinen Taschen und der Bank, falls geöffnet."
L_BAG_BUY_BANKS_SLOT = "Kaufe Bankplatz (Bank muss geöffnet sein)."
L_BAG_SORT_MENU = "Sortieren"
L_BAG_SORT_SPECIAL = "Sortieren Spezialtasche"
L_BAG_STACK_MENU = "Stapeln"
L_BAG_STACK_SPECIAL = "Stapeln Spezialtasche"
L_BAG_SHOW_BAGS = "Zeige Taschen"
L_BAG_SORTING_BAGS = "Sortieren abgeschlossen."
L_BAG_NOTHING_SORT = "Nichts zu sortieren."
L_BAG_BAGS_BIDS = "Benutze Taschen: "
L_BAG_STACK_END = "Neu stapeln abgeschlossen."
L_BAG_RIGHT_CLICK_SEARCH = "Rechtsklick um zu suchen"

-- Grab mail
L_MAIL_STOPPED = "Angehalten, Inventar ist voll."
L_MAIL_UNIQUE = "Angehalten, dieses einzigartiges Item befindet sich bereits in der Tasche oder auf der Bank."
L_MAIL_COMPLETE = "Alles Fertig."
L_MAIL_NEED = "Benötige einen Briefkasten."
L_MAIL_MESSAGES = "nachrichten"

-- Loot
L_LOOT_RANDOM = "Zufälliger Spieler"
L_LOOT_SELF = "Selbst nehmen"
L_LOOT_UNKNOWN = "Unbekannt"
L_LOOT_FISH = "Angeln"
L_LOOT_MONSTER = ">> Beute von "
L_LOOT_CHEST = ">> Beute aus Kiste"
L_LOOT_ANNOUNCE = "Ansagen"
L_LOOT_TO_RAID = "  schlachtzug"
L_LOOT_TO_PARTY = "  gruppe"
L_LOOT_TO_GUILD = "  gilde"
L_LOOT_TO_SAY = "  sagen"
L_LOOT_CANNOT = "Kann nicht würfeln"

-- LitePanels AFK module
L_PANELS_AFK = "Du bist AFK!"
L_PANELS_AFK_RCLICK = "Rechts-Klick zum Verstecken."
L_PANELS_AFK_LCLICK = "Links-Klick um zurück zu gehen."

-- Cooldowns
L_COOLDOWNS = "Abklingzeit: "

-- Autoinvite
L_INVITE_ENABLE = "Autoinvite AN: "
L_INVITE_DISABLE = "Autoinvite AUS"

-- Bind key
L_BIND_SAVED = "Alle Tastenbelegungen wurden gespeichert."
L_BIND_DISCARD = "Alle grade neu belegten Tastenbelegungen wurden verworfen."
L_BIND_INSTRUCT = "Bewege deine Maus über einen Aktionsbutton um ihn mit einem Hotkey zu belegen. Drücke Escape oder Rechte Maustaste um die aktuelle Tastenbelegeung des Buttons zu löschen."
L_BIND_CLEARED = "Alle Tastaturbelegungen gelöscht für"
L_BIND_BINDING = "Belegung"
L_BIND_KEY = "Taste"
L_BIND_NO_SET = "Keine Tastaturbelegung festgelegt"

-- Talent spec
L_PLANNER_DEATHKNIGHT_1 = "Blut"
L_PLANNER_DEATHKNIGHT_2 = "Frost"
L_PLANNER_DEATHKNIGHT_3 = "Unheilig"
L_PLANNER_DRUID_1 = "Gleichgewicht"
L_PLANNER_DRUID_2 = "Wildheit"
L_PLANNER_DRUID_3 = "Wätchter"
L_PLANNER_DRUID_4 = "Wiederherstellung"
L_PLANNER_HUNTER_1 = "Tierherrschaft"
L_PLANNER_HUNTER_2 = "Treffsicherheit"
L_PLANNER_HUNTER_3 = "Überleben"
L_PLANNER_MAGE_1 = "Arkan"
L_PLANNER_MAGE_2 = "Feuer"
L_PLANNER_MAGE_3 = "Frost"
L_PLANNER_MONK_1 = "Braumeister"
L_PLANNER_MONK_2 = "Nebelwirker"
L_PLANNER_MONK_3 = "Windläufer"
L_PLANNER_PALADIN_1 = "Heilig"
L_PLANNER_PALADIN_2 = "Schutz"
L_PLANNER_PALADIN_3 = "Vergeltung"
L_PLANNER_PRIEST_1 = "Disziplin"
L_PLANNER_PRIEST_2 = "Heilig"
L_PLANNER_PRIEST_3 = "Schatten"
L_PLANNER_ROGUE_1 = "Meucheln"
L_PLANNER_ROGUE_2 = "Kampf"
L_PLANNER_ROGUE_3 = "Täuschung"
L_PLANNER_SHAMAN_1 = "Elementar"
L_PLANNER_SHAMAN_2 = "Verstärkung"
L_PLANNER_SHAMAN_3 = "Wiederherstellung"
L_PLANNER_WARLOCK_1 = "Gebrechen"
L_PLANNER_WARLOCK_2 = "Dämonologie"
L_PLANNER_WARLOCK_3 = "Zerstörung"
L_PLANNER_WARRIOR_1 = "Waffen"
L_PLANNER_WARRIOR_2 = "Furor"
L_PLANNER_WARRIOR_3 = "Schutz"

-- BG stats
L_DATATEXT_BASESASSAULTED = "Basen angegriffen:"
L_DATATEXT_BASESDEFENDED = "Basen verteidigt:"
L_DATATEXT_TOWERSASSAULTED = "Türme angegriffen:"
L_DATATEXT_TOWERSDEFENDED = "Türme verteidigt:"
L_DATATEXT_FLAGSCAPTURED = "Flaggen eingenommen:"
L_DATATEXT_FLAGSRETURNED = "Flaggen zurückgebracht:"
L_DATATEXT_GRAVEYARDSASSAULTED = "Friedhöfe angegriffen:"
L_DATATEXT_GRAVEYARDSDEFENDED = "Friedhöfe verteidigt:"
L_DATATEXT_DEMOLISHERSDESTROYED = "Verwüster zerstört:"
L_DATATEXT_GATESDESTROYED = "Tore zerstört:"
L_DATATEXT_CONTROL = " unter Kontrolle:"

-- Info text
L_INFO_ERRORS = "Noch keine Fehler."
L_INFO_INVITE = "Gruppeneinladung akzeptiert von: "
L_INFO_DUEL = "Duellanfrage Ignoriert von: "
L_INFO_PET_DUEL = "Declined pet duel request from: " -- Needs review
L_INFO_DISBAND = "Löse Gruppe auf..."
L_INFO_SETTINGS_DBM = "Gebe /settings dbm ein, um DBM Einstellungen zu laden."
L_INFO_SETTINGS_DXE = "Gebe /settings dxe ein, um DXE Einstellungen zu laden."
L_INFO_SETTINGS_MSBT = "Gebe /settings msbt ein, um die MSBT Einstellungen zu laden."
L_INFO_SETTINGS_SKADA = "Gebe /settings skada ein, um die Skada Einstellungen zu laden."
L_INFO_SETTINGS_ALL = "Gebe /settings all ein, um die Einstellungen für alle unterstützten AddOns zu laden."
L_INFO_NOT_INSTALLED = " ist nicht installiert."
L_INFO_SKIN_DISABLED1 = "Stilisierung für "
L_INFO_SKIN_DISABLED2 = " ist ausgeschaltet."

-- Popups
L_POPUP_INSTALLUI = "Dies ist Ihre erste Benutzung von ShestakUI mit diesem Charakter. Um das Interface zu konfigurieren, wird das UI nun neugeladen."
L_POPUP_RESETUI = "Sind Sie sich sicher, dass Sie die Einstellungen von ShestakUI zurückgesetzen wollen?"
L_POPUP_RESETSTATS = "Bist du sicher das du die Gold und verbrachte Zeit Statistik zurücksetzen möchtest?"
L_POPUP_SWITCH_RAID = "Es sind 2 Raidlayouts aktiviert, bitte wählen Sie eines davon aus."
L_POPUP_DISBAND_RAID = "Bist du dir sicher, dass du die Gruppe auflösen möchtest?"
L_POPUP_DISABLEUI = "ShestakUI funktioniert nicht mit deiner Auflösung, möchtest du ShestakUI ausschalten? (Drücke Abbrechen, falls du eine andere Auflösung testen willst)"
L_POPUP_SETTINGS_ALL = "Einstellungen für alle AddOns übernehmen? (DBM/DXE, Skada und MSBT)"
L_POPUP_SETTINGS_DBM = "Die Position der DBM Elemente muss verändert werden."
L_POPUP_SETTINGS_DXE = "Die Position der DXE Elemente muss verändert werden."
L_POPUP_SETTINGS_BW = "Die Position der BigWigs Elemente muss verändert werden."
L_POPUP_ARMORY = "Waffenkammer"

-- Welcome message
L_WELCOME_LINE_1 = "Willkommen bei ShestakUI "
L_WELCOME_LINE_2_1 = "Gebe /cfg ein um das Interface zu konfigurieren, oder besuche http://shestak.org"
L_WELCOME_LINE_2_2 = "für weitere Informationen."

-- Combat text
L_COMBATTEXT_KILLING_BLOW = "Todesstoß"
L_COMBATTEXT_ALREADY_UNLOCKED = "Kampftext bereits freigegeben."
L_COMBATTEXT_ALREADY_LOCKED = "Kampftext bereits gespert."
L_COMBATTEXT_TEST_DISABLED = "Kampftext Testmodus deaktiviert."
L_COMBATTEXT_TEST_ENABLED = "Kampftext Testmodus aktiviert."
L_COMBATTEXT_TEST_USE_UNLOCK = "Gib '/xct' ein um die Kampftext Fenster freizugeben um sie verschieben und verändern zu können."
L_COMBATTEXT_TEST_USE_LOCK = "Gib '/xct' ein um den Kampftext Testmodus zu sperren."
L_COMBATTEXT_TEST_USE_TEST = "Gib '/xct' ein um den Kampftext Testmodus zu aktivieren."
L_COMBATTEXT_POPUP = "Um die Kampftext Fensterpositionen zu sichern muss das Interface neu geladen werden."
L_COMBATTEXT_UNSAVED = "Kampftext Fensterpositionen nicht gespeichert, vergiss nicht das Interface neu zu laden."
L_COMBATTEXT_UNLOCKED = "Kmpftext freigegeben."

-- LiteStats
L_STATS_ACC_PLAYED = "Gesamtspielzeit"
L_STATS_ADDED_JUNK = "Junk-Ausnahme hinzugefügt"
L_STATS_REMOVE_EXCEPTION = "Ausnahme hinzufügen/entfernen."
L_STATS_ALT = "ALT"
L_STATS_AUTO_REPAIR = "Automatisch reparieren"
L_STATS_GUILD_REPAIR = "Reparieren mithilfe der Gildenbank"
L_STATS_AUTO_SELL = "Junk automatisch verkaufen"
L_STATS_BANDWIDTH = "Bandbreite:"
L_STATS_DOWNLOAD = "Download:"
L_STATS_CLEARED_JUNK = "Junk-Ausnahmeliste gelöscht."
L_STATS_CLEAR_EXCEPTIONS = "Ausnahmenliste löschen."
L_STATS_WORLD_MAP = "Klicken, zum Öffnen der World-Map."
L_STATS_CURRENT_XP = "Aktuell/Max XP"
L_STATS_MEMORY_USAGE = "Standard UI Speicherausnutzung:"
L_STATS_GARBAGE_COLLECTED = "Abfall zusammengefasst"
L_STATS_CHANGE_SORTING = "(Gilde) Rechts-Klick, zum Ändern der Sortierung und Umschalt-Rechts-Klick zum Umkehren der Reihenfolge."
L_STATS_HIDDEN = "Versteckt"
L_STATS_VIEW_NOTES = "Halte die ALT-Taste gedrückt, zum Anzeigen der Ränge, Notizen und Offizier Notizen."
L_STATS_HR = "std"
L_STATS_INF = "unend"
L_STATS_ALREADY_EXCEPTIONS = "ist bereits in der Ausnahmeliste."
L_STATS_NOT_JUNK = "ist kein Junk."
L_STATS_ITEMLINK = "itemlink"
L_STATS_JUNK_EXCEPTIONS = "Junk-Ausnahmen"
L_STATS_JUNK_LIST = "Junk-Liste"
L_STATS_JUNK_PROFIT = "Junk-Gewinn"
L_STATS_KILLS = "G"
L_STATS_OPEN_CALENDAR = "Links-Klick, zum Öffnen des Kalenders (/cal)."
L_STATS_OPEN_CHARACTER = "Links-Klick, zum Öffnen des Charakterfensters."
L_STATS_OPEN_CURRENCY = "Links-Klick, zum Öffnen des Abzeichen-Fensters."
L_STATS_OPEN_TALENT = "Links-Klick, zum Öffnen des Talentfensters."
L_STATS_XP_RATE = "Level XP-Rate"
L_STATS_IGNORED_ITEMS = "Zeige die aktuell ignorierten Gegenstände."
L_STATS_TOGGLE_TIME = "Lokal/Realm & 24-Stunden-Modus können in den Einstellungen der Uhr gewechselt werden."
L_STATS_LOCATION = "Standort/Koordinaten"
L_STATS_MEMORY = "Speicher"
L_STATS_ON = "AN"
L_STATS_OTHER_OPTIONS = "Weitere Einstellungen können in %s konfiguriert werden"
L_STATS_PLAYED_LEVEL = "Auf diesem Level gespielt"
L_STATS_PLAYED_SESSION = "Diese Sitzung gespielt"
L_STATS_PLAYED_TOTAL = "Gesamt gespielt"
L_STATS_QUEST = "Q"
L_STATS_QUESTS_TO = "Quests/Getötet bis %s"
L_STATS_REMAINING_XP = "Verbleibende XP"
L_STATS_REMOVED_JUNK = "Junk-Ausnahme entfernt"
L_STATS_RESTED_XP = "Erholte XP"
L_STATS_RC_COLLECTS_GARBAGE = "Rechts-Klick sammelt Lua-Abfall."
L_STATS_RC_TIME_MANAGER = "Rechts-Klick, um die Einstellungen der Uhr anzuzeigen."
L_STATS_RC_EXPERIENCE = "Rechts-Klick, zum Wechseln zwischen Erfahrung, gespielte Zeit und Fraktionsüberwachung."
L_STATS_RC_AUTO_REPAIRING = "Rechts-Klick, zum Ein- oder Ausschalten des automatischen Reparieren."
L_STATS_RC_AUTO_SELLING = "Rechts-Klick, zum Ein- oder Ausschalten des automatischen Verkaufen."
L_STATS_RC_TALENT = "Rechts-Klick, zum Wechseln Deiner Talentspezialisierung."
L_STATS_SERVER_GOLD = "Server Gold"
L_STATS_SESSION_GAIN = "Sitzung - Gewinn/Verlust"
L_STATS_SESSION_XP = "Sitzung - XP Rate"
L_STATS_INSERTS_COORDS = "Umschalt-Klick auf das Standort/Koordination Modul, zum Einfügen Deiner aktuellen Koordinaten in den Chat."
L_STATS_EQUIPMENT_CHANGER = "Umschalt-Klick oder Mittel-Klick für den Ausrüstungsmanager."
L_STATS_SORTING_BY = "Sortieren nach"
L_STATS_TIPS = "Tipps:"
L_STATS_TOTAL = "Gesamt"
L_STATS_TOTAL_MEMORY_USAGE = "Gesamte Speicherausnutzung:"
L_STATS_NOT_TO_SELL = "Verwende /junk zum Konfigurieren der Gegenstände, die nicht verkauft werden sollen."
L_STATS_WATCH_CURRENCY = "Bereits gesehene Gegenstände aus dem Abzeichen-Fenster werden im Tooltip angezeigt."
L_STATS_WATCH_FACTIONS = "Überwache Fraktionen aus dem Ruffenster."
L_STATS_TOOLTIP_TIME_PLAYED = "Wenn das max. Level erreicht ist, wird das Tooltip die gespielte Zeit für den Account anzeigen."
L_STATS_TOOLTIP_EXPERIENCE = "Wenn unter dem max. Level, wird ein Tooltip mit weiteren Details angezeigt."

-- Slash commands
L_SLASHCMD_HELP = {
	"Available slash commands:",
	"/rl - Reload interface.",
	"/rc - Activates a ready check.",
	"/gm - Opens GM frame.",
	"/dis ADDON_NAME - Disable Addon.",
	"/en ADDON_NAME - Enable Addon.",
	"/rd - Disband party or raid.",
	"/toraid - Convert to party or raid.",
	"/teleport - Teleportation from random dungeon.",
	"/luaerror ON|OFF - Toggles display of lua errors.",
	"/spec, /ss - Switches between talent spec's.",
	"/heal - Switches to 'Heal' layout.",
	"/dps - Switches to 'DPS' layout.",
	"/frame - Description is not ready.",
	"/farmmode - Increase the size of the minimap.",
	"/moveui - Allows the movement of interface elements.",
	"/resetui - Resets general settings to default.",
	"/resetuf - Resets the unit frames to their default position.",
	"/resetconfig - Resets ShestakUI_Config settings.",
	"/resetstats - Resets the statistics of gold and time spent.",
	"/settings ADDON_NAME - Applies settings to msbt, dbm, skada, or all addons.",
	"/ls, /litestats - Help for LiteStats.",
	"/bags - Managing for bags.",
	"/xct - Manage the combat text.",
	"/raidcd - Raid cooldown test.",
	"/enemycd - Enemy cooldown test.",
	"/pulsecd - Self cooldown pulse test.",
	"/threat - Threat meter test.",
	"/tt - Whisper target.",
	"/ainv - Enables automatic invitation.",
	"/testuf - Unit frame test.",
	"/cfg - Opens interface settings.",
}

-- ExploreMap
L_EXTRA_EXPLORED = "Explored: " -- Needs review
L_EXTRA_ZONEACHID = {
	-- http://www.wowhead.com/achievement=*
	-- e(X)plore achievement id, (Q)uest achievement id
	["Östliche Königreiche"]			= {X =   42, A =    0, H =    0},
	["Kalimdor"]						= {X =   43, A =    0, H =    0},
	["Scherbenwelt"]					= {X =   44, A =    0, H =    0},
	["Nordend"]							= {X =   45, A =    0, H =    0},
	["Pandaria"]						= {X = 6974, A =    0, H =    0},
	["Weltkarte"]						= {X =  nil, A =    0, H =    0},
	-- Eastern Kingdoms
	["Arathihochland"]					= {X =  761, A = 4896, H = 4896},
	["Ödland"]							= {X =  765, A = 4900, H = 4900},
	["Verwüstete Lande"]				= {X =  766, A = 4909, H = 4909},
	["Brennende Steppe"]				= {X =  775, A = 4901, H = 4901},
	["Gebirgspass der Totenwinde"]		= {X =  777, A =    0, H =    0},
	["Dun Morogh"]						= {X =  627, A =    0, H =    0},
	["Dämmerwald"]						= {X =  778, A = 4903, H =    0},
	["Östliche Pestländer"]				= {X =  771, A = 4892, H = 4892},
	["Wald von Elwynn"]					= {X =  776, A =    0, H =    0},
	["Immersangwald"]					= {X =  859, A =    0, H =    0},
	["Geisterlande"]					= {X =  858, A =    0, H = 4908},
	["Vorgebirge des Hügellands"]		= {X =  772, A =    0, H = 4895},
	["Loch Modan"]						= {X =  779, A = 4899, H =    0},
	["Nördliches Schlingendorntal"]		= {X =  781, A = 4906, H = 4906},
	["Rotkammgebirge"]					= {X =  780, A = 4902, H =    0},
	["Sengende Schlucht"]				= {X =  774, A = 4910, H = 4910},
	["Silberwald"]						= {X =  769, A =    0, H = 4894},
	["Sümpfe des Elends"]				= {X =  782, A = 4904, H = 4904},
	["Das Schlingendornkap"]			= {X = 4995, A = 4905, H = 4905},
	["Hinterland"]						= {X =  773, A = 4897, H = 4897},
	["Tirisfal"]						= {X =  768, A =    0, H =    0},
	["Westliche Pestländer"]			= {X =  770, A = 4893, H = 4893},
	["Westfall"]						= {X =  802, A = 4903, H =    0},
	["Sumpfland"]						= {X =  841, A = 4899, H =    0},
	-- Kalimdor
	["Eschental"]						= {X =  845, A = 4925, H = 4976},
	["Azshara"]							= {X =  852, A =    0, H = 4927},
	["Azurmythosinsel"]					= {X =  860, A =    0, H =    0},
	["Blutmythosinsel"]					= {X =  861, A = 4926, H = 4926},
	["Dunkelküste"]						= {X =  844, A = 4928, H = 4928},
	["Desolace"]						= {X =  848, A = 4930, H = 4930},
	["Durotar"]							= {X =  728, A =    0, H =    0},
	["Düstermarschen"]					= {X =  850, A = 4929, H = 4978},
	["Teufelswald"]						= {X =  853, A = 4931, H = 4931},
	["Feralas"]							= {X =  849, A = 4932, H = 4979},
	["Mondlichtung"]					= {X =  855, A =    0, H =    0},
	["Mulgore"]							= {X =  736, A =    0, H =    0},
	["Nördliches Brachland"]			= {X =  750, A =    0, H = 4933},
	["Silithus"]						= {X =  856, A = 4934, H = 4934},
	["Südliches Brachland"]				= {X = 4996, A = 4937, H = 4981},
	["Steinkrallengebirge"]				= {X =  847, A = 4936, H = 4980},
	["Tanaris"]							= {X =  851, A = 4935, H = 4935},
	["Teldrassil"]						= {X =  842, A =    0, H =    0},
	["Tausend Nadeln"]					= {X =  846, A = 4938, H = 4938},
	["Krater von Un'Goro"]				= {X =  854, A = 4939, H = 4939},
	["Winterquell"]						= {X =  857, A = 4940, H = 4940},
	-- Outland
	["Schergrat"]						= {X =  865, A = 1193, H = 1193},
	["Höllenfeuerhalbinsel"]			= {X =  862, A = 1189, H = 1271},
	["Nagrand"]							= {X =  866, A = 1192, H = 1273},
	["Nethersturm"]						= {X =  843, A = 1194, H = 1194},
	["Schattenmondtal"]					= {X =  864, A = 1195, H = 1195},
	["Wälder von Terokkar"]				= {X =  867, A = 1191, H = 1272},
	["Zangarmarschen"]					= {X =  863, A = 1190, H = 1190},
	-- Northrend
	["Boreanische Tundra"]				= {X = 1264, A =   33, H = 1358},
	["Kristallsangwald"]				= {X = 1457, A =    0, H =    0},
	["Drachenöde"]						= {X = 1265, A =   35, H = 1356},
	["Grizzlyhügel"]					= {X = 1266, A =   37, H = 1357},
	["Der Heulende Fjord"]				= {X = 1263, A =   34, H = 1356},
	["Eiskrone"]						= {X = 1270, A =   40, H =   40},
	["Sholazarbecken"]					= {X = 1268, A =   39, H =   39},
	["Die Sturmgipfel"]					= {X = 1269, A =   38, H =   38},
	["Zul'Drak"]						= {X = 1267, A =   36, H =   36},
	-- Cataclysm
	["Tiefenheim"]						= {X = 4864, A = 4871, H = 4871},
	["Hyjal"]							= {X = 4863, A = 4870, H = 4870},
	["Schattenhochland"]				= {X = 4866, A = 4873, H = 5501},
	["Uldum"]							= {X = 4865, A = 4872, H = 4872},
	["Vashj'ir"]						= {X = 4825, A = 4869, H = 4982},
	["Tol Barad"]						= {X =    0, A = 4874, H = 4874},
	["Halbinsel von Tol Barad"]			= {X =    0, A = 4874, H = 4874},
	-- Pandaria
	["Der Jadewald"]					= {X = 6351, A = 6300, H = 6534},
	["Tal der Vier Winde"]				= {X = 6969, A = 6301, H = 6301},
	--["Krasarangwildnis"]				= {X = 6975, A = 6535, H = 6536},
	["Kun-Lai-Gipfel"]					= {X = 6976, A = 6537, H = 6538},
	["Tonlongsteppe"]					= {X = 6977, A = 6539, H = 6539},
	["Schreckensöde"]					= {X = 6978, A = 6540, H = 6540},
	["Tal der Ewigen Blüten"]			= {X = 6979, A =    0, H =    0},
	-- Boolean Explores
	["Insel von Quel'Danas"]			= {X =  868, A =    0, H =    0},
	["Ahn'Qiraj: Das Gefallene Königreich"] = {X =    0, A =    0, H =    0},
	["Tausendwintersee"]				= {X =    0, A =    0, H =    0},
}