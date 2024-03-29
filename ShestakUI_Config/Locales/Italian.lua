﻿if GetLocale() ~= "itIT" then return end

----------------------------------------------------------------------------------------
--	Localization for itIT client(Thanks to Oz for the translation)
----------------------------------------------------------------------------------------
L_GUI_BUTTON_RESET = "Ripristino totale IU"
L_GUI_SET_SAVED_SETTTINGS = "Imposta le impostazioni 'Per-Personaggio'"
L_GUI_RESET_CHAR = "Vuoi davvero ripristinare le impostazioni iniziali della ShestakUI per questo personaggio?"
L_GUI_RESET_ALL = "Vuoi davvero ripristinate tutte le impostazioni iniziali della ShestakUI?"
L_GUI_PER_CHAR = "Vuoi davvero modificare questa impostazione (attivazione/disattivazione salvataggio impostazioni 'Per-Personaggio')?"
L_GUI_MAKE_SELECTION = "Devi selezionare un'opzione prima di poter continuare con la configurazione."

-- General options
L_GUI_GENERAL_AUTOSCALE = "Ridimensionamento automatico dell'interfaccia"
L_GUI_GENERAL_MULTISAMPLE = "Protezione del multisampling (bordi di 1 pixel)"
L_GUI_GENERAL_UISCALE = "Scala dell'interfaccia (se il ridimensionamento automatico è disabilitato)"
L_GUI_GENERAL_WELCOME_MESSAGE = "Messaggio di benvenuto in chat"
L_GUI_GENERAL_LAG_TOLERANCE = "Allinea automaticamente la tolleranza automatica lag della Blizzard alla tua latenza"

-- Miscellaneous options
L_GUI_MISC_MARKING = "Marca il bersaglio quando premi Shift"
L_GUI_MISC_INVKEYWORD = "Parola chiave per invitare (/ainv)"
L_GUI_MISC_SPIN_CAMERA = "Ruota la camera mentre sei assente"
L_GUI_MISC_VEHICLE_MOUSEOVER = "Riquadro veicolo al passaggio del mouse"
L_GUI_MISC_QUEST_AUTOBUTTON = "Bottone automatico missione/oggetto"
L_GUI_MISC_RAID_TOOLS = "Strumenti per le incursioni"
L_GUI_MISC_PROFESSION_TABS = "Visualizza la linguetta delle professioni sul riquadro abilità di commercio/mercante"
L_GUI_MISC_HIDE_BG_SPAM = "Rimuovi lo spam delle emotes dei bosses durante i Campi di Battaglia"
L_GUI_MISC_ITEM_LEVEL = "Livello oggetto sui bottoni della schermata Personaggio"
L_GUI_MISC_GEM_COUNTER = "Mostra quante gemme rosse/blu/gialle possiedi"
L_GUI_MISC_ALREADY_KNOWN = "Colora ricette/cavalcature/mascottes possedute"
L_GUI_MISC_DISENCHANTING = "Disincantamento, Pestatura e Prospezione in un solo click."
L_GUI_MISC_SUM_BUYOUTS = "Somma assieme tutte le aste correnti"
L_GUI_MISC_CLICK_CAST = "Simple click2cast spell binder" -- Needs review

-- Announcements options
L_GUI_ANNOUNCEMENTS = "Annunci"
L_GUI_ANNOUNCEMENTS_DRINKING = "Annuncia in chat quando un nemico in arena sta bevendo"
L_GUI_ANNOUNCEMENTS_INTERRUPTS = "Annuncia in gruppo/incursione quando tu interrompi un incantesimo/abilità"
L_GUI_ANNOUNCEMENTS_SPELLS = "Annuncia in gruppo/incursione quando usi alcuni incantesimi/abilità"
L_GUI_ANNOUNCEMENTS_SPELLS_FROM_ALL = "Controlla incantesimi/abilità lanciati da tutti i compagni di gruppo/incursione"
L_GUI_ANNOUNCEMENTS_LIGHTWELL = "Annuncia il tuo Pozzo di Luce"
L_GUI_ANNOUNCEMENTS_TOY_TRAIN = "Annuncia l'uso del trenino giocattolo o del telecomando che ti conduce ai Sotterranei di Roccianera"
L_GUI_ANNOUNCEMENTS_SAYS_THANKS = "Ringrazia per alcuni incantesimi/abilità"
L_GUI_ANNOUNCEMENTS_PULL_COUNTDOWN = "Annuncia il conto alla rovescia di avvio incontro (/run PullCountdown.Pull(#))"
L_GUI_ANNOUNCEMENTS_FLASK_FOOD = "Annuncia l'uso di tonici e cibo"
L_GUI_ANNOUNCEMENTS_FLASK_FOOD_AUTO = "Annuncia automaticamente l'uso di cibi e tonici all'appello (se attivato, annuncia nel canale incursione)"
L_GUI_ANNOUNCEMENTS_FLASK_FOOD_RAID = "Annuncia l'uso di cibi e tonici nel canale incursione"

-- Automation options
L_GUI_AUTOMATION = "Automatismi"
L_GUI_AUTOMATION_RESURRECTION = "Auto-risorgi nei Campi di Battaglia"
L_GUI_AUTOMATION_SCREENSHOT = "Cattura una schermata quando il giocatore completa un'impresa"
L_GUI_AUTOMATION_SOLVE_ARTIFACT = "Popup automatico risoluzione artefatto"
L_GUI_AUTOMATION_CHEFS_HAT = "Auto-indossa il cappello da cuoco"
L_GUI_AUTOMATION_ACCEPT_INVITE = "Auto-accetta gli inviti"
L_GUI_AUTOMATION_DECLINE_DUEL = "Auto-declina i duelli"
L_GUI_AUTOMATION_ACCEPT_QUEST = "Auto-accetta le missioni"
L_GUI_AUTOMATION_SKIP_CINEMATIC = "Auto-salta i filmati"
L_GUI_AUTOMATION_AUTO_ROLE = "Auto-imposta il tuo ruolo"
L_GUI_AUTOMATION_CANCEL_BAD_BUFFS = "Auto-cancella alcuni benefici"
L_GUI_AUTOMATION_TAB_BINDER = "Usando il tasto TAB, consente di prendere come bersaglio soltanto nemici controllati da altri giocatori (se presenti)"

-- Skins options
L_GUI_SKINS = "Restyling"
L_GUI_SKINS_BLIZZARD = "Attiva il restyling dei riquadri Blizzard"
L_GUI_SKINS_MINIMAP_BUTTONS = "Attiva il restyling delle icone delle AddOns sulla minimappa"
L_GUI_SKINS_CLCR = "Attiva il restyling di CLCRet"
L_GUI_SKINS_CLCP = "Attiva il restyling di CLCProt"
L_GUI_SKINS_COMBUSTION_HELPER = "Attiva il restyling di CombustionHelper"
L_GUI_SKINS_BW = "Attiva il restyling di BigWigs"
L_GUI_SKINS_DBM = "Attiva il restyling di DBM"
L_GUI_SKINS_DXE = "Attiva il restyling di DXE"
L_GUI_SKINS_OMEN = "Attiva il restyling di Omen"
L_GUI_SKINS_RECOUNT = "Attiva il restyling di Recount"

-- Combat text options
L_GUI_COMBATTEXT = "Testo di combattimento"
L_GUI_COMBATTEXT_ENABLE = "Attiva il testo di combattimento"
L_GUI_COMBATTEXT_BLIZZ_HEAD_NUMBERS = "Usa il testo di combattimento della Blizzard per danni/cure"
L_GUI_COMBATTEXT_DAMAGE_STYLE = "Cambia il carattere di base per danni/cure (è necessario riavviare il gioco)"
L_GUI_COMBATTEXT_DAMAGE = "Mostra i danni in un proprio riquadro dedicato"
L_GUI_COMBATTEXT_HEALING = "Mostra le cure in un proprio riquadro dedicato"
L_GUI_COMBATTEXT_HOTS = "Mostra gli effetti delle cure periodiche nel riquadro delle cure"
L_GUI_COMBATTEXT_OVERHEALING = "Mostra le cure in eccesso"
L_GUI_COMBATTEXT_PET_DAMAGE = "Mostra i danni del tuo famiglio"
L_GUI_COMBATTEXT_DOT_DAMAGE = "Mostra i tuoi danni nel tempo"
L_GUI_COMBATTEXT_DAMAGE_COLOR = "Colora i numeri dei danni in base alla scuola di magia"
L_GUI_COMBATTEXT_CRIT_PREFIX = "Simbolo che sarà aggiunto prima dei critici"
L_GUI_COMBATTEXT_CRIT_POSTFIX = "Simbolo che sarà aggiunto dopo i critici"
L_GUI_COMBATTEXT_ICONS = "Mostra le icone dei danni"
L_GUI_COMBATTEXT_ICON_SIZE = "Dimensioni icone danni (influenza anche le dimensioni del carattere dei danni)"
L_GUI_COMBATTEXT_TRESHOLD = "Danno minimo da mostrare nel riquadro dei danni"
L_GUI_COMBATTEXT_HEAL_TRESHOLD = "Cure minime da mostrare nei messaggi delle cure"
L_GUI_COMBATTEXT_SCROLLABLE = "Attiva la 'modalità scorrimento': consente di scorrere tra le righe dei riquadri con la rotellina del mouse"
L_GUI_COMBATTEXT_MAX_LINES = "Massimo numero righe da ricordare in 'scorrimento' (più righe = più memoria)"
L_GUI_COMBATTEXT_TIME_VISIBLE = "Tempo (in secondi) in cui un singolo messaggio sarà visibile"
L_GUI_COMBATTEXT_STOP_VE_SPAM = "Disabilita automaticamente lo spam delle cure dei sacerdoti in forma d'ombra"
L_GUI_COMBATTEXT_DK_RUNES = "Mostra la ricarica delle rune dei cavalieri della morte"
L_GUI_COMBATTEXT_KILLINGBLOW = "Ti comunica i tuoi colpi mortali"
L_GUI_COMBATTEXT_MERGE_AOE_SPAM = "Unisce lo spam per danni multipli a più bersagli in un singolo messaggio"
L_GUI_COMBATTEXT_MERGE_AOE_SPAM_TIME = "Secondi in cui l'incantesimo/abilità più bersagli è unito in un solo messaggio"
L_GUI_COMBATTEXT_DISPEL = "Ti comunica le tue dissoluzioni (dispels)"
L_GUI_COMBATTEXT_INTERRUPT = "Ti comunica le tue interruzioni (interrupts)"
L_GUI_COMBATTEXT_DIRECTION = "Direzione di scorrimento ('sù' (vai in basso) o 'giù' (vai in alto))"

-- Buffs reminder options
L_GUI_REMINDER = "Promemoria benefici"
L_GUI_REMINDER_SOLO_ENABLE = "Mostra i propri benefici mancanti"
L_GUI_REMINDER_SOLO_SOUND = "Attiva un suono d'avviso per il promemoria dei propri benefici mancanti"
L_GUI_REMINDER_SOLO_SIZE = "Dimensione dell'icona dei propri benefici"
L_GUI_REMINDER_RAID_ENABLE = "Mostra i benefici dell'incursione mancanti"
L_GUI_REMINDER_RAID_ALWAYS = "Mostra sempre il promemoria benefici"
L_GUI_REMINDER_RAID_SIZE = "Dimensioni delle icone del promemoria benefici dell'incursione"
L_GUI_REMINDER_RAID_ALPHA = "Trasparenza icona quando il beneficio è presente"

-- Raid cooldowns options
L_GUI_COOLDOWN_RAID = "Recuperi d'incursione"
L_GUI_COOLDOWN_RAID_ENABLE = "Visualizza i recuperi d'incursione"
L_GUI_COOLDOWN_RAID_HEIGHT = "Altezza delle barre dei recuperi d'incursione"
L_GUI_COOLDOWN_RAID_WIDTH = "Larghezza barre recuperi d'incursione (se l'icona è attiva, larghezza + 28)"
L_GUI_COOLDOWN_RAID_SORT = "Disposizione verso l'alto delle barre dei recuperi d'incursione"
L_GUI_COOLDOWN_RAID_ICONS = "Icone dei recuperi d'incursione"
L_GUI_COOLDOWN_RAID_IN_RAID = "Mostra i recuperi d'incursione nelle aree da incursione"
L_GUI_COOLDOWN_RAID_IN_PARTY = "Mostra i recuperi d'incursione nelle aree da gruppo"
L_GUI_COOLDOWN_RAID_IN_ARENA = "Mostra i recuperi d'incursione nelle aree da arena"

-- Enemy cooldowns options
L_GUI_COOLDOWN_ENEMY = "Recuperi del nemico"
L_GUI_COOLDOWN_ENEMY_ENABLE = "Visualizza i recuperi del nemico"
L_GUI_COOLDOWN_ENEMY_SIZE = "Dimensioni delle icone dei recuperi del nemico"
L_GUI_COOLDOWN_ENEMY_DIRECTION = "Direzione icone recuperi del nemico (DESTRA|SINISTRA|SOPRA|SOTTO)"
L_GUI_COOLDOWN_ENEMY_EVERYWHERE = "Mostra i recuperi del nemico in qualsiasi area"
L_GUI_COOLDOWN_ENEMY_IN_BG = "Mostra i recuperi del nemico nelle aree da Campo di Battaglia"
L_GUI_COOLDOWN_ENEMY_IN_ARENA = "Mostra i recuperi del nemico nelle aree da arena"

-- Pulse cooldowns options
L_GUI_COOLDOWN_PULSE = "Recuperi effetto 'pulse'"
L_GUI_COOLDOWN_PULSE_ENABLE = "Mostra i recuperi con effetto 'pulse'"
L_GUI_COOLDOWN_PULSE_SIZE = "Dimensione dell'icona dei recuperi con effetto 'pulse'"
L_GUI_COOLDOWN_PULSE_SOUND = "Attiva un suono di avviso"
L_GUI_COOLDOWN_PULSE_ANIM_SCALE = "Regolazione dell'animazione"
L_GUI_COOLDOWN_PULSE_HOLD_TIME = "Opacità del tempo d'attesa massimo"
L_GUI_COOLDOWN_PULSE_THRESHOLD = "Soglia di tempo minimo"

-- Threat options
L_GUI_THREAT = "Barre di minaccia"
L_GUI_THREAT_ENABLE = "Attiva le barre di minaccia"
L_GUI_THREAT_HEIGHT = "Altezza delle barre di minaccia"
L_GUI_THREAT_WIDTH = "Larghezza delle barre di minaccia"
L_GUI_THREAT_ROWS = "Numero delle barre di minaccia"
L_GUI_THREAT_HIDE_SOLO = "Mostra soltanto in gruppo/incursione"

-- Tooltip options
L_GUI_TOOLTIP = "Suggerimenti"
L_GUI_TOOLTIP_ENABLE = "Attiva i suggerimenti"
L_GUI_TOOLTIP_SHIFT = "Mostra i suggerimenti quando è premuto il tasto Shift"
L_GUI_TOOLTIP_CURSOR = "Suggerimenti sotto il cursore"
L_GUI_TOOLTIP_ICON = "Icone degli oggetti nei suggerimenti"
L_GUI_TOOLTIP_HEALTH = "Valore numerico della salute"
L_GUI_TOOLTIP_HIDE = "Nascondi i suggerimenti relativi alle barre delle azioni"
L_GUI_TOOLTIP_HIDE_COMBAT = "Nascondi i suggerimenti in combattimento"
L_GUI_TOOLTIP_TALENTS = "Mostra i talenti nei suggerimenti"
L_GUI_TOOLTIP_ACHIEVEMENTS = "Mostra il paragone delle imprese nei suggerimenti"
L_GUI_TOOLTIP_TARGET = "Mostra nei suggerimenti chi ha il giocatore come bersaglio"
L_GUI_TOOLTIP_TITLE = "Titolo dei giocatori nei suggerimenti"
L_GUI_TOOLTIP_RANK = "Grado in gilda nei suggerimenti"
L_GUI_TOOLTIP_ARENA_EXPERIENCE = "Esperienza PvP del giocatore in arena"
L_GUI_TOOLTIP_SPELL_ID = "ID Incantesimo/Abilità"
L_GUI_TOOLTIP_RAID_ICON = "Visualizza i marchi d'incursione nei suggerimenti"
L_GUI_TOOLTIP_WHO_TARGETTING = "Visualizza chi ha in bersaglio l'unità che è nel tuo gruppo/incursione"
L_GUI_TOOLTIP_ITEM_COUNT = "Conteggio oggetti"
L_GUI_TOOLTIP_UNIT_ROLE = "Ruolo dell'unità"
L_GUI_TOOLTIP_REFORGE = "Informazioni di Riforgiatura degli oggetti"
L_GUI_TOOLTIP_SYMBIOSIS = "Informazioni di Simbiosi"
L_GUI_TOOLTIP_INSTANCE_LOCK = "Info incursione nei suggerimenti"
L_GUI_TOOLTIP_ITEM_TRANSMOGRIFY = "Mostra gli oggetti che non possono essere transmogrifati"

-- Chat options
L_GUI_CHAT_ENABLE = "Attiva chat"
L_GUI_CHAT_BACKGROUND = "Attiva lo sfondo della chat"
L_GUI_CHAT_BACKGROUND_ALPHA = "Trasparenza sfondo della chat"
L_GUI_CHAT_SPAM = "Rimozione di un po' di spam di sistema (*Giocatore1* sconfigge *Giocatore2* in un duello.)"
L_GUI_CHAT_GOLD = "Rimozione di un po' di spam degli altri giocatori"
L_GUI_CHAT_WIDTH = "Larghezza chat"
L_GUI_CHAT_HEIGHT = "Altezza chat"
L_GUI_CHAT_BAR = "Barra con bottoni per passare velocemente da un canale all'altro della chat"
L_GUI_CHAT_BAR_MOUSEOVER = "Barra canali chat al passaggio del mouse"
L_GUI_CHAT_TIMESTAMP = "Colorazione orario dei messaggi"
L_GUI_CHAT_WHISP = "Tipo di suono quando ricevi un sussurro"
L_GUI_CHAT_SKIN_BUBBLE = "Restyling dei fumetti delle chats"
L_GUI_CHAT_CL_TAB = "Mostra la linguetta del Registro di combattimento"
L_GUI_CHAT_TABS_MOUSEOVER = "Linguette delle chats al passaggio del mouse"
L_GUI_CHAT_STICKY = "Ricorda l'ultimo canale"
L_GUI_CHAT_DAMAGE_METER_SPAM = "Riunisce lo spam di un contatore dei danni in un singolo link"

-- Bag options
L_GUI_BAGS = "Sacche"
L_GUI_BAGS_ENABLE = "Attiva le sacche"
L_GUI_BAGS_BUTTON_SIZE = "Dimensioni dei bottoni"
L_GUI_BAGS_BUTTON_SPACE = "Spazio tra i bottoni"
L_GUI_BAGS_BANK = "Numero di colonne in banca"
L_GUI_BAGS_BAG = "Numero di colonne nella sacca principale"

-- Minimap options
L_GUI_MINIMAP_ENABLE = "Attiva la minimappa"
L_GUI_MINIMAP_ICON = "Icona tracciamento"
L_GUI_MINIMAP_SIZE = "Dimensioni della minimappa"
L_GUI_MINIMAP_HIDE_COMBAT = "Nascondi la minimappa in combattimento"
L_GUI_MINIMAP_TOGGLE_MENU = "Mostra il menu a scomparsa"
L_GUI_MINIMAP_MERGE_MENUS = "Unisci i bottoni principali e quelli delle AddOns del menu a scomparsa"

-- Map options
L_GUI_MAP_ENABLE = "Attiva la mappa del mondo"
L_GUI_MAP_SCALE = "Scala della mappa del mondo"
L_GUI_MAP_BG_STYLIZATION = "Restyling della mappa dei Campi di Battaglia"
L_GUI_MAP_BOSS_COUNT = "Mostra il conteggio dei bosses sulla mappa del mondo"
L_GUI_MAP_EXPLORE = "Traccia le imprese Esploratore mondiale e Storico sulla mappa del mondo"

-- Loot options
L_GUI_LOOT_ENABLE = "Attiva il riquadro bottino"
L_GUI_LOOT_ROLL_ENABLE = "Attiva il riquadro del bottino di gruppo"
L_GUI_LOOT_ICON_SIZE = "Dimensioni delle icone"
L_GUI_LOOT_WIDTH = "Larghezza del riquadro bottino"
L_GUI_LOOT_AUTOGREED = "A livello massimo, attiva automaticamente la bramosia per gli oggetti verdi"
L_GUI_LOOT_AUTODE = "Auto-conferma il disincantamento degli oggetti"

-- Nameplate options
L_GUI_NAMEPLATE_ENABLE = "Attiva le barre delle unità"
L_GUI_NAMEPLATE_COMBAT = "Mostra automaticamente le barre delle unità in combattimento"
L_GUI_NAMEPLATE_HEALTH = "Valore numerico della salute"
L_GUI_NAMEPLATE_CASTBAR = "Mostra le barre del lancio di incantesimi/abilità delle barre delle unità"
L_GUI_NAMEPLATE_HEIGHT = "Altezza delle barre delle unità"
L_GUI_NAMEPLATE_WIDTH = "Larghezza delle barre delle unità"
L_GUI_NAMEPLATE_AD_HEIGHT = "Altezza aggiuntiva per determinate barre delle unità"
L_GUI_NAMEPLATE_AD_WIDTH = "Larghezza aggiuntiva per determinate barre delle unità"
L_GUI_NAMEPLATE_CASTBAR_NAME = "Mostra il nome di incantesimi/abilità sulle barre del lancio di incantesimi/abilità"
L_GUI_NAMEPLATE_THREAT = "Attiva il sensore di rilevamento minaccia (si adatta automaticamente al tuo ruolo)"
L_GUI_NAMEPLATE_CLASS_ICON = "Icone delle classi in PvP"
L_GUI_NAMEPLATE_NAME_ABBREV = "Mostra nomi abbreviati"
L_GUI_NAMEPLATE_GOOD_COLOR = "Colore se il PG è minacciato (in base a difensore o assaltatore/guaritore)"
L_GUI_NAMEPLATE_NEAR_COLOR = "Colore per perdita/guadagno minaccia"
L_GUI_NAMEPLATE_BAD_COLOR = "Colore se il PG non è minacciato (se difensore o assaltatore/guaritore)"
L_GUI_NAMEPLATE_SHOW_DEBUFFS = "Mostra le penalità sulle barre delle unità (l'ozpione 'Mostra nomi abbreviati' deve essere disabilitata)"
L_GUI_NAMEPLATE_DEBUFFS_SIZE = "Dimensioni delle penalità sulle barre delle unità"
L_GUI_NAMEPLATE_HEALER_ICON = "Nei Campi di Battaglia, mostra un'icona 'guaritore' accanto alle barre delle unità di tutti i guaritori nemici"

-- ActionBar options
L_GUI_ACTIONBAR_ENABLE = "Attiva le barre delle azioni"
L_GUI_ACTIONBAR_HOTKEY = "Mostra i nomi dei tasti di scelta rapida sui bottoni"
L_GUI_ACTIONBAR_MACRO = "Mostra i nomi delle macro sui bottoni"
L_GUI_ACTIONBAR_GRID = "Mostra lo sfondo per i bottoni vuoti delle barre delle azioni"
L_GUI_ACTIONBAR_BUTTON_SIZE = "Dimensioni dei bottoni"
L_GUI_ACTIONBAR_BUTTON_SPACE = "Spazio tra i bottoni"
L_GUI_ACTIONBAR_SPLIT_BARS = "Dividi la quinta barra in 2 barre da 6 bottoni ciascuna"
L_GUI_ACTIONBAR_CLASSCOLOR_BORDER = "Colora i bordi dei bottoni con i colori delle classi"
L_GUI_ACTIONBAR_TOGGLE_MODE = "Attiva la modalità a scomparsa"
L_GUI_ACTIONBAR_BOTTOMBARS = "Numero delle barre delle azioni in basso (1, 2 o 3)"
L_GUI_ACTIONBAR_RIGHTBARS = "Numero di barre delle azioni sulla destra (0, 1, 2 o 3)"
L_GUI_ACTIONBAR_RIGHTBARS_MOUSEOVER = "Barre sulla destra al passaggio del mouse"
L_GUI_ACTIONBAR_PETBAR_MOUSEOVER = "Barra famiglio al passaggio del mouse (solo con la barra famiglio orizzontale)"
L_GUI_ACTIONBAR_PETBAR_HIDE = "Nascondi la barra famiglio"
L_GUI_ACTIONBAR_PETBAR_HORIZONTAL = "Rendi orizzontale la barra famiglio"
L_GUI_ACTIONBAR_STANCEBAR_MOUSEOVER = "Barra postura al passaggio del mouse"
L_GUI_ACTIONBAR_STANCEBAR_HIDE = "Nascondi barra postura"
L_GUI_ACTIONBAR_STANCEBAR_HORIZONTAL = "Rendi orizzontale la barra postura"
L_GUI_ACTIONBAR_MICROMENU = "Attiva il micro menu"
L_GUI_ACTIONBAR_MICROMENU_MOUSEOVER = "Micro menu al passaggio del mouse"

-- Auras/Buffs/Debuffs
L_GUI_AURA_PLAYER_BUFF_SIZE = "Dimensione benefici giocatore"
L_GUI_AURA_SHOW_SPIRAL = "Spirale trascorrere tempo sulle icone delle auree"
L_GUI_AURA_SHOW_TIMER = "Mostra il timer del recupero sulle icone delle auree"
L_GUI_AURA_PLAYER_AURAS = "Auree sul riquadro del giocatore"
L_GUI_AURA_TARGET_AURAS = "Auree sul riquadro del bersaglio"
L_GUI_AURA_FOCUS_DEBUFFS = "Penalità sul riquadro del focus"
L_GUI_AURA_FOT_DEBUFFS = "Penalità sul riquadro del bersaglio del focus"
L_GUI_AURA_PET_DEBUFFS = "Penalità sul riquadro del famiglio"
L_GUI_AURA_TOT_DEBUFFS = "Penalità sul riquadro del bersaglio del bersaglio"
L_GUI_AURA_BOSS_BUFFS = "Benefici sul riquadro del boss"
L_GUI_AURA_PLAYER_AURA_ONLY = "Mostra solo le tue penalità sul riquadro del bersaglio"
L_GUI_AURA_DEBUFF_COLOR_TYPE = "Colora le penalità a seconda del tipo"
L_GUI_AURA_CAST_BY = "Mostra chi ha lanciato un beneficio o una penalità nei suggerimenti"
L_GUI_AURA_CLASSCOLOR_BORDER = "Colora i bordi dei benefici del giocatore in base al colore della classi"

-- Unit Frames options
L_GUI_UF_ENABLE = "Abilita i riquadri delle unità"
L_GUI_UF_OWN_COLOR = "Scegli il colore per la tua barra della salute"
L_GUI_UF_UF_COLOR = "Colore barre salute (se è attivo il colore per la tua barra della salute)"
L_GUI_UF_ENEMY_HEALTH_COLOR = "Colora di rosso la barra della salute dei nemici"
L_GUI_UF_TOTAL_VALUE = "Visualizza un testo sui riquadri di giocatore e bersaglio con i valori XXXX/Totale"
L_GUI_UF_COLOR_VALUE = "Valori di salute e mana colorati"
L_GUI_UF_BAR_COLOR_VALUE = "Barra della salute colorata in base alla salute restante"
L_GUI_UF_UNIT_CASTBAR = "Mostra le barre del lancio di incantesimi/abilità"
L_GUI_UF_CASTBAR_ICON = "Mostra le icone della barra del lancio di incantesimi/abilità"
L_GUI_UF_CASTBAR_LATENCY = "Latenza della barra del lancio di incantesimi/abilità"
L_GUI_UF_CASTBAR_TICKS = "Mostra le tacchette (ticks) sulla barra del lancio di incantesimi/abilità"
L_GUI_UF_SHOW_PET = "Mostra il riquadro per il famiglio"
L_GUI_UF_SHOW_FOCUS = "Mostra il riquadro per il focus"
L_GUI_UF_SHOW_TOT = "Mostra il riquadro per il bersaglio del bersaglio"
L_GUI_UF_SHOW_BOSS = "Mostra i riquadri per i bosses"
L_GUI_UF_BOSS_RIGHT = "Riquadri per i bosses sulla destra"
L_GUI_UF_SHOW_ARENA = "Mostra i riquadri per l'arena"
L_GUI_UF_ARENA_RIGHT = "Riquadri per l'arena sulla destra"
L_GUI_UF_ICONS_PVP = "Testo PvP (senza icona) al passaggio del mouse sui riquadri di giocatore e bersaglio"
L_GUI_UF_ICONS_COMBAT = "Icona di status 'in combattimento'"
L_GUI_UF_ICONS_RESTING = "Icona 'Riposato' per personaggi di basso livello"
L_GUI_UF_PORTRAIT_ENABLE = "Attiva ritratti per giocatore e bersaglio"
L_GUI_UF_PORTRAIT_CLASSCOLOR_BORDER = "Bordi dei ritratti colorati in base alla classe"
L_GUI_UF_PORTRAIT_HEIGHT = "Altezza del ritratto"
L_GUI_UF_PORTRAIT_WIDTH = "Larghezza del ritratto"
L_GUI_UF_PLUGINS_GCD = "Scintilla del recupero globale"
L_GUI_UF_PLUGINS_SWING = "Attiva la barra dei fendenti"
L_GUI_UF_PLUGINS_NECRO_STRIKE = "Attiva la barra per l'Assalto Necrotico"
L_GUI_UF_PLUGINS_REPUTATION_BAR = "Attiva la barra reputazioni"
L_GUI_UF_PLUGINS_EXPERIENCE_BAR = "Attiva la barra esperienza"
L_GUI_UF_PLUGINS_SMOOTH_BAR = "Barra a cambiamento graduale"
L_GUI_UF_PLUGINS_TALENTS = "Mostra la specializzazione dei talenti del nemico"
L_GUI_UF_PLUGINS_COMBAT_FEEDBACK = "Testo di combattimento sul riquadro del giocatore/bersaglio"
L_GUI_UF_PLUGINS_FADER = "Sfuma i riquadri delle unità"
L_GUI_UF_PLUGINS_DIMINISHING = "Rendimenti Decrescenti (Diminishing Returns) sulle icone dei riquadri d'arena"

-- Unit Frames Class bar options
L_GUI_UF_PLUGINS_CLASS_BAR = "Barre di classe"
L_GUI_UF_PLUGINS_COMBO_BAR = "Icone punti combo per druido e ladro"
L_GUI_UF_PLUGINS_SHADOW_BAR = "Attiva la barra di classe del sacerdote"
L_GUI_UF_PLUGINS_CHI_BAR = "Attiva la barra di classe del monaco"
L_GUI_UF_PLUGINS_VENGEANCE_BAR = "Attiva la barra della vendetta"
L_GUI_UF_PLUGINS_ECLIPSE_BAR = "Attiva la barra di classe del druido"
L_GUI_UF_PLUGINS_HOLY_BAR = "Attiva la barra di classe del paladino"
L_GUI_UF_PLUGINS_SHARD_BAR = "Attiva la barra di classe dello stregone"
L_GUI_UF_PLUGINS_RUNE_BAR = "Attiva la barra di classe del cavaliere della morte"
L_GUI_UF_PLUGINS_TOTEM_BAR = "Attiva la barra dei totems dello sciamano"

-- Raid Frames options
L_GUI_UF_AGGRO_BORDER = "Cambio di colore dei bordi in base al grado di aggressione"
L_GUI_UF_DEFICIT_HEALTH = "Deficit salute in incursione"
L_GUI_UF_SHOW_PARTY = "Mostra i riquadri del gruppo"
L_GUI_UF_SHOW_RAID = "Mostra i riquadri d'incursione"
L_GUI_UF_VERTICAL_HEALTH = "Orientamento verticale della salute"
L_GUI_UF_ALPHA_HEALTH = "Trasparenza delle barre della salute quando i punti sono al 100%"
L_GUI_UF_SHOW_RANGE = "Abilita l'opacità dei riquadri d'incursione in base alla distanza"
L_GUI_UF_RANGE_ALPHA = "Trasparenza dei riquadri delle unità quando un'unità è fuori portata"
L_GUI_UF_SOLO_MODE = "Mostra sempre il riquadro del giocatore"
L_GUI_UF_PLAYER_PARTY = "Mostra il riquadro del giocatore in gruppo"
L_GUI_UF_SHOW_TANK = "Mostra i difensori dell'incursione"
L_GUI_UF_SHOW_TANK_TT = "Mostra il bersaglio del bersaglio dei difensori dell'incursione"
L_GUI_UF_RAID_GROUP = "Numero dei gruppi nell'incursione (solo con ShestakUI_Heal)"
L_GUI_UF_RAID_VERTICAL_GROUP = "Gruppi dell'incursione verticali (solo con ShestakUI_Heal)"
L_GUI_UF_ICONS_LEADER = "Icona del capoincursione, dell'assistente e del responsabile del bottino sui riquadri"
L_GUI_UF_ICONS_LFD_ROLE = "Icona del ruolo nel gruppo sul riquadro"
L_GUI_UF_ICONS_RAID_MARK = "Marchi d'incursione"
L_GUI_UF_ICONS_READY_CHECK = "Icone dell'appello"
L_GUI_UF_PLUGINS_DEBUFFHIGHLIGHT_ICON = "Evidenzia texture + icona delle penalità"
L_GUI_UF_PLUGINS_AURA_WATCH = "Icone delle penalità d'incursione"
L_GUI_UF_PLUGINS_AURA_WATCH_TIMER = "Timer sulle icone delle penalità d'incursione"
L_GUI_UF_PLUGINS_HEALCOMM = "Mostra le cure in arrivo sul riquadro"
L_GUI_UF_PLUGINS_AUTO_RESURRECTION = "Auto-lancia resurrezione col tasto centrale quando l'unità è morta (non funziona con Clique attiva)"

-- Panel options
L_GUI_TOP_PANEL = "Pannello Superiore"
L_GUI_TOP_PANEL_ENABLE = "Attiva il pannello superiore"
L_GUI_TOP_PANEL_MOUSE = "Pannello superiore al passaggio del mouse"
L_GUI_TOP_PANEL_WIDTH = "Larghezza pannello"
L_GUI_TOP_PANEL_HEIGHT = "Altezza pannello"

-- Stats options
L_GUI_STATS = "Stats"
L_GUI_STATS_BG = "Campi di Battaglia"
L_GUI_STATS_CLOCK = "Orologio"
L_GUI_STATS_LATENCY = "Latenza"
L_GUI_STATS_MEMORY = "Memoria"
L_GUI_STATS_FPS = "Frames Per Seconds"
L_GUI_STATS_EXPERIENCE = "Esperienza"
L_GUI_STATS_COORDS = "Coordinate"
L_GUI_STATS_LOCATION = "Località"

-- Error options
L_GUI_ERROR = "Errori"
L_GUI_ERROR_HIDE = "Nascondi gli errori"
L_GUI_ERROR_BLACK = "Nascondi gli errori della lista nera"
L_GUI_ERROR_WHITE = "Mostra gli errori della lista bianca"
L_GUI_ERROR_HIDE_COMBAT = "Nascondi gli errori in combattimento"