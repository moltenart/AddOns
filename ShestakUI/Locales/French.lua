﻿local T, C, L = unpack(select(2, ...))
if T.client ~= "frFR" then return end

----------------------------------------------------------------------------------------
--	Localization for frFR client(Thanks to Cranan and Puree for the translation)
----------------------------------------------------------------------------------------
-- Announce your Lightwell
L_ANNOUNCE_LA_USE = " a utilisé mon Puits de lumière. "
L_ANNOUNCE_LA_CHARGE = " charge(s))"
L_ANNOUNCE_LA_USELESS = " a utilisé mon Puits de lumière, pour rien. "
L_ANNOUNCE_LA_STOP = "Vous n'aviez pas besoin d'utiliser le Puits de lumière."
L_ANNOUNCE_LA_PLACED = "Puits de lumière placé. "
L_ANNOUNCE_LA_CHARGES = " charges."

-- Announce flasks and food
L_ANNOUNCE_FF_NOFOOD = "No Food: " -- Needs review
L_ANNOUNCE_FF_NOFLASK = "No Flask: " -- Needs review
L_ANNOUNCE_FF_ALLBUFFED = "All Buffed!" -- Needs review
L_ANNOUNCE_FF_CHECK_BUTTON = "Check food and flask" -- Needs review

-- Says thanks for some spells
L_ANNOUNCE_SS_THANKS = "Thanks for " -- Needs review
L_ANNOUNCE_SS_RECEIVED = " received from " -- Needs review

-- Tooltip
L_TOOLTIP_NO_TALENT = "Aucun talent"
L_TOOLTIP_LOADING = "Chargement..."
L_TOOLTIP_ACH_STATUS = "Votre statut :"
L_TOOLTIP_ACH_COMPLETE = "Votre statut : Oui "
L_TOOLTIP_ACH_INCOMPLETE = "Votre statut : Non terminé"
L_TOOLTIP_SPELL_ID = "ID du sort :"
L_TOOLTIP_ITEM_ID = "ID de l'objet :"
L_TOOLTIP_WHO_TARGET = "Qui on cible"
L_TOOLTIP_ITEM_COUNT = "Objets possédés :"

-- Misc
L_MISC_UNDRESS = "Déshabillé"
L_MISC_DRINKING = " est entrain de boire."
L_MISC_BUY_STACK = "Alt-Click pour acheter une pile d'objet"
L_MISC_ONECLICK_BUYOUT = "Shift-Click pour acheter l'objet sélectionné sans confirmation"
L_MISC_ONECLICK_BID = "Shift-Click pour enchérir sur l'objet sélectionné sans confirmation"
L_MISC_UI_OUTDATED = "Une version plus récente de ShestakUI est disponible. Vous pouvez télécharger la dernière version sur www.shestak.org"
L_MISC_HEADER_MARK = "Mouseover Raid Icons" -- Needs review
L_MISC_BINDER_OPEN = "Mouse Bindings" -- Needs review

-- Raid Utility
L_RAID_UTIL_DISBAND = "Fin du raid"

-- Zone name
L_ZONE_WINTERGRASP = "Joug-d'hiver"
L_ZONE_TOLBARAD = "Tol Barad"
L_ZONE_TOLBARADPEN = "Péninsule de Tol Barad"
L_ZONE_ARATHIBASIN = "Bassin d'Arathi"
L_ZONE_GILNEAS = "La bataille de Gilnéas"

-- WatchFrame Wowhead link
L_WATCH_WOWHEAD_LINK = "Lien wowhead"

-- Toggle Menu
L_TOGGLE_ADDON = "Addon "
L_TOGGLE_ADDONS = " addons"
L_TOGGLE_EXPAND = "Permet d'ajouter des barres "
L_TOGGLE_COLLAPSE = "Permet de réduire les barres "
L_TOGGLE_RCLICK = "Faites un clic droit pour activer ou désactiver "
L_TOGGLE_LCLICK = "Clic gauche pour basculer la fenêtre "
L_TOGGLE_RELOAD = " (recharger votre UI)"

-- UnitFrame
L_UF_GHOST = "Spectre"
L_UF_DEAD = "Mort"
L_UF_OFFLINE = "Hors ligne"
L_UF_MANA = "Peu de mana"
L_UF_TRINKET_READY = "Bijou Prêt : "
L_UF_TRINKET_USED = "Bijou Utilisé : "
L_UF_WOTF_USED = "Volonté des Réprouvés utilisé : "

-- Map
L_MAP_CURSOR = "Curseur : "
L_MAP_BOUNDS = "L'extérieur de la carte !"

-- Minimap
L_MINIMAP_CALENDAR = "Calendrier"

-- Addons list
L_ALOAD_RL = "Recharger UI"
L_ALOAD_DEP = "Dépendances: "
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
L_CHAT_WHISPER = "De"
L_CHAT_BN_WHISPER = "De"
L_CHAT_AFK = "[AFK]"
L_CHAT_DND = "[DND]"
L_CHAT_GM = "[GM]"
L_CHAT_GUILD = "G"
L_CHAT_PARTY = "P"
L_CHAT_PARTY_LEADER = "PL"
L_CHAT_RAID = "R"
L_CHAT_RAID_LEADER = "RL"
L_CHAT_RAID_WARNING = "AR"
L_CHAT_BATTLEGROUND = "CB"
L_CHAT_BATTLEGROUND_LEADER = "CDB"
L_CHAT_OFFICER = "O"
L_CHAT_PET_BATTLE = "PB" -- Needs review
L_CHAT_COME_ONLINE = "vient de se connecter."
L_CHAT_GONE_OFFLINE = "vient de se déconnecter."
L_CHAT_COME_ONLINE_COLOR = "est maintenant |cff298F00connecté|r !"
L_CHAT_GONE_OFFLINE_COLOR = "est maintenant |cffff0000déconnecté|r !"

-- Errors frame
L_ERRORFRAME_L = "Clic gauche pour afficher les erreurs."

-- Bags
L_BAG_BANK = "Banque"
L_BAG_NO_SLOTS = "Vous ne pouvez pas acheter plus d'emplacement !"
L_BAG_COSTS = "Prix: %.2f or"
L_BAG_BUY_SLOTS = "Acheter un nouvel emplacement avec /bags"
L_BAG_OPEN_BANK = "Vous devez d'abord ouvrir votre banque."
L_BAG_SORT = "Trier vos sacs ou votre banque, si elle est ouverte."
L_BAG_STACK = "Empile vos objets dans votre sac ou en banque, si elle est ouverte."
L_BAG_BUY_BANKS_SLOT = "Acheter une place à la banque (nécessite d'avoir votre banque ouverte)."
L_BAG_SORT_MENU = "Trier"
L_BAG_SORT_SPECIAL = "Tri personnalisé"
L_BAG_STACK_MENU = "Empiler"
L_BAG_STACK_SPECIAL = "Empilage personnalisé"
L_BAG_SHOW_BAGS = "Montrer les sacs"
L_BAG_SORTING_BAGS = "Tri terminé."
L_BAG_NOTHING_SORT = "Rien à trier."
L_BAG_BAGS_BIDS = "Emplacements utilisés: "
L_BAG_STACK_END = "Empilage terminé."
L_BAG_RIGHT_CLICK_SEARCH = "Clic droit pour rechercher"

-- Grab mail
L_MAIL_STOPPED = "Inventaire plein."
L_MAIL_UNIQUE = "Arrêt. Un objet unique a été trouvé dans le sac ou à la banque."
L_MAIL_COMPLETE = "Terminé."
L_MAIL_NEED = "Vous avez besoin d'une boîte aux lettres."
L_MAIL_MESSAGES = "messages"

-- Loot
L_LOOT_RANDOM = "Joueur aléatoire"
L_LOOT_SELF = "Procurez-vous un"
L_LOOT_UNKNOWN = "Inconnu"
L_LOOT_FISH = "Pêche"
L_LOOT_MONSTER = ">> Extraction avec "
L_LOOT_CHEST = ">> Extraction du tronc"
L_LOOT_ANNOUNCE = "Déclarer"
L_LOOT_TO_RAID = "  raid"
L_LOOT_TO_PARTY = "  groupe"
L_LOOT_TO_GUILD = "  corps"
L_LOOT_TO_SAY = "  dire"
L_LOOT_CANNOT = "Impossible de lancer les dés"

-- LitePanels AFK module
L_PANELS_AFK = "Tu es AFK !"
L_PANELS_AFK_RCLICK = "Clic droit pour cacher."
L_PANELS_AFK_LCLICK = "Clic gauche pour revenir."

-- Cooldowns
L_COOLDOWNS = "Temps de recharge : "

-- Autoinvite
L_INVITE_ENABLE = "Invitation automatique activée : "
L_INVITE_DISABLE = "Invitation automatique désactivée"

-- Bind key
L_BIND_SAVED = "Vos assignations de touches ont été sauvegardées."
L_BIND_DISCARD = "Vos nouvelles assignations de touches n'ont été sauvegardées."
L_BIND_INSTRUCT = "Passez votre souris sur la barre d'action pour l'assigner. Appuyez sur la touche échappe ou faites un clic droit pour effacer le bouton d'action en cours."
L_BIND_CLEARED = "Tous les raccourcis ont été réinitialisés pour"
L_BIND_BINDING = "Raccourcis"
L_BIND_KEY = "Touche"
L_BIND_NO_SET = "Pas encore de raccourcis"

-- Talent spec
L_PLANNER_DEATHKNIGHT_1 = "Sang"
L_PLANNER_DEATHKNIGHT_2 = "Givre"
L_PLANNER_DEATHKNIGHT_3 = "Impie"
L_PLANNER_DRUID_1 = "Équilibre"
L_PLANNER_DRUID_2 = "Farouche"
L_PLANNER_DRUID_3 = "Gardien"
L_PLANNER_DRUID_4 = "Restauration"
L_PLANNER_HUNTER_1 = "Maîtrise des bêtes"
L_PLANNER_HUNTER_2 = "Précision"
L_PLANNER_HUNTER_3 = "Survie"
L_PLANNER_MAGE_1 = "Arcanes"
L_PLANNER_MAGE_2 = "Feu"
L_PLANNER_MAGE_3 = "Givre"
L_PLANNER_MONK_1 = "Maître brasseur"
L_PLANNER_MONK_2 = "Tisse-brume"
L_PLANNER_MONK_3 = "Marche-vent"
L_PLANNER_PALADIN_1 = "Sacré"
L_PLANNER_PALADIN_2 = "Protection"
L_PLANNER_PALADIN_3 = "Vindicte"
L_PLANNER_PRIEST_1 = "Discipline"
L_PLANNER_PRIEST_2 = "Sacré"
L_PLANNER_PRIEST_3 = "Ombre"
L_PLANNER_ROGUE_1 = "Assassinat"
L_PLANNER_ROGUE_2 = "Combat"
L_PLANNER_ROGUE_3 = "Finesse"
L_PLANNER_SHAMAN_1 = "Élémentaire"
L_PLANNER_SHAMAN_2 = "Amélioration"
L_PLANNER_SHAMAN_3 = "Restauration"
L_PLANNER_WARLOCK_1 = "Affliction"
L_PLANNER_WARLOCK_2 = "Démonologie"
L_PLANNER_WARLOCK_3 = "Destruction"
L_PLANNER_WARRIOR_1 = "Armes"
L_PLANNER_WARRIOR_2 = "Fureur"
L_PLANNER_WARRIOR_3 = "Protection"

-- BG stats
L_DATATEXT_BASESASSAULTED = "Bases Attaquées :"
L_DATATEXT_BASESDEFENDED = "Bases Défendues :"
L_DATATEXT_TOWERSASSAULTED = "Tours prises d'assaut :"
L_DATATEXT_TOWERSDEFENDED = "Tours Défendues :"
L_DATATEXT_FLAGSCAPTURED = "Drapeaux Capturés :"
L_DATATEXT_FLAGSRETURNED = "Drapeaux Récupérés :"
L_DATATEXT_GRAVEYARDSASSAULTED = "Cimetières Attaqués :"
L_DATATEXT_GRAVEYARDSDEFENDED = "Cimetières Défendus :"
L_DATATEXT_DEMOLISHERSDESTROYED = "Démolisseurs Détruits :"
L_DATATEXT_GATESDESTROYED = "Portes Détruites :"
L_DATATEXT_CONTROL = " sous contrôle :"

-- Info text
L_INFO_ERRORS = "Pas d'erreur pour le moment."
L_INFO_INVITE = "Invitation acceptée par : "
L_INFO_DUEL = "Duel rejetée par : "
L_INFO_PET_DUEL = "Declined pet duel request from: " -- Needs review
L_INFO_DISBAND = "Groupe dissous..."
L_INFO_SETTINGS_DBM = "Taper /settings dbm, pour configurer DBM automatiquement."
L_INFO_SETTINGS_DXE = "Taper /settings dxe, pour configurer DXE automatiquement."
L_INFO_SETTINGS_MSBT = "Taper /settings msbt, pour configurer msbt automatiquement."
L_INFO_SETTINGS_SKADA = "Taper /settings skada, pour configurer skada automatiquement."
L_INFO_SETTINGS_ALL = "Taper /settings all, pour tout configurer automatiquement."
L_INFO_NOT_INSTALLED = " n'est pas installé."
L_INFO_SKIN_DISABLED1 = "Personnalisation pour "
L_INFO_SKIN_DISABLED2 = " est désactivé."

-- Popups
L_POPUP_INSTALLUI = "Première utilisation de ShestakUI avec ce personnage. Vous devez recharger l'interface utilisateur pour le configurer."
L_POPUP_RESETUI = "Etes-vous sûr de vouloir réinitialiser ShestakUI ?"
L_POPUP_RESETSTATS = "Réinitialiser les statistiques pour le temps passé dans le jeu ?"
L_POPUP_SWITCH_RAID = "2 modèles de raid sont activés, merci d'en choisir un."
L_POPUP_DISBAND_RAID = "Etes-vous sûr de vouloir dissoudre le groupe ?"
L_POPUP_DISABLEUI = "ShestakUI ne fonctionne pas avec cette résolution, voulez-vous désactiver ShestakUI ? (Annuler si vous souhaitez essayer une autre résolution)"
L_POPUP_SETTINGS_ALL = "Voulez-vous appliquer les modifications pour tout ? (DBM/DXE, Skada et MSBT)"
L_POPUP_SETTINGS_DBM = "La position des éléments de DBM doit être changée."
L_POPUP_SETTINGS_DXE = "La position des éléments de DXE doit être changée."
L_POPUP_SETTINGS_BW = "La position des éléments de BigWigs doit être changée."
L_POPUP_ARMORY = "Armurerie"

-- Welcome message
L_WELCOME_LINE_1 = "Bienvenue sur ShestakUI "
L_WELCOME_LINE_2_1 = "Tapez /cfg pour configurer l'interface, ou visitez http://shestak.org"
L_WELCOME_LINE_2_2 = "plus d'informations"

-- Combat text
L_COMBATTEXT_KILLING_BLOW = "Coup Fatal"
L_COMBATTEXT_ALREADY_UNLOCKED = "Fenêtre des textes de combat déjà déverrouillée."
L_COMBATTEXT_ALREADY_LOCKED = "Fenêtre des textes de combat déjà verrouillée."
L_COMBATTEXT_TEST_DISABLED = "Mode test de la fenêtre des textes de combat désactivé."
L_COMBATTEXT_TEST_ENABLED = "Mode test de la fenêtre des textes de combat activé."
L_COMBATTEXT_TEST_USE_UNLOCK = "Tapez /xct unlock pour bouger et redimensionner la fenêtre des textes de combat."
L_COMBATTEXT_TEST_USE_LOCK = "Tapez /xct lock pour verrouiller la fenêtre des textes de combat."
L_COMBATTEXT_TEST_USE_TEST = "Tapez /xct test pour activer le mode test de la fenêtre des textes de combat."
L_COMBATTEXT_POPUP = "Pour sauvegardez vos modifications vous devez recharger l'interface."
L_COMBATTEXT_UNSAVED = "Position de la fenêtre des textes de combat non saugardez, n'oubliez pas de recharger l'interface."
L_COMBATTEXT_UNLOCKED = "Fenêtre des textes de combat déverrouillée."

-- LiteStats
L_STATS_ACC_PLAYED = "Temps de jeu total"
L_STATS_ADDED_JUNK = "Exception de l'objet ajouté"
L_STATS_REMOVE_EXCEPTION = "Ajouter / supprimer exception."
L_STATS_ALT = "ALT"
L_STATS_AUTO_REPAIR = "Réparation auto"
L_STATS_GUILD_REPAIR = "Réparation de guilde"
L_STATS_AUTO_SELL = "Vente automatique d'objet "
L_STATS_BANDWIDTH = "Bande passante:"
L_STATS_DOWNLOAD = "Téléchargement:"
L_STATS_CLEARED_JUNK = "Liste d'exceptions d'objet effacée."
L_STATS_CLEAR_EXCEPTIONS = "Effacer la liste d'exceptions."
L_STATS_WORLD_MAP = "Clic ouvre la carte du monde."
L_STATS_CURRENT_XP = "Actuel/Max XP"
L_STATS_MEMORY_USAGE = "Défaut Usage de la Mémoire UI:"
L_STATS_GARBAGE_COLLECTED = "Déchets ramassés"
L_STATS_CHANGE_SORTING = "(Guilde) clic-droit pour changer le tri, shift-clic droit pour inverser l'ordre."
L_STATS_HIDDEN = "Caché"
L_STATS_VIEW_NOTES = "touche alt pour afficher les rangs, des notes et des notes d'officer"
L_STATS_HR = "Par heure"
L_STATS_INF = "infini"
L_STATS_ALREADY_EXCEPTIONS = "est déjà dans la liste d'exceptions."
L_STATS_NOT_JUNK = "n'est pas un déchets"
L_STATS_ITEMLINK = "élément Lien"
L_STATS_JUNK_EXCEPTIONS = "Exceptions de camelote"
L_STATS_JUNK_LIST = "Liste de camelote"
L_STATS_JUNK_PROFIT = "Camelote profit"
L_STATS_KILLS = "Tuer"
L_STATS_OPEN_CALENDAR = "Clic-gauche ouvre le calendrier (/cal)."
L_STATS_OPEN_CHARACTER = "Clic-gauche ouvre l'onglet caractère."
L_STATS_OPEN_CURRENCY = "Clic-gauche ouvre l'onglet monnaie."
L_STATS_OPEN_TALENT = "Clic-gauche ouvre le cadre de talent."
L_STATS_XP_RATE = "Niveau taux de votre XP"
L_STATS_IGNORED_ITEMS = "Liste des articles pour l'instant ignoré."
L_STATS_TOGGLE_TIME = "Local/Royaume & mode 24 heures le temps peut être changé, dans la gestion des fenêtres de temps."
L_STATS_LOCATION = "Position/Coords"
L_STATS_MEMORY = "Mémoire"
L_STATS_ON = "ON"
L_STATS_OTHER_OPTIONS = "D'autres options peut être configuré dans"
L_STATS_PLAYED_LEVEL = "Joué à ce niveau"
L_STATS_PLAYED_SESSION = "Joué cette session"
L_STATS_PLAYED_TOTAL = "Joué au total"
L_STATS_QUEST = "Quête"
L_STATS_QUESTS_TO = "Quêtes/Tuer à %s"
L_STATS_REMAINING_XP = "Restants XP"
L_STATS_REMOVED_JUNK = "Exception de camelote enlevée"
L_STATS_RESTED_XP = "Repos XP"
L_STATS_RC_COLLECTS_GARBAGE = "Cliquez-droit sur Lua recueille les déchets."
L_STATS_RC_TIME_MANAGER = "Clic droit pour ouvrir la fenêtre de gestion du temps."
L_STATS_RC_EXPERIENCE = "Clic droit pour faire défiler l'expérience, le temps a joué, et la faction à observer."
L_STATS_RC_AUTO_REPAIRING = "Clic droit permet de basculer en réparation auto."
L_STATS_RC_AUTO_SELLING = "clic droit permet de basculer en Autovente"
L_STATS_RC_TALENT = "Clic droit permet de basculer votre spécialisation."
L_STATS_SERVER_GOLD = "Serveur d'or"
L_STATS_SESSION_GAIN = "Session Gain / perte"
L_STATS_SESSION_XP = "XP session taux"
L_STATS_INSERTS_COORDS = "Maj-clic sur l'emplacement ou coords insère le module de vos coords au chat"
L_STATS_EQUIPMENT_CHANGER = "Maj-clic ou clic-milieu sur le gestionnaire équipement."
L_STATS_SORTING_BY = "Tri par"
L_STATS_TIPS = "Conseils:"
L_STATS_TOTAL = "Total"
L_STATS_TOTAL_MEMORY_USAGE = "Utilisation de la mémoire totale:"
L_STATS_NOT_TO_SELL = "Utilise/inutile pour configurer les éléments à ne pas vendre."
L_STATS_WATCH_CURRENCY = "Consulté onglet monnaie articles se reflétera dans l'info bulle."
L_STATS_WATCH_FACTIONS = "Superviser les factions de l'onglet de Réputation."
L_STATS_TOOLTIP_TIME_PLAYED = "Quand au niveau max, une bulle d'aide sera affiché montrera le temps a joué est des détails pour le compte."
L_STATS_TOOLTIP_EXPERIENCE = "Quand au-dessous du niveau max, une bulle d'aide sera affiché avec les détails d'expérience."

-- Slash commands
L_SLASHCMD_HELP = {
	"Les commandes en ligne disponibles:",
	"/rl - Recharge l'interface.",
	"/rc - Lance un appel raid (ready check).",
	"/gm - Ouvre un ticket MJ.",
	"/dis ADDON_NAME - Désactive nom_addon.",
	"/en ADDON_NAME - Active nom_addon.",
	"/rd - Dissout le groupe ou raid.",
	"/toraid - Active le mode raid.",
	"/teleport - Téléportation dans le donjon aléatoire en cours.",
	"/luaerror ON|OFF - Active/Désactive l'affiche des erreurs LUA.",
	"/spec, /ss - Bascule d'une spécialisation talent à l'autre.",
	"/heal - Bascule vers l'interface 'Heal'.",
	"/dps - Bascule sur l'interface 'DPS'.",
	"/frame - Description is not ready.",
	"/farmmode - Agrandi la taille de la minimap.",
	"/moveui - Permet de déplacer des éléments de l'interface.",
	"/resetui - Remet les paramètres généraux à leurs valeurs par défaut.",
	"/resetuf - Remet les cadres d'unité à leur position par défaut.",
	"/resetconfig - Remet les paramètres ShestakUI_Config à leurs valeurs par défaut.",
	"/resetstats - Remet à zéro les statitisques or et temps passé en jeu.",
	"/settings ADDON_NAME - Applique les paramètres pour msbt, dbm, skada, ou à tous les addons.",
	"/ls, /litestats - Menu d'aide pour LiteStats.",
	"/bags - Menu d'aide pour les sacs.",
	"/xct - Menu d'aide pour le texte de combat.",
	"/raidcd - Lance un test du temps de recharge Raid.",
	"/enemycd - Lance un test du temps de recharge Ennemi.",
	"/pulsecd - Lance un test local de Cooldown pulse.",
	"/threat - Lance un test des barres de menace.",
	"/tt - Chuchote à la cible.",
	"/ainv - Active l'invitation automatique.",
	"/testuf - Lance un test des cadres d'unité.",
	"/cfg - Ouvre les paramètres de l'interface.",
}

-- ExploreMap
L_EXTRA_EXPLORED = "Explored: " -- Needs review
L_EXTRA_ZONEACHID = {
	-- http://www.wowhead.com/achievement=*
	-- e(X)plore achievement id, (Q)uest achievement id
	["Royaumes de l'est"]				= {X =   42, A =    0, H =    0},
	["Kalimdor"]						= {X =   43, A =    0, H =    0},
	["Outreterre"]						= {X =   44, A =    0, H =    0},
	["Norfendre"]						= {X =   45, A =    0, H =    0},
	["Pandarie"]						= {X = 6974, A =    0, H =    0},
	["Carte du monde"]					= {X =  nil, A =    0, H =    0},
	-- Eastern Kingdoms
	["Hautes-terres Arathies"]			= {X =  761, A = 4896, H = 4896},
	["Terres Ingrates"]					= {X =  765, A = 4900, H = 4900},
	["Terres Foudroyées"]				= {X =  766, A = 4909, H = 4909},
	["Steppes Ardentes"]				= {X =  775, A = 4901, H = 4901},
	["Défilé de Deuillevent"]			= {X =  777, A =    0, H =    0},
	["Dun Morogh"]						= {X =  627, A =    0, H =    0},
	["Bois de la Pénombre"]				= {X =  778, A = 4903, H =    0},
	["Maleterres de l’Est"]				= {X =  771, A = 4892, H = 4892},
	["Forêt d’Elwynn"]					= {X =  776, A =    0, H =    0},
	["Bois des Chants éternels"]		= {X =  859, A =    0, H =    0},
	["Les terres Fantômes"]				= {X =  858, A =    0, H = 4908},
	["Contreforts de Hautebrande"]		= {X =  772, A =    0, H = 4895},
	["Loch Modan"]						= {X =  779, A = 4899, H =    0},
	["Strangleronce septentrionale"]	= {X =  781, A = 4906, H = 4906},
	["Les Carmines"]					= {X =  780, A = 4902, H =    0},
	["Gorge des Vents brûlants"]		= {X =  774, A = 4910, H = 4910},
	["Forêt des Pins Argentés"]			= {X =  769, A =    0, H = 4894},
	["Marais des Chagrins"]				= {X =  782, A = 4904, H = 4904},
	["Cap Strangleronce"]				= {X = 4995, A = 4905, H = 4905},
	["Les Hinterlands"]					= {X =  773, A = 4897, H = 4897},
	["Clairières de Tirisfal"]			= {X =  768, A =    0, H =    0},
	["Maleterres de l’Ouest"]			= {X =  770, A = 4893, H = 4893},
	["Marche de l’Ouest"]				= {X =  802, A = 4903, H =    0},
	["Les Paluns"]						= {X =  841, A = 4899, H =    0},
	-- Kalimdor
	["Orneval"]							= {X =  845, A = 4925, H = 4976},
	["Azshara"]							= {X =  852, A =    0, H = 4927},
	["Île de Brume-Azur"]				= {X =  860, A =    0, H =    0},
	["Île de Brume-Sang"]				= {X =  861, A = 4926, H = 4926},
	["Sombrivage"]						= {X =  844, A = 4928, H = 4928},
	["Désolace"]						= {X =  848, A = 4930, H = 4930},
	["Durotar"]							= {X =  728, A =    0, H =    0},
	["Marécage d’Âprefange"]			= {X =  850, A = 4929, H = 4978},
	["Gangrebois"]						= {X =  853, A = 4931, H = 4931},
	["Féralas"]							= {X =  849, A = 4932, H = 4979},
	["Reflet-de-Lune"]					= {X =  855, A =    0, H =    0},
	["Mulgore"]							= {X =  736, A =    0, H =    0},
	["Tarides du Nord"]					= {X =  750, A =    0, H = 4933},
	["Silithus"]						= {X =  856, A = 4934, H = 4934},
	["Tarides du Sud"]					= {X = 4996, A = 4937, H = 4981},
	["Les Serres-Rocheuses"]			= {X =  847, A = 4936, H = 4980},
	["Tanaris"]							= {X =  851, A = 4935, H = 4935},
	["Teldrassil"]						= {X =  842, A =    0, H =    0},
	["Mille pointes"]					= {X =  846, A = 4938, H = 4938},
	["Cratère d’Un’Goro"]				= {X =  854, A = 4939, H = 4939},
	["Berceau-de-l’Hiver"]				= {X =  857, A = 4940, H = 4940},
	-- Outland
	["Les Tranchantes"]					= {X =  865, A = 1193, H = 1193},
	["Péninsule des Flammes infernales"]= {X =  862, A = 1189, H = 1271},
	["Nagrand"]							= {X =  866, A = 1192, H = 1273},
	["Raz-de-Néant"]					= {X =  843, A = 1194, H = 1194},
	["Vallée d'Ombrelune"]				= {X =  864, A = 1195, H = 1195},
	["Forêt de Terokkar"]				= {X =  867, A = 1191, H = 1272},
	["Marécage de Zangar"]				= {X =  863, A = 1190, H = 1190},
	-- Northrend
	["Toundra Boréenne"]				= {X = 1264, A =   33, H = 1358},
	["Forêt du Chant de cristal"]		= {X = 1457, A =    0, H =    0},
	["Désolation des dragons"]			= {X = 1265, A =   35, H = 1356},
	["Les Grisonnes"]					= {X = 1266, A =   37, H = 1357},
	["Fjord Hurlant"]					= {X = 1263, A =   34, H = 1356},
	["La Couronne de glace"]			= {X = 1270, A =   40, H =   40},
	["Bassin de Sholazar"]				= {X = 1268, A =   39, H =   39},
	["Les pics Foudroyés"]				= {X = 1269, A =   38, H =   38},
	["Zul’Drak"]						= {X = 1267, A =   36, H =   36},
	-- Cataclysm
	["Le Tréfonds"]						= {X = 4864, A = 4871, H = 4871},
	["Mont Hyjal"]						= {X = 4863, A = 4870, H = 4870},
	["Hautes-terres du Crépuscule"]		= {X = 4866, A = 4873, H = 5501},
	["Uldum"]							= {X = 4865, A = 4872, H = 4872},
	["Vashj’ir"]						= {X = 4825, A = 4869, H = 4982},
	["Tol Barad"]						= {X =    0, A = 4874, H = 4874},
	["Péninsule de Tol Barad"]			= {X =    0, A = 4874, H = 4874},
	-- Pandaria
	["La forêt de Jade"]				= {X = 6351, A = 6300, H = 6534},
	["Vallée des Quatre vents"]			= {X = 6969, A = 6301, H = 6301},
	--["Étendues sauvages de Krasaran"]	= {X = 6975, A = 6535, H = 6536},
	["Sommet de Kun-Lai"]				= {X = 6976, A = 6537, H = 6538},
	["Steppes de Tanglong"]				= {X = 6977, A = 6539, H = 6539},
	["Terres de l’Angoisse"]			= {X = 6978, A = 6540, H = 6540},
	["Val de l’Éternel printemps"]		= {X = 6979, A =    0, H =    0},
	-- Boolean Explores
	["Île de Quel'Danas"]				= {X =  868, A =    0, H =    0},
	["Ahn'Qiraj : le royaume Déchu"]	= {X =    0, A =    0, H =    0},
	["Joug-d'hiver"]					= {X =    0, A =    0, H =    0},
}