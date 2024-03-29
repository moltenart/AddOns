﻿if GetLocale() ~= "zhTW" then return end

----------------------------------------------------------------------------------------
--	Localization for zhTW client(Thanks to Mania and tat2dawn for the translation)
----------------------------------------------------------------------------------------
L_GUI_BUTTON_RESET = "重載UI"
L_GUI_SET_SAVED_SETTTINGS = "為每個角色分別保存設定"
L_GUI_RESET_CHAR = "你確定要重置你所有角色的ShestakUI設定?"
L_GUI_RESET_ALL = "你確定要重置全部ShestakUI設定?"
L_GUI_PER_CHAR = "你確定要設定為或者取消設定'每個角色單獨設定'模式?"
L_GUI_MAKE_SELECTION = "在你繼續調整設定前必須選選擇一個選項."

-- General options
L_GUI_GENERAL_AUTOSCALE = "自動UI縮放"
L_GUI_GENERAL_MULTISAMPLE = "多重採樣保護 (保證1像素邊框)"
L_GUI_GENERAL_UISCALE = "UI縮放(當自動縮放關閉時)"
L_GUI_GENERAL_WELCOME_MESSAGE = "顯示歡迎信息"
L_GUI_GENERAL_LAG_TOLERANCE = "自動更新自訂延遲容許值"

-- Miscellaneous options
L_GUI_MISC_MARKING = "點擊shift顯示團隊標記圖示菜單"
L_GUI_MISC_INVKEYWORD = "自動邀請關鍵字 (/ainv)"
L_GUI_MISC_SPIN_CAMERA = "AFK時旋轉鏡頭"
L_GUI_MISC_VEHICLE_MOUSEOVER = "駕駛框體解鎖"
L_GUI_MISC_QUEST_AUTOBUTTON = "任務/道具自動按鈕"
L_GUI_MISC_RAID_TOOLS = "團隊工具"
L_GUI_MISC_PROFESSION_TABS = "在專業和商業框體顯示專業技能按鈕"
L_GUI_MISC_HIDE_BG_SPAM = "在戰場内移除Boss表情信息"
L_GUI_MISC_ITEM_LEVEL = "Item level on character slot buttons" -- Needs review
L_GUI_MISC_GEM_COUNTER = "Displays how many red/blue/yellow gems you have" -- Needs review
L_GUI_MISC_ALREADY_KNOWN = "Colorizes recipes/mounts/pets that is already known" -- Needs review
L_GUI_MISC_DISENCHANTING = "One-click Milling, Prospecting and Disenchanting" -- Needs review
L_GUI_MISC_SUM_BUYOUTS = "Sum upp all current auctions" -- Needs review
L_GUI_MISC_CLICK_CAST = "Simple click2cast spell binder" -- Needs review

-- Announcements options
L_GUI_ANNOUNCEMENTS = "通告提醒"
L_GUI_ANNOUNCEMENTS_DRINKING = "當敵人在進食敵人在進食在聊天窗口進行通告"
L_GUI_ANNOUNCEMENTS_INTERRUPTS = "當你成功打斷的時候在隊伍/團隊中進行通告"
L_GUI_ANNOUNCEMENTS_SPELLS = "當你使用相同法術的時候在隊伍/團隊中進行通告"
L_GUI_ANNOUNCEMENTS_SPELLS_FROM_ALL = "檢視所有隊員的法術"
L_GUI_ANNOUNCEMENTS_LIGHTWELL = "Announce your Lightwell" -- Needs review
L_GUI_ANNOUNCEMENTS_TOY_TRAIN = "Announce Toy Train or Direbrew's Remote cast" -- Needs review
L_GUI_ANNOUNCEMENTS_SAYS_THANKS = "Says thanks for some spells" -- Needs review
L_GUI_ANNOUNCEMENTS_PULL_COUNTDOWN = "Pull countdown announce(/run PullCountdown.Pull(#))" -- Needs review
L_GUI_ANNOUNCEMENTS_FLASK_FOOD = "Announce the usage of flasks and food" -- Needs review
L_GUI_ANNOUNCEMENTS_FLASK_FOOD_AUTO = "Auto announce when ReadyCheck(if enable, announce to raid channel)" -- Needs review
L_GUI_ANNOUNCEMENTS_FLASK_FOOD_RAID = "Announce to raid channel" -- Needs review

-- Automation options
L_GUI_AUTOMATION = "Automation" -- Needs review
L_GUI_AUTOMATION_RESURRECTION = "在戰場中自動釋放靈魂"
L_GUI_AUTOMATION_SCREENSHOT = "當你獲得成就的時候自動截屏"
L_GUI_AUTOMATION_SOLVE_ARTIFACT = "Auto popup for solve artifact" -- Needs review
L_GUI_AUTOMATION_CHEFS_HAT = "Auto equip Chef's Hat" -- Needs review
L_GUI_AUTOMATION_ACCEPT_INVITE = "自動接受組隊邀請"
L_GUI_AUTOMATION_DECLINE_DUEL = "自動取消决鬥"
L_GUI_AUTOMATION_ACCEPT_QUEST = "自動接受任務"
L_GUI_AUTOMATION_SKIP_CINEMATIC = "Auto skip cinematics/movies" -- Needs review
L_GUI_AUTOMATION_AUTO_ROLE = "Auto set your role" -- Needs review
L_GUI_AUTOMATION_CANCEL_BAD_BUFFS = "Auto cancel various buffs" -- Needs review
L_GUI_AUTOMATION_TAB_BINDER = "Auto change Tab key to only target enemy players" -- Needs review

-- Skins options
L_GUI_SKINS = "風格化"
L_GUI_SKINS_BLIZZARD = "開啟暴雪默認介面風格增強"
L_GUI_SKINS_MINIMAP_BUTTONS = "開啟小地圖插件圖標風格增強"
L_GUI_SKINS_CLCR = "開啟CLCRet樣式增強"
L_GUI_SKINS_CLCP = "開啟CLCProt樣式增強"
L_GUI_SKINS_COMBUSTION_HELPER = "開啟CombustionHelper樣式增強"
L_GUI_SKINS_BW = "開啟BigWigs樣式增強"
L_GUI_SKINS_DBM = "開啟DBM樣式增強"
L_GUI_SKINS_DXE = "開啟DXE樣式增強"
L_GUI_SKINS_OMEN = "開啟Omen樣式增強"
L_GUI_SKINS_RECOUNT = "開啟Recount樣式增強"

-- Combat text options
L_GUI_COMBATTEXT = "戰鬥文字"
L_GUI_COMBATTEXT_ENABLE = "啟用戰鬥信息"
L_GUI_COMBATTEXT_BLIZZ_HEAD_NUMBERS = "使用暴雪默認傷害/治療模式（模型頂部/玩家頭像）"
L_GUI_COMBATTEXT_DAMAGE_STYLE = "改變模型頂部/玩家頭像的傷害/治療字體"
L_GUI_COMBATTEXT_DAMAGE = "獨立顯示傷害輸出"
L_GUI_COMBATTEXT_HEALING = "獨立顯示治療輸出"
L_GUI_COMBATTEXT_HOTS = "顯示hot造成的治療"
L_GUI_COMBATTEXT_OVERHEALING = "顯示過量治療輸出"
L_GUI_COMBATTEXT_PET_DAMAGE = "顯示寵物傷害輸出"
L_GUI_COMBATTEXT_DOT_DAMAGE = "顯示dot造成的傷害"
L_GUI_COMBATTEXT_DAMAGE_COLOR = "以法術系別顏色顯示傷害文字"
L_GUI_COMBATTEXT_CRIT_PREFIX = "文本右側致命效果修飾符號"
L_GUI_COMBATTEXT_CRIT_POSTFIX = "文本右側致命效果修飾符號"
L_GUI_COMBATTEXT_ICONS = "顯示輸出傷害技能圖示"
L_GUI_COMBATTEXT_ICON_SIZE = "傷害輸出圖示大小"
L_GUI_COMBATTEXT_TRESHOLD = "傷害輸出信息最小閥值"
L_GUI_COMBATTEXT_HEAL_TRESHOLD = "治療承受信息/輸出最小閥值"
L_GUI_COMBATTEXT_SCROLLABLE = "允許滑鼠調整滾動區域"
L_GUI_COMBATTEXT_MAX_LINES = "滾動區域顯示最多行數"
L_GUI_COMBATTEXT_TIME_VISIBLE = "信息保留時間(秒)"
L_GUI_COMBATTEXT_STOP_VE_SPAM = "自動屏蔽吸血鬼之擁(@暗牧)的垃圾信息"
L_GUI_COMBATTEXT_DK_RUNES = "顯示死亡騎士符文恢復"
L_GUI_COMBATTEXT_KILLINGBLOW = "顯示擊殺信息"
L_GUI_COMBATTEXT_MERGE_AOE_SPAM = "將AOE傷害合併為一條信息"
L_GUI_COMBATTEXT_MERGE_AOE_SPAM_TIME = "AOE傷害合併信息閥值(秒)"
L_GUI_COMBATTEXT_DISPEL = "當你驅散成功的時候提示"
L_GUI_COMBATTEXT_INTERRUPT = "當你打斷成功的時候提示"
L_GUI_COMBATTEXT_DIRECTION = "Scrolling Direction('top'(goes down) or 'bottom'(goes up))" -- Needs review

-- Buffs reminder options
L_GUI_REMINDER = "Buffs提示"
L_GUI_REMINDER_SOLO_ENABLE = "顯示自身缺少buffs"
L_GUI_REMINDER_SOLO_SOUND = "開啟自身缺少buffs聲音提示"
L_GUI_REMINDER_SOLO_SIZE = "自身buff圖示大小"
L_GUI_REMINDER_RAID_ENABLE = "顯示缺少的團隊buffs"
L_GUI_REMINDER_RAID_ALWAYS = "總是顯示buffs提示"
L_GUI_REMINDER_RAID_SIZE = "團隊buffs圖示大小"
L_GUI_REMINDER_RAID_ALPHA = "當buffs存在時透明顯示圖示"

-- Raid cooldowns options
L_GUI_COOLDOWN_RAID = "團隊冷卻"
L_GUI_COOLDOWN_RAID_ENABLE = "開啟團隊技能冷卻"
L_GUI_COOLDOWN_RAID_HEIGHT = "團隊技能冷卻欄高度"
L_GUI_COOLDOWN_RAID_WIDTH = "團隊技能冷卻欄寬度"
L_GUI_COOLDOWN_RAID_SORT = "團隊技能冷卻欄向上延伸"
L_GUI_COOLDOWN_RAID_ICONS = "團隊技能冷卻欄圖示"
L_GUI_COOLDOWN_RAID_IN_RAID = "在團隊中顯示團隊技能冷卻"
L_GUI_COOLDOWN_RAID_IN_PARTY = "在隊伍中顯示團隊技能冷卻"
L_GUI_COOLDOWN_RAID_IN_ARENA = "在競技場中顯示團隊技能冷卻"

-- Enemy cooldowns options
L_GUI_COOLDOWN_ENEMY = "敵對冷卻"
L_GUI_COOLDOWN_ENEMY_ENABLE = "敵對技能冷卻"
L_GUI_COOLDOWN_ENEMY_SIZE = "敵對技能冷卻圖示大小"
L_GUI_COOLDOWN_ENEMY_DIRECTION = "敵對冷卻圖標的方向 (RIGHT|LEFT|UP|DOWN)"
L_GUI_COOLDOWN_ENEMY_EVERYWHERE = "在任何時候顯示敵對技能冷卻"
L_GUI_COOLDOWN_ENEMY_IN_BG = "在戰場中顯示敵對技能冷卻"
L_GUI_COOLDOWN_ENEMY_IN_ARENA = "在競技場中顯示敵對技能冷卻"

-- Pulse cooldowns options
L_GUI_COOLDOWN_PULSE = "技能冷卻閃爍"
L_GUI_COOLDOWN_PULSE_ENABLE = "開啟冷卻閃爍提示"
L_GUI_COOLDOWN_PULSE_SIZE = "冷卻閃爍提示大小"
L_GUI_COOLDOWN_PULSE_SOUND = "播放聲音提醒"
L_GUI_COOLDOWN_PULSE_ANIM_SCALE = "動畫縮放"
L_GUI_COOLDOWN_PULSE_HOLD_TIME = "不透明狀態持續時間"
L_GUI_COOLDOWN_PULSE_THRESHOLD = "持續時間最小閥值"

-- Threat options
L_GUI_THREAT = "仇恨欄"
L_GUI_THREAT_ENABLE = "開啟仇恨欄"
L_GUI_THREAT_HEIGHT = "仇恨欄高度"
L_GUI_THREAT_WIDTH = "仇恨欄寬度"
L_GUI_THREAT_ROWS = "仇恨欄數目"
L_GUI_THREAT_HIDE_SOLO = "僅在隊伍/團隊中使用"

-- Tooltip options
L_GUI_TOOLTIP = "提示資訊"
L_GUI_TOOLTIP_ENABLE = "開啟提示資訊增強"
L_GUI_TOOLTIP_SHIFT = "按下shift時顯示提示資訊"
L_GUI_TOOLTIP_CURSOR = "提示資訊跟隨滑鼠"
L_GUI_TOOLTIP_ICON = "在提示資訊中顯示物品圖示"
L_GUI_TOOLTIP_HEALTH = "顯示百分比生命值"
L_GUI_TOOLTIP_HIDE = "隱藏動作條的提示提示資訊."
L_GUI_TOOLTIP_HIDE_COMBAT = "戰鬥中隱藏滑鼠提示"
L_GUI_TOOLTIP_TALENTS = "在提示資訊中顯示天賦"
L_GUI_TOOLTIP_ACHIEVEMENTS = "在提示資訊中顯示成就比較"
L_GUI_TOOLTIP_TARGET = "在提示資訊中顯示目標的目標"
L_GUI_TOOLTIP_TITLE = "在提示資訊中顯示目標稱號"
L_GUI_TOOLTIP_RANK = "在提示資訊中顯示公會階級"
L_GUI_TOOLTIP_ARENA_EXPERIENCE = "在提示資訊中顯示競技場等級"
L_GUI_TOOLTIP_SPELL_ID = "法術ID"
L_GUI_TOOLTIP_RAID_ICON = "團隊圖示"
L_GUI_TOOLTIP_WHO_TARGETTING = "當你在隊伍/團隊中時顯示誰以目標為目標的提示"
L_GUI_TOOLTIP_ITEM_COUNT = "叠堆數量"
L_GUI_TOOLTIP_UNIT_ROLE = "單位角色"
L_GUI_TOOLTIP_REFORGE = "Item reforge info" -- Needs review
L_GUI_TOOLTIP_SYMBIOSIS = "Symbiosis info" -- Needs review
L_GUI_TOOLTIP_INSTANCE_LOCK = "Your instance lock status in tooltip" -- Needs review
L_GUI_TOOLTIP_ITEM_TRANSMOGRIFY = "Displays items can not be transmogrified" -- Needs review

-- Chat options
L_GUI_CHAT_ENABLE = "開啟聊天框增強"
L_GUI_CHAT_BACKGROUND = "開啟聊天框背景"
L_GUI_CHAT_BACKGROUND_ALPHA = "聊天背景透明度"
L_GUI_CHAT_SPAM = "屏蔽無用系統信息(*玩家1* 在決鬥中戰勝了 *玩家2*)"
L_GUI_CHAT_GOLD = "屏蔽某些玩家的垃圾信息"
L_GUI_CHAT_WIDTH = "框體寬度"
L_GUI_CHAT_HEIGHT = "框體高度"
L_GUI_CHAT_BAR = "顯示頻道快捷圖示欄"
L_GUI_CHAT_BAR_MOUSEOVER = "Lite Button Bar on mouseover" -- Needs review
L_GUI_CHAT_TIMESTAMP = "時間標籤顏色"
L_GUI_CHAT_WHISP = "接受密語時聲音提示"
L_GUI_CHAT_SKIN_BUBBLE = "美化默認聊天泡泡"
L_GUI_CHAT_CL_TAB = "顯示戰鬥記錄標簽"
L_GUI_CHAT_TABS_MOUSEOVER = "Chat tabs on mouseover" -- Needs review
L_GUI_CHAT_STICKY = "記住上一次使用的頻道"
L_GUI_CHAT_DAMAGE_METER_SPAM = "Merge damage meter spam in one line-link" -- Needs review

-- Bag options
L_GUI_BAGS = "背包"
L_GUI_BAGS_ENABLE = "開啟背包增強"
L_GUI_BAGS_BUTTON_SIZE = "空格大小" 
L_GUI_BAGS_BUTTON_SPACE = "空格間隔" 
L_GUI_BAGS_BANK = "銀行背包每行數目"
L_GUI_BAGS_BAG = "背包每行數目"

-- Minimap options
L_GUI_MINIMAP_ENABLE = "開啟迷你地圖增強"
L_GUI_MINIMAP_ICON = "追蹤類型圖示"
L_GUI_MINIMAP_SIZE = "迷你地圖大小"
L_GUI_MINIMAP_HIDE_COMBAT = "戰鬥中隱藏迷你地圖"
L_GUI_MINIMAP_TOGGLE_MENU = "顯示可開/関的菜單"
L_GUI_MINIMAP_MERGE_MENUS = "在小地圖上側菜單中整合主要功能和插件按鈕(禁用更簡潔一點)"

-- Map options
L_GUI_MAP_ENABLE = "開啟世界地圖增強"
L_GUI_MAP_SCALE = "世界地圖縮放"
L_GUI_MAP_BG_STYLIZATION = "戰場地圖風格"
L_GUI_MAP_BOSS_COUNT = "Show boss count in World Map" -- Needs review
L_GUI_MAP_EXPLORE = "Tracking Explorer and Lore Master achievements in World Map" -- Needs review

-- Loot options
L_GUI_LOOT_ENABLE = "開啟拾取增強"
L_GUI_LOOT_ROLL_ENABLE = "開啟團隊拾取框體"
L_GUI_LOOT_ICON_SIZE = "拾取框體圖示大小"
L_GUI_LOOT_WIDTH = "拾取框體寬度"
L_GUI_LOOT_AUTOGREED = "滿級后自動貪婪綠色物品"
L_GUI_LOOT_AUTODE = "自動選擇分解選項"

-- Nameplate options
L_GUI_NAMEPLATE_ENABLE = "開啟單位名條"
L_GUI_NAMEPLATE_COMBAT = "在戰鬥中自動顯示單位名條"
L_GUI_NAMEPLATE_HEALTH = "顯示百分比生命值"
L_GUI_NAMEPLATE_CASTBAR = "顯示施法條"
L_GUI_NAMEPLATE_HEIGHT = "單位名條高度"
L_GUI_NAMEPLATE_WIDTH = "單位名條寬度"
L_GUI_NAMEPLATE_AD_HEIGHT = "選擇的單位名條額外高度"
L_GUI_NAMEPLATE_AD_WIDTH = "選擇的單位名條額外寬度"
L_GUI_NAMEPLATE_CASTBAR_NAME = "顯示施法名稱"
L_GUI_NAMEPLATE_THREAT = "顯示仇恨情況"
L_GUI_NAMEPLATE_CLASS_ICON = "在PVP情況下顯示職業圖示"
L_GUI_NAMEPLATE_NAME_ABBREV = "顯示名字縮寫"
L_GUI_NAMEPLATE_GOOD_COLOR = "安全仇恨著色"
L_GUI_NAMEPLATE_NEAR_COLOR = "臨近仇恨著色"
L_GUI_NAMEPLATE_BAD_COLOR = "危險仇恨著色"
L_GUI_NAMEPLATE_SHOW_DEBUFFS = "顯示debuffs(需要關閉名稱縮寫)"
L_GUI_NAMEPLATE_DEBUFFS_SIZE = "Debuffs大小"
L_GUI_NAMEPLATE_HEALER_ICON = "Show healer icon on all enemy healers nameplate in battlegrounds" -- Needs review

-- ActionBar options
L_GUI_ACTIONBAR_ENABLE = "開啟快捷列"
L_GUI_ACTIONBAR_HOTKEY = "顯示熱鍵文字"
L_GUI_ACTIONBAR_MACRO = "顯示巨集名字"
L_GUI_ACTIONBAR_GRID = "顯示空的快捷列按鈕"
L_GUI_ACTIONBAR_BUTTON_SIZE = "按鈕大小"
L_GUI_ACTIONBAR_BUTTON_SPACE = "按鈕間隔"
L_GUI_ACTIONBAR_SPLIT_BARS = "把第五動作條分成兩個有六個位置的小動作條"
L_GUI_ACTIONBAR_CLASSCOLOR_BORDER = "為自己的動作條按鈕邊框也開啟職業邊框染色"
L_GUI_ACTIONBAR_TOGGLE_MODE = "開啟動作條自由折疊功能(可隨時調節動作條顯示數目)"
L_GUI_ACTIONBAR_BOTTOMBARS = "底部快捷列數目 (1, 2 or 3)"
L_GUI_ACTIONBAR_RIGHTBARS = "右側快捷列數目 (0, 1, 2 or 3)"
L_GUI_ACTIONBAR_RIGHTBARS_MOUSEOVER = "滑鼠劃過顯示右側快捷列"
L_GUI_ACTIONBAR_PETBAR_MOUSEOVER = "滑鼠劃過顯示寵物快捷列"
L_GUI_ACTIONBAR_PETBAR_HIDE = "隱藏寵物快捷列" 
L_GUI_ACTIONBAR_PETBAR_HORIZONTAL = "打開橫向寵物快捷列"
L_GUI_ACTIONBAR_STANCEBAR_MOUSEOVER = "滑鼠劃過顯示變身/姿態/圖騰快捷列"
L_GUI_ACTIONBAR_STANCEBAR_HIDE = "隱藏變身/姿態/圖騰快捷列"
L_GUI_ACTIONBAR_STANCEBAR_HORIZONTAL = "橫向顯示變身/姿態快捷列"
L_GUI_ACTIONBAR_MICROMENU = "Enable micro menu" -- Needs review
L_GUI_ACTIONBAR_MICROMENU_MOUSEOVER = "Micro menu on mouseover" -- Needs review

-- Auras/Buffs/Debuffs
L_GUI_AURA_PLAYER_BUFF_SIZE = "玩家Buffs圖示大小"
L_GUI_AURA_SHOW_SPIRAL = "在圖示上顯示漩渦冷卻樣式"
L_GUI_AURA_SHOW_TIMER = "在圖示上顯示層數堆疊"
L_GUI_AURA_PLAYER_AURAS = "在玩家框體顯示法術效果"
L_GUI_AURA_TARGET_AURAS = "在目標框體顯示法術效果"
L_GUI_AURA_FOCUS_DEBUFFS = "在焦點目標框體顯示DeBuffs"
L_GUI_AURA_FOT_DEBUFFS = "在焦點目標的目標框體顯示DeBuffs"
L_GUI_AURA_PET_DEBUFFS = "在寵物框體顯示DeBuffs"
L_GUI_AURA_TOT_DEBUFFS = "在目標的目標框體顯示DeBuffs"
L_GUI_AURA_BOSS_BUFFS = "在BOSS框體顯示Buff"
L_GUI_AURA_PLAYER_AURA_ONLY = "在目標框體只顯示自己的DeBuffs"
L_GUI_AURA_DEBUFF_COLOR_TYPE = "DeBuffs著色依照法術類型"
L_GUI_AURA_CAST_BY = "在滑鼠提示中顯示是誰施放了這個 增益/減益"
L_GUI_AURA_CLASSCOLOR_BORDER = "為自己的BUFF圖標邊框也開啟職業邊框染色"

-- Unit Frames options
L_GUI_UF_ENABLE = "開啟單位框架"
L_GUI_UF_OWN_COLOR = "在預測治療中顯示你的治療量"
L_GUI_UF_UF_COLOR = "治療條職業著色"
L_GUI_UF_ENEMY_HEALTH_COLOR = "敵對目標生命條以紅色著色"
L_GUI_UF_TOTAL_VALUE = "在玩家與目標框體顯示詳細的文字變化"
L_GUI_UF_COLOR_VALUE = "生命值與魔法值以職業顏色著色"
L_GUI_UF_BAR_COLOR_VALUE = "生命值以現在剩餘生命著色"
L_GUI_UF_UNIT_CASTBAR = "顯示施法條"
L_GUI_UF_CASTBAR_ICON = "顯示施法條圖示"
L_GUI_UF_CASTBAR_LATENCY = "施法條延遲"
L_GUI_UF_CASTBAR_TICKS = "施法條跳數"
L_GUI_UF_SHOW_PET = "顯示寵物框體"
L_GUI_UF_SHOW_FOCUS = "顯示焦點框體"
L_GUI_UF_SHOW_TOT = "顯示目標的目標框體"
L_GUI_UF_SHOW_BOSS = "顯示boss框體"
L_GUI_UF_BOSS_RIGHT = "在右側顯示Boss框體"
L_GUI_UF_SHOW_ARENA = "顯示競技場框體"
L_GUI_UF_ARENA_RIGHT = "在右側顯示競技場框體"
L_GUI_UF_ICONS_PVP = "滑鼠劃過玩家/目標顯示PVP狀態文字"
L_GUI_UF_ICONS_COMBAT = "顯示戰鬥標識"
L_GUI_UF_ICONS_RESTING = "顯示休息標識"
L_GUI_UF_PORTRAIT_ENABLE = "開啟玩家/目標頭像"
L_GUI_UF_PORTRAIT_CLASSCOLOR_BORDER = "開啟職業顏色邊框"
L_GUI_UF_PORTRAIT_HEIGHT = "頭像高度"
L_GUI_UF_PORTRAIT_WIDTH = "頭像寬度"
L_GUI_UF_PLUGINS_GCD = "公共CD計時"
L_GUI_UF_PLUGINS_SWING = "普通攻擊計時條"
L_GUI_UF_PLUGINS_NECRO_STRIKE = "開啟亡域打擊計時條"
L_GUI_UF_PLUGINS_REPUTATION_BAR = "聲望條"
L_GUI_UF_PLUGINS_EXPERIENCE_BAR = "經驗條"
L_GUI_UF_PLUGINS_SMOOTH_BAR = "平滑條"
L_GUI_UF_PLUGINS_TALENTS = "開啟顯示敵對玩家天賦"
L_GUI_UF_PLUGINS_COMBAT_FEEDBACK = "顯示玩家/目標的文字戰鬥信息"
L_GUI_UF_PLUGINS_FADER = "無必要時隱藏玩家框體"
L_GUI_UF_PLUGINS_DIMINISHING = "Diminishing Returns icons on arena frames" -- Needs review

-- Unit Frames Class bar options
L_GUI_UF_PLUGINS_CLASS_BAR = "Unit Frames Class bars" -- Needs review
L_GUI_UF_PLUGINS_COMBO_BAR = "盜賊|德魯伊連擊點圖示"
L_GUI_UF_PLUGINS_SHADOW_BAR = "Enable Shadow Orbs bar" -- Needs review
L_GUI_UF_PLUGINS_CHI_BAR = "Enable Chi bar" -- Needs review
L_GUI_UF_PLUGINS_VENGEANCE_BAR = "開啟仇恨欄"
L_GUI_UF_PLUGINS_ECLIPSE_BAR = "開啟日蝕/月蝕欄"
L_GUI_UF_PLUGINS_HOLY_BAR = "開啟聖光能量欄"
L_GUI_UF_PLUGINS_SHARD_BAR = "開啟靈魂碎片欄"
L_GUI_UF_PLUGINS_RUNE_BAR = "符文條"
L_GUI_UF_PLUGINS_TOTEM_BAR = "圖騰欄"

-- Raid Frames options
L_GUI_UF_AGGRO_BORDER = "仇恨邊框"
L_GUI_UF_DEFICIT_HEALTH = "團隊生命值虧減模式"
L_GUI_UF_SHOW_PARTY = "顯示隊伍框體"
L_GUI_UF_SHOW_RAID = "顯示團隊框體"
L_GUI_UF_VERTICAL_HEALTH = "垂直顯示團隊框體生命值"
L_GUI_UF_ALPHA_HEALTH = "100%生命值時透明顯示生命欄"
L_GUI_UF_SHOW_RANGE = "在團隊框體中距離透明度變化"
L_GUI_UF_RANGE_ALPHA = "淡化超出距離的單位框體"
L_GUI_UF_SOLO_MODE = "總是顯示玩家框體"
L_GUI_UF_PLAYER_PARTY = "在小隊中顯示玩家框體"
L_GUI_UF_SHOW_TANK = "顯示團隊主坦克框體"
L_GUI_UF_SHOW_TANK_TT = "顯示坦克目標的目標"
L_GUI_UF_RAID_GROUP = "顯示小隊數目(ShestakUI_Heal風格)"
L_GUI_UF_RAID_VERTICAL_GROUP = "竪向排列團隊隊伍(ShestakUI_Heal風格)"
L_GUI_UF_ICONS_LEADER = "顯示團隊隊長標識/助手標識/分配者標識"
L_GUI_UF_ICONS_LFD_ROLE = "顯示隊長標識"
L_GUI_UF_ICONS_RAID_MARK = "顯示團隊標記"
L_GUI_UF_ICONS_READY_CHECK = "確認就緒情況圖示"
L_GUI_UF_PLUGINS_DEBUFFHIGHLIGHT_ICON = "Debuff與圖示高亮"
L_GUI_UF_PLUGINS_AURA_WATCH = "團隊法術監視"
L_GUI_UF_PLUGINS_AURA_WATCH_TIMER = "顯示團隊減益時間"
L_GUI_UF_PLUGINS_HEALCOMM = "即將受到的治療條"
L_GUI_UF_PLUGINS_AUTO_RESURRECTION = "滑鼠中鍵點擊已死亡的角色時自動施放復活技能(Clique啟用時不生效)"

-- Panel options
L_GUI_TOP_PANEL = "頂部面板"
L_GUI_TOP_PANEL_ENABLE = "開啟頂部面板"
L_GUI_TOP_PANEL_MOUSE = "滑鼠劃過時顯示頂部面板"
L_GUI_TOP_PANEL_WIDTH = "面板寬度"
L_GUI_TOP_PANEL_HEIGHT = "面板高度"

-- Stats options
L_GUI_STATS = "統計面板"
L_GUI_STATS_BG = "戰場分數"
L_GUI_STATS_CLOCK = "時鐘"
L_GUI_STATS_LATENCY = "延遲"
L_GUI_STATS_MEMORY = "記憶體佔用"
L_GUI_STATS_FPS = "幀數"
L_GUI_STATS_EXPERIENCE = "經驗"
L_GUI_STATS_COORDS = "座標"
L_GUI_STATS_LOCATION = "位置"

-- Error options
L_GUI_ERROR = "錯誤收集"
L_GUI_ERROR_HIDE = "隱藏錯誤提示"
L_GUI_ERROR_BLACK = "隱藏黑名單錯誤"
L_GUI_ERROR_WHITE = "顯示白名單錯誤"
L_GUI_ERROR_HIDE_COMBAT = "在戰鬥中隱藏錯誤提示"