﻿local T, C, L = unpack(select(2, ...))
if T.client ~= "ruRU" then return end

----------------------------------------------------------------------------------------
--	Localization for ruRU client
----------------------------------------------------------------------------------------
-- Announce your Lightwell
L_ANNOUNCE_LA_USE = " выпил из моего колодца. "
L_ANNOUNCE_LA_CHARGE = " заряд(ов))"
L_ANNOUNCE_LA_USELESS = " использовал мой колодец впустую! "
L_ANNOUNCE_LA_STOP = "Прекрати пить из моего колодца!!!"
L_ANNOUNCE_LA_PLACED = "Колодец Света поставлен. "
L_ANNOUNCE_LA_CHARGES = " зарядов."

-- Announce flasks and food
L_ANNOUNCE_FF_NOFOOD = "Нет еды: "
L_ANNOUNCE_FF_NOFLASK = "Нет настоя: "
L_ANNOUNCE_FF_ALLBUFFED = "Еда и настой есть у всех. Можно щемить!"
L_ANNOUNCE_FF_CHECK_BUTTON = "Проверка еды и настоя"

-- Says thanks for some spells
L_ANNOUNCE_SS_THANKS = "Спасибо за "
L_ANNOUNCE_SS_RECEIVED = " получено от "

-- Tooltip
L_TOOLTIP_NO_TALENT = "Нет талантов"
L_TOOLTIP_LOADING = "Загрузка..."
L_TOOLTIP_ACH_STATUS = "Ваш статус:"
L_TOOLTIP_ACH_COMPLETE = "Ваш статус: Получено "
L_TOOLTIP_ACH_INCOMPLETE = "Ваш статус: Не завершено"
L_TOOLTIP_SPELL_ID = "Номер заклинания:"
L_TOOLTIP_ITEM_ID = "Номер предмета:"
L_TOOLTIP_WHO_TARGET = "Выбран целью"
L_TOOLTIP_ITEM_COUNT = "Количество предмета:"

-- Misc
L_MISC_UNDRESS = "Раздеть"
L_MISC_DRINKING = " пьёт."
L_MISC_BUY_STACK = "Зажмите Alt и щелкните мышью, чтобы купить связку"
L_MISC_ONECLICK_BUYOUT = "Зажмите Shift и щелкните мышью, чтобы выкупить выбранный предмет без подтверждения"
L_MISC_ONECLICK_BID = "Зажмите Shift и щелкните мышью, чтобы сделать ставку на выбранном предмете без подтверждения"
L_MISC_UI_OUTDATED = "Ваша версия ShestakUI устарела. Вы можете скачать последнюю версию на www.shestak.org"
L_MISC_HEADER_MARK = "Метки по наведению курсора"
L_MISC_BINDER_OPEN = "Назначения мыши"

-- Raid Utility
L_RAID_UTIL_DISBAND = "Распустить группу"

-- Zone name
L_ZONE_WINTERGRASP = "Озеро Ледяных Оков"
L_ZONE_TOLBARAD = "Тол Барад"
L_ZONE_TOLBARADPEN = "Полуостров Тол Барад"
L_ZONE_ARATHIBASIN = "Низина Арати"
L_ZONE_GILNEAS = "Битва за Гилнеас"

-- WatchFrame Wowhead link
L_WATCH_WOWHEAD_LINK = "Ссылка на Wowhead"

-- Toggle Menu
L_TOGGLE_ADDON = "Модификация "
L_TOGGLE_ADDONS = " модификации"
L_TOGGLE_EXPAND = "Показать "
L_TOGGLE_COLLAPSE = "Скрыть "
L_TOGGLE_RCLICK = "ПКМ - Включить или выключить "
L_TOGGLE_LCLICK = "ЛКМ - Показать окно "
L_TOGGLE_RELOAD = " (необходимо перезагрузить интерфейс)"

-- UnitFrame
L_UF_GHOST = "Призрак"
L_UF_DEAD = "Мёртв"
L_UF_OFFLINE = "Не в сети"
L_UF_MANA = "Мало маны"
L_UF_TRINKET_READY = "Аксессуар готов: "
L_UF_TRINKET_USED = "Аксессуар задействован: "
L_UF_WOTF_USED = "WotF задействован: "

-- Map
L_MAP_CURSOR = "Курсор: "
L_MAP_BOUNDS = "Вне карты!"

-- Minimap
L_MINIMAP_CALENDAR = "Календарь"

-- Addons list
L_ALOAD_RL = "Перезагрузить"
L_ALOAD_DEP = "Зависимые ресурсы: "
L_ALOAD_OP_DEP = "Доп. зависимости: "
L_ALOAD_PROFILES = "Профили"
L_ALOAD_ENABLE_ALL = "Вкл. все"
L_ALOAD_DISABLE_ALL = "Выкл. все"
L_ALOAD_PROFILE_NAME = "Имя профиля"
L_ALOAD_SET_TO = "Выбрать профиль.."
L_ALOAD_ADD_TO = "Добавить в профиль.."
L_ALOAD_REMOVE_FROM = "Очистить профиль.."
L_ALOAD_DELETE_PROFILE = "Удалить профиль.."
L_ALOAD_CONFIRM_DELETE = "Вы уверены, что хотите удалить этот профиль? Если да, удерживая shift, нажмите еще раз."

-- Chat
L_CHAT_WHISPER = "От"
L_CHAT_BN_WHISPER = "От"
L_CHAT_AFK = "[AFK]"
L_CHAT_DND = "[DND]"
L_CHAT_GM = "[GM]"
L_CHAT_GUILD = "Г"
L_CHAT_PARTY = "Гр"
L_CHAT_PARTY_LEADER = "Лгр"
L_CHAT_RAID = "Р"
L_CHAT_RAID_LEADER = "ЛР"
L_CHAT_RAID_WARNING = "ОР"
L_CHAT_BATTLEGROUND = "ПБ"
L_CHAT_BATTLEGROUND_LEADER = "ЛПБ"
L_CHAT_OFFICER = "О"
L_CHAT_PET_BATTLE = "БП"
L_CHAT_COME_ONLINE = "входит в игровой мир."
L_CHAT_GONE_OFFLINE = "выходит из игрового мира."
L_CHAT_COME_ONLINE_COLOR = "|cff298F00входит|r в игровой мир!"
L_CHAT_GONE_OFFLINE_COLOR = "|cffff0000выходит|r из игрового мира!"

-- Errors frame
L_ERRORFRAME_L = "Щелкните, чтобы посмотреть ошибки."

-- Bags
L_BAG_BANK = "Банк"
L_BAG_NO_SLOTS = "Невозможно купить еще ячеек!"
L_BAG_COSTS = "Цена: %.2f золотых"
L_BAG_BUY_SLOTS = "Купить новую ячейку командой /bags purchase yes"
L_BAG_OPEN_BANK = "Сначала откройте банк."
L_BAG_SORT = "Сортировать предметы в сумке или банке, если они открыты."
L_BAG_STACK = "Заполнить неполные стопки в сумках или банке, если они открыты."
L_BAG_BUY_BANKS_SLOT = "Купить банковскую ячейку (банк должен быть открыт)."
L_BAG_SORT_MENU = "Сортировать"
L_BAG_SORT_SPECIAL = "Сортировать в спецсумках"
L_BAG_STACK_MENU = "Сложить"
L_BAG_STACK_SPECIAL = "Сложить в спецсумках"
L_BAG_SHOW_BAGS = "Показать сумки"
L_BAG_SORTING_BAGS = "Сортировка завершена."
L_BAG_NOTHING_SORT = "Нечего сортировать."
L_BAG_BAGS_BIDS = "Использование сумок: "
L_BAG_STACK_END = "Заполнение завершено."
L_BAG_RIGHT_CLICK_SEARCH = "ПКМ для поиска"

-- Grab mail
L_MAIL_STOPPED = "Сбор почты приостановлен из-за заполненных сумок."
L_MAIL_UNIQUE = "Сбор почты приостановлен. Найден дубликат уникального предмета в сумке или банке."
L_MAIL_COMPLETE = "Сбор почты окончен."
L_MAIL_NEED = "Нужен почтовый ящик."
L_MAIL_MESSAGES = "сообщений"

-- Loot
L_LOOT_RANDOM = "Случайному игроку"
L_LOOT_SELF = "Забрать себе"
L_LOOT_UNKNOWN = "Неизвестно"
L_LOOT_FISH = "Рыбалка"
L_LOOT_MONSTER = ">> Добыча с "
L_LOOT_CHEST = ">> Добыча из сундука"
L_LOOT_ANNOUNCE = "Объявить"
L_LOOT_TO_RAID = "  рейду"
L_LOOT_TO_PARTY = "  группе"
L_LOOT_TO_GUILD = "  гильдии"
L_LOOT_TO_SAY = "  сказав"
L_LOOT_CANNOT = "Невозможно выбрать"

-- LitePanels AFK module
L_PANELS_AFK = "Вы отсутствуете!"
L_PANELS_AFK_RCLICK = "Нажмите пкм, чтобы скрыть."
L_PANELS_AFK_LCLICK = "Нажмите лкм, чтобы вернуться."

-- Cooldowns
L_COOLDOWNS = "Перезарядка: "

-- Autoinvite
L_INVITE_ENABLE = "Авто приглашение включено: "
L_INVITE_DISABLE = "Авто приглашение выключено"

-- Bind key
L_BIND_SAVED = "Все назначения клавиш сохранены."
L_BIND_DISCARD = "Все новые назначения клавиш были отменены."
L_BIND_INSTRUCT = "Наведите указатель мыши на кнопку действия, чтобы назначить клавишу. Нажмите клавишу ESC или правую кнопку мыши, чтобы убрать назначение."
L_BIND_CLEARED = "Все назначения были отменены для клавиши"
L_BIND_BINDING = "Назначение"
L_BIND_KEY = "Клавиша"
L_BIND_NO_SET = "Не назначено"

-- Talent spec
L_PLANNER_DEATHKNIGHT_1 = "Кровь"
L_PLANNER_DEATHKNIGHT_2 = "Лед"
L_PLANNER_DEATHKNIGHT_3 = "Нечестивость"
L_PLANNER_DRUID_1 = "Баланс"
L_PLANNER_DRUID_2 = "Сила зверя"
L_PLANNER_DRUID_3 = "Страж"
L_PLANNER_DRUID_3 = "Исцеление"
L_PLANNER_HUNTER_1 = "Повелитель зверей"
L_PLANNER_HUNTER_2 = "Стрельба"
L_PLANNER_HUNTER_3 = "Выживание"
L_PLANNER_MAGE_1 = "Тайная магия"
L_PLANNER_MAGE_2 = "Огонь"
L_PLANNER_MAGE_3 = "Лед"
L_PLANNER_MONK_1 = "Хмелевар"
L_PLANNER_MONK_2 = "Ткач туманов"
L_PLANNER_MONK_3 = "Танцующий с ветром"
L_PLANNER_PALADIN_1 = "Свет"
L_PLANNER_PALADIN_2 = "Защита"
L_PLANNER_PALADIN_3 = "Воздаяние"
L_PLANNER_PRIEST_1 = "Послушание"
L_PLANNER_PRIEST_2 = "Свет"
L_PLANNER_PRIEST_3 = "Тьма"
L_PLANNER_ROGUE_1 = "Ликвидация"
L_PLANNER_ROGUE_2 = "Бой"
L_PLANNER_ROGUE_3 = "Скрытность"
L_PLANNER_SHAMAN_1 = "Стихии"
L_PLANNER_SHAMAN_2 = "Совершенствование"
L_PLANNER_SHAMAN_3 = "Исцеление"
L_PLANNER_WARLOCK_1 = "Колдовство"
L_PLANNER_WARLOCK_2 = "Демонология"
L_PLANNER_WARLOCK_3 = "Разрушение"
L_PLANNER_WARRIOR_1 = "Оружие"
L_PLANNER_WARRIOR_2 = "Неистовство"
L_PLANNER_WARRIOR_3 = "Защита"

-- BG stats
L_DATATEXT_BASESASSAULTED = "Штурмы баз:"
L_DATATEXT_BASESDEFENDED = "Оборона баз:"
L_DATATEXT_TOWERSASSAULTED = "Штурмы башен:"
L_DATATEXT_TOWERSDEFENDED = "Оборона башен:"
L_DATATEXT_FLAGSCAPTURED = "Захваты флага:"
L_DATATEXT_FLAGSRETURNED = "Возвраты флага:"
L_DATATEXT_GRAVEYARDSASSAULTED = "Штурмы кладбищ:"
L_DATATEXT_GRAVEYARDSDEFENDED = "Оборона кладбищ:"
L_DATATEXT_DEMOLISHERSDESTROYED = "Разрушителей уничтожено:"
L_DATATEXT_GATESDESTROYED = "Врат разрушено:"
L_DATATEXT_CONTROL = " под контролем:"

-- Info text
L_INFO_ERRORS = "Ошибок не обнаружено."
L_INFO_INVITE = "Приглашение принято от: "
L_INFO_DUEL = "Дуэль отклонена от: "
L_INFO_PET_DUEL = "Битва питомцев отклонена от: "
L_INFO_DISBAND = "Роспуск группы..."
L_INFO_SETTINGS_DBM = "Введите /settings dbm, чтобы применить настройки DBM."
L_INFO_SETTINGS_DXE = "Введите /settings dxe, чтобы применить настройки DXE."
L_INFO_SETTINGS_MSBT = "Введите /settings msbt, чтобы применить настройки MSBT."
L_INFO_SETTINGS_SKADA = "Введите /settings skada, чтобы применить настройки Skada."
L_INFO_SETTINGS_ALL = "Введите /settings all, чтобы применить настройки для всех модификаций."
L_INFO_NOT_INSTALLED = " не установлен."
L_INFO_SKIN_DISABLED1 = "Стилизация для "
L_INFO_SKIN_DISABLED2 = " выключена."

-- Popups
L_POPUP_INSTALLUI = "Это первый запуск ShestakUI для этого персонажа. Необходимо перезагрузить интерфейс для его настройки."
L_POPUP_RESETUI = "Вы уверены, что хотите сбросить настройки ShestakUI?"
L_POPUP_RESETSTATS = "Вы уверены, что хотите сбросить статистику проведенного времени в игре и золота?"
L_POPUP_SWITCH_RAID = "Обе рейдовые раскладки активны, пожалуйста, выберите одну."
L_POPUP_DISBAND_RAID = "Вы уверены, что хотите распустить группу?"
L_POPUP_DISABLEUI = "ShestakUI не работает на этом разрешении, хотите отключить ShestakUI? (Отмена если хотите попробовать другое разрешение)"
L_POPUP_SETTINGS_ALL = "Применить настройки для всех модификаций? (DBM/DXE, Skada и MSBT)"
L_POPUP_SETTINGS_DBM = "Необходимо изменить позиции элементов DBM."
L_POPUP_SETTINGS_DXE = "Необходимо изменить позиции элементов DXE."
L_POPUP_SETTINGS_BW = "Необходимо изменить позиции элементов BigWigs."
L_POPUP_ARMORY = "Оружейная"

-- Welcome message
L_WELCOME_LINE_1 = "Добро пожаловать в ShestakUI "
L_WELCOME_LINE_2_1 = "Введите /cfg для входа в настройки интерфейса, или посетите страницу http://shestak.org"
L_WELCOME_LINE_2_2 = "для получения дополнительной информации."

-- Combat text
L_COMBATTEXT_KILLING_BLOW = "Смерт. Удар"
L_COMBATTEXT_ALREADY_UNLOCKED = "Текст боя уже разблокирован."
L_COMBATTEXT_ALREADY_LOCKED = "Текст боя уже заблокирован."
L_COMBATTEXT_TEST_DISABLED = "Тестовый режим текста боя выключен."
L_COMBATTEXT_TEST_ENABLED = "Тестовый режим текста боя включен."
L_COMBATTEXT_TEST_USE_UNLOCK = "Введите /xct unlock, чтобы передвинуть или изменить размер области текста боя."
L_COMBATTEXT_TEST_USE_LOCK = "Введите /xct lock, чтобы заблокировать области текста боя."
L_COMBATTEXT_TEST_USE_TEST = "Введите /xct test, чтобы включить тестовый режим текста боя."
L_COMBATTEXT_POPUP = "Для сохранения позиций текста боя необходимо перезагрузить интерфейс."
L_COMBATTEXT_UNSAVED = "Позиции текста боя не сохранены, не забудьте перезагрузить интерфейс."
L_COMBATTEXT_UNLOCKED = "Текст боя разблокирован."

-- LiteStats
L_STATS_ACC_PLAYED = "Время игры персонажем"
L_STATS_ADDED_JUNK = "Добавлено нежелательное исключение"
L_STATS_REMOVE_EXCEPTION = "Добавить/удалить исключения."
L_STATS_ALT = "ALT"
L_STATS_AUTO_REPAIR = "Авто починка"
L_STATS_GUILD_REPAIR = "Починка из банка гильдии"
L_STATS_AUTO_SELL = "Авто продажа"
L_STATS_BANDWIDTH = "Скорость:"
L_STATS_DOWNLOAD = "Загрузка:"
L_STATS_CLEARED_JUNK = "Очищен нежелательный список исключений."
L_STATS_CLEAR_EXCEPTIONS = "Очистить список исключений."
L_STATS_WORLD_MAP = "Нажатие открывает карту."
L_STATS_CURRENT_XP = "Текущий/Макс. опыт"
L_STATS_MEMORY_USAGE = "Использование памяти:"
L_STATS_GARBAGE_COLLECTED = "Память очищена"
L_STATS_CHANGE_SORTING = "(Гильдия) ПКМ изменяет сортировку, Шифт+ПКМ изменяет порядок сортировки."
L_STATS_HIDDEN = "Скрытые"
L_STATS_VIEW_NOTES = "Зажмите ALT для просмотра званий, заметок и офицерских заметок."
L_STATS_HR = "ч"
L_STATS_INF = "бесконечный"
L_STATS_ALREADY_EXCEPTIONS = "Уже в списке исключений."
L_STATS_NOT_JUNK = "не является нежелательной."
L_STATS_ITEMLINK = "Ссылка на предмет"
L_STATS_JUNK_EXCEPTIONS = "Нежелательные исключения"
L_STATS_JUNK_LIST = "Нежелательный список"
L_STATS_JUNK_PROFIT = "Прибыль с продажи"
L_STATS_KILLS = "У"
L_STATS_OPEN_CALENDAR = "ЛКМ открывает календарь(/календарь)."
L_STATS_OPEN_CHARACTER = "ЛКМ открывает окно персонажа."
L_STATS_OPEN_CURRENCY = "ЛКМ открывает окно валюты."
L_STATS_OPEN_TALENT = "ЛКМ открывает окно талантов."
L_STATS_XP_RATE = "Уровень ставки XP"
L_STATS_IGNORED_ITEMS = "Список игнорируемых предметов."
L_STATS_TOGGLE_TIME = "Местное / Серверное и 24-ч. показ времени изменяются через меню часов."
L_STATS_LOCATION = "Зона/Координаты"
L_STATS_MEMORY = "Память"
L_STATS_ON = "ВКЛ."
L_STATS_OTHER_OPTIONS = "Другие настройки вы можете изменить в %s"
L_STATS_PLAYED_LEVEL = "Время игры на этом уровне"
L_STATS_PLAYED_SESSION = "Время игры на этой сессии"
L_STATS_PLAYED_TOTAL = "Общее время игры"
L_STATS_QUEST = "З"
L_STATS_QUESTS_TO = "Заданий/Убийств до %s"
L_STATS_REMAINING_XP = "Осталось опыта"
L_STATS_REMOVED_JUNK = "Удалено нежелательное исключение"
L_STATS_RESTED_XP = "Опыт отдыха"
L_STATS_RC_COLLECTS_GARBAGE = "ПКМ очищает память от lua мусора."
L_STATS_RC_TIME_MANAGER = "ПКМ открывает часы."
L_STATS_RC_EXPERIENCE = "ПКМ переключает показ опыта, время игры, слежение за фракцией."
L_STATS_RC_AUTO_REPAIRING = "ПКМ переключает авто починку."
L_STATS_RC_AUTO_SELLING = "ПКМ переключает авто продажу."
L_STATS_RC_TALENT = "ПКМ переключает ваш набор талантов."
L_STATS_SERVER_GOLD = "Золото на сервере"
L_STATS_SESSION_GAIN = "Получено/Потрачено за сессию"
L_STATS_SESSION_XP = "Оценить сессия XP"
L_STATS_INSERTS_COORDS = "Шифт+ПКМ по модулю координат для вставки в чат ваших текущих координат."
L_STATS_EQUIPMENT_CHANGER = "Шифт+ЛКМ или СКМ показывает комплекты экипировки."
L_STATS_SORTING_BY = "Сортировка по"
L_STATS_TIPS = "cоветы:"
L_STATS_TOTAL = "Всего"
L_STATS_TOTAL_MEMORY_USAGE = "Всего использовано памяти:"
L_STATS_NOT_TO_SELL = "Введите /junk, чтобы настроить какие предметы не продавать."
L_STATS_WATCH_CURRENCY = "Показывает отображаемую валюту в подсказке."
L_STATS_WATCH_FACTIONS = "Просмотр фракций из окна репутации."
L_STATS_TOOLTIP_TIME_PLAYED = "Когда уровень максимальный, подсказка будет показывать время игры персонажей."
L_STATS_TOOLTIP_EXPERIENCE = "Когда уровень не максимальный, подсказка будет показывать подробности опыта."

-- Slash commands
L_SLASHCMD_HELP = {
	"Доступные слэш-команды:",
	"/rl - Перезагружает интерфейс.",
	"/rc - Провести проверку готовности группы/рейда.",
	"/gm - Связаться с ГМ. Помощь по игре.",
	"/dis ADDON_NAME - Выключение эддона.",
	"/en ADDON_NAME - Включение эддона.",
	"/rd - Расформировать группу/рейд.",
	"/toraid - Конвертация в группу/рейд.",
	"/teleport - Телепортация из подземелья.",
	"/luaerror ON|OFF - Включение/выключение lua ошибок.",
	"/spec, /ss - Переключение набора талантов.",
	"/heal - Переключает на 'Heal' раскладку.",
	"/dps - Переключает на 'DPS' раскладку.",
	"/frame - Описание не готово.",
	"/farmmode - Увеличивает миникарту.",
	"/moveui - Перемещение элементов интерфейса.",
	"/resetui - Сброс общих настроек на стандартные.",
	"/resetuf - Сброс позиций юнит фреймов.",
	"/resetconfig - Сброс настроек ShestakUI_Config.",
	"/resetstats - Сброс статистики золота и проведенного времени.",
	"/settings ADDON_NAME - Описание не готово.",
	"/ls, /litestats - Описание не готово.",
	"/bags - Управление сумками.",
	"/xct - Управление текстом боя.",
	"/raidcd - Тест рейдовых перезарядок.",
	"/enemycd - Тест вражеских перезарядок.",
	"/pulsecd - Тест своих перезарядок.",
	"/threat - Тест списка угрозы.",
	"/tt - Шепнуть цели.",
	"/ainv - Включение автоматического приглашения.",
	"/testuf - Тест юнит фреймов",
	"/cfg - Открыть настройки интерфейса.",
}

-- ExploreMap
L_EXTRA_EXPLORED = "Исследовано: "
L_EXTRA_ZONEACHID = {
	-- http://www.wowhead.com/achievement=*
	-- e(X)plore achievement id, (Q)uest achievement id
	["Восточные королевства"]			= {X =   42, A =    0, H =    0},
	["Калимдор"]						= {X =   43, A =    0, H =    0},
	["Запределье"]						= {X =   44, A =    0, H =    0},
	["Нордскол"]						= {X =   45, A =    0, H =    0},
	["Пандария"]						= {X = 6974, A =    0, H =    0},
	["Карта мира"]						= {X =  nil, A =    0, H =    0},
	-- Eastern Kingdoms
	["Нагорье Арати"]					= {X =  761, A = 4896, H = 4896},
	["Бесплодные земли"]				= {X =  765, A = 4900, H = 4900},
	["Выжженные земли"]					= {X =  766, A = 4909, H = 4909},
	["Пылающие степи"]					= {X =  775, A = 4901, H = 4901},
	["Перевал Мертвого Ветра"]			= {X =  777, A =    0, H =    0},
	["Дун Морог"]						= {X =  627, A =    0, H =    0},
	["Сумеречный лес"]					= {X =  778, A = 4903, H =    0},
	["Восточные Чумные земли"]			= {X =  771, A = 4892, H = 4892},
	["Элвиннский лес"]					= {X =  776, A =    0, H =    0},
	["Леса Вечной Песни"]				= {X =  859, A =    0, H =    0},
	["Призрачные земли"]				= {X =  858, A =    0, H = 4908},
	["Предгорья Хилсбрада"]				= {X =  772, A =    0, H = 4895},
	["Лок Модан"]						= {X =  779, A = 4899, H =    0},
	["Северная Тернистая долина"]		= {X =  781, A = 4906, H = 4906},
	["Красногорье"]						= {X =  780, A = 4902, H =    0},
	["Тлеющее ущелье"]					= {X =  774, A = 4910, H = 4910},
	["Серебряный бор"]					= {X =  769, A =    0, H = 4894},
	["Болото Печали"]					= {X =  782, A = 4904, H = 4904},
	["Мыс Тернистой долины"]			= {X = 4995, A = 4905, H = 4905},
	["Внутренние земли"]				= {X =  773, A = 4897, H = 4897},
	["Тирисфальские леса"]				= {X =  768, A =    0, H =    0},
	["Западные Чумные земли"]			= {X =  770, A = 4893, H = 4893},
	["Западный Край"]					= {X =  802, A = 4903, H =    0},
	["Болотина"]						= {X =  841, A = 4899, H =    0},
	-- Kalimdor
	["Ясеневый лес"]					= {X =  845, A = 4925, H = 4976},
	["Азшара"]							= {X =  852, A =    0, H = 4927},
	["Остров Лазурной Дымки"]			= {X =  860, A =    0, H =    0},
	["Остров Кровавой Дымки"]			= {X =  861, A = 4926, H = 4926},
	["Темные берега"]					= {X =  844, A = 4928, H = 4928},
	["Пустоши"]							= {X =  848, A = 4930, H = 4930},
	["Дуротар"]							= {X =  728, A =    0, H =    0},
	["Пылевые топи"]					= {X =  850, A = 4929, H = 4978},
	["Оскверненный лес"]				= {X =  853, A = 4931, H = 4931},
	["Фералас"]							= {X =  849, A = 4932, H = 4979},
	["Лунная поляна"]					= {X =  855, A =    0, H =    0},
	["Мулгор"]							= {X =  736, A =    0, H =    0},
	["Северные Степи"]					= {X =  750, A =    0, H = 4933},
	["Силитус"]							= {X =  856, A = 4934, H = 4934},
	["Южные Степи"]						= {X = 4996, A = 4937, H = 4981},
	["Когтистые горы"]					= {X =  847, A = 4936, H = 4980},
	["Танарис"]							= {X =  851, A = 4935, H = 4935},
	["Тельдрассил"]						= {X =  842, A =    0, H =    0},
	["Тысяча Игл"]						= {X =  846, A = 4938, H = 4938},
	["Кратер Ун'Горо"]					= {X =  854, A = 4939, H = 4939},
	["Зимние Ключи"]					= {X =  857, A = 4940, H = 4940},
	-- Outland
	["Острогорье"]						= {X =  865, A = 1193, H = 1193},
	["Полуостров Адского Пламени"]		= {X =  862, A = 1189, H = 1271},
	["Награнд"]							= {X =  866, A = 1192, H = 1273},
	["Пустоверть"]						= {X =  843, A = 1194, H = 1194},
	["Долина Призрачной Луны"]			= {X =  864, A = 1195, H = 1195},
	["Лес Тероккар"]					= {X =  867, A = 1191, H = 1272},
	["Зангартопь"]						= {X =  863, A = 1190, H = 1190},
	-- Northrend
	["Борейская тундра"]				= {X = 1264, A =   33, H = 1358},
	["Лес Хрустальной Песни"]			= {X = 1457, A =    0, H =    0},
	["Драконий Погост"]					= {X = 1265, A =   35, H = 1356},
	["Седые холмы"]						= {X = 1266, A =   37, H = 1357},
	["Ревущий фьорд"]					= {X = 1263, A =   34, H = 1356},
	["Ледяная Корона"]					= {X = 1270, A =   40, H =   40},
	["Низина Шолазар"]					= {X = 1268, A =   39, H =   39},
	["Грозовая Гряда"]					= {X = 1269, A =   38, H =   38},
	["Зул'Драк"]						= {X = 1267, A =   36, H =   36},
	-- Cataclysm
	["Подземье"]						= {X = 4864, A = 4871, H = 4871},
	["Хиджал"]							= {X = 4863, A = 4870, H = 4870},
	["Сумеречное нагорье"]				= {X = 4866, A = 4873, H = 5501},
	["Ульдум"]							= {X = 4865, A = 4872, H = 4872},
	["Вайш'ир"]							= {X = 4825, A = 4869, H = 4982},
	["Тол Барад"]						= {X =    0, A = 4874, H = 4874},
	["Полуостров Тол Барад"]			= {X =    0, A = 4874, H = 4874},
	-- Pandaria
	["Нефритовый лес"]					= {X = 6351, A = 6300, H = 6534},
	["Долина Четырех Ветров"]			= {X = 6969, A = 6301, H = 6301},
	--["Красарангские джунгли"]			= {X = 6975, A = 6535, H = 6536},
	["Вершина Кунь-Лай"]				= {X = 6976, A = 6537, H = 6538},
	["Танлунские степи"]				= {X = 6977, A = 6539, H = 6539},
	["Жуткие пустоши"]					= {X = 6978, A = 6540, H = 6540},
	["Вечноцветущий Дол"]				= {X = 6979, A =    0, H =    0},
	-- Boolean Explores
	["Остров Кель'Данас"]				= {X =  868, A =    0, H =    0},
	["Ан'Кираж: Павшее Королевство"]	= {X =    0, A =    0, H =    0},
	["Озеро Ледяных Оков"]				= {X =    0, A =    0, H =    0},
}