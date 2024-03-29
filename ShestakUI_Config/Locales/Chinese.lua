﻿if GetLocale() ~= "zhCN" then return end

----------------------------------------------------------------------------------------
--	Localization for zhCN client(Thanks to Mania and tat2dawn for the translation)
----------------------------------------------------------------------------------------
L_GUI_BUTTON_RESET = "重载插件"
L_GUI_SET_SAVED_SETTTINGS = "为每个角色分别保存设定"
L_GUI_RESET_CHAR = "你确定要重置你所有角色的ShestakUI设定?"
L_GUI_RESET_ALL = "你确定要重置全部ShestakUI设定?"
L_GUI_PER_CHAR = "你确定要设定为或者取消设定'每个角色单独设定'模式?"
L_GUI_MAKE_SELECTION = "在你继续调整设定前必须选选择一个选项."

-- General options
L_GUI_GENERAL_AUTOSCALE = "自动UI缩放"
L_GUI_GENERAL_MULTISAMPLE = "多重采样保护(保证1像素边框)"
L_GUI_GENERAL_UISCALE = "UI缩放(当自动缩放关闭时)"
L_GUI_GENERAL_WELCOME_MESSAGE = "显示欢迎信息"
L_GUI_GENERAL_LAG_TOLERANCE = "自动更新自定延迟容许值"

-- Miscellaneous options
L_GUI_MISC_MARKING = "点击shift显示团队标记图示菜单"
L_GUI_MISC_INVKEYWORD = "自动邀请关键字(/ainv)"
L_GUI_MISC_SPIN_CAMERA = "afk时旋转镜头"
L_GUI_MISC_VEHICLE_MOUSEOVER = "驾驶框体解锁"
L_GUI_MISC_QUEST_AUTOBUTTON = "任务/道具自动按钮"
L_GUI_MISC_RAID_TOOLS = "团队工具"
L_GUI_MISC_PROFESSION_TABS = "在专业和商业框体显示专业技能按鈕"
L_GUI_MISC_HIDE_BG_SPAM = "在战场内移除 Boss 表情信息"
L_GUI_MISC_ITEM_LEVEL = "Item level on character slot buttons" -- Needs review
L_GUI_MISC_GEM_COUNTER = "Displays how many red/blue/yellow gems you have" -- Needs review
L_GUI_MISC_ALREADY_KNOWN = "Colorizes recipes/mounts/pets that is already known" -- Needs review
L_GUI_MISC_DISENCHANTING = "One-click Milling, Prospecting and Disenchanting" -- Needs review
L_GUI_MISC_SUM_BUYOUTS = "Sum upp all current auctions" -- Needs review
L_GUI_MISC_CLICK_CAST = "Simple click2cast spell binder" -- Needs review

-- Announcements options
L_GUI_ANNOUNCEMENTS = "通告预警"
L_GUI_ANNOUNCEMENTS_DRINKING = "当敌人在进食喝水的时候在队伍/团队中进行通告"
L_GUI_ANNOUNCEMENTS_INTERRUPTS = "当你成功打断的时候在队伍/团队中进行通告"
L_GUI_ANNOUNCEMENTS_SPELLS = "当有人与你使用同一法术的时候在队伍/团队中进行通告"
L_GUI_ANNOUNCEMENTS_SPELLS_FROM_ALL = "检视所有队员的施法"
L_GUI_ANNOUNCEMENTS_LIGHTWELL = "Announce your Lightwell" -- Needs review
L_GUI_ANNOUNCEMENTS_TOY_TRAIN = "Announce Toy Train or Direbrew's Remote cast" -- Needs review
L_GUI_ANNOUNCEMENTS_SAYS_THANKS = "Says thanks for some spells" -- Needs review
L_GUI_ANNOUNCEMENTS_PULL_COUNTDOWN = "Pull countdown announce(/run PullCountdown.Pull(#))" -- Needs review
L_GUI_ANNOUNCEMENTS_FLASK_FOOD = "Announce the usage of flasks and food" -- Needs review
L_GUI_ANNOUNCEMENTS_FLASK_FOOD_AUTO = "Auto announce when ReadyCheck(if enable, announce to raid channel)" -- Needs review
L_GUI_ANNOUNCEMENTS_FLASK_FOOD_RAID = "Announce to raid channel" -- Needs review

-- Automation options
L_GUI_AUTOMATION = "Automation" -- Needs review
L_GUI_AUTOMATION_RESURRECTION = "在战场中自动释放灵魂"
L_GUI_AUTOMATION_SCREENSHOT = "当你获得成就的时候自动截屏"
L_GUI_AUTOMATION_SOLVE_ARTIFACT = "Auto popup for solve artifact" -- Needs review
L_GUI_AUTOMATION_CHEFS_HAT = "Auto equip Chef's Hat" -- Needs review
L_GUI_AUTOMATION_ACCEPT_INVITE = "自动接受组队邀请"
L_GUI_AUTOMATION_DECLINE_DUEL = "自动取消决斗"
L_GUI_AUTOMATION_ACCEPT_QUEST = "自动接受任务"
L_GUI_AUTOMATION_SKIP_CINEMATIC = "Auto skip cinematics/movies" -- Needs review
L_GUI_AUTOMATION_AUTO_ROLE = "Auto set your role" -- Needs review
L_GUI_AUTOMATION_CANCEL_BAD_BUFFS = "Auto cancel various buffs" -- Needs review
L_GUI_AUTOMATION_TAB_BINDER = "Auto change Tab key to only target enemy players" -- Needs review

-- Skins options
L_GUI_SKINS = "风格化"
L_GUI_SKINS_BLIZZARD = "开启暴风默认界面风格增强"
L_GUI_SKINS_MINIMAP_BUTTONS = "开启小地图插件图标风格增强"
L_GUI_SKINS_CLCR = "开启CLCRet样式增强"
L_GUI_SKINS_CLCP = "开启CLCProt样式增强"
L_GUI_SKINS_COMBUSTION_HELPER = "开启CombustionHelper样式增强"
L_GUI_SKINS_BW = "开启BigWigs样式增强"
L_GUI_SKINS_DBM = "开启DBM样式增强"
L_GUI_SKINS_DXE = "开启DXE样式增强"
L_GUI_SKINS_OMEN = "开启Omen样式增强"
L_GUI_SKINS_RECOUNT = "开启Recount样式增强"

-- Combat text options
L_GUI_COMBATTEXT = "战斗文字"
L_GUI_COMBATTEXT_ENABLE = "启用战斗信息"
L_GUI_COMBATTEXT_BLIZZ_HEAD_NUMBERS = "使用暴雪默认伤害/治疗模式（模型顶部/玩家头像）"
L_GUI_COMBATTEXT_DAMAGE_STYLE = "改变模型顶部/玩家头像的伤害/治疗字体"
L_GUI_COMBATTEXT_DAMAGE = "独立显示伤害输出"
L_GUI_COMBATTEXT_HEALING = "独立显示治疗输出"
L_GUI_COMBATTEXT_HOTS = "显示hot造成的治疗"
L_GUI_COMBATTEXT_OVERHEALING = "显示过量治疗输出"
L_GUI_COMBATTEXT_PET_DAMAGE = "显示宠物伤害输出"
L_GUI_COMBATTEXT_DOT_DAMAGE = "显示dot造成的伤害"
L_GUI_COMBATTEXT_DAMAGE_COLOR = "以法术系别颜色显示伤害文字"
L_GUI_COMBATTEXT_CRIT_PREFIX = "文本右侧致命效果修饰符号"
L_GUI_COMBATTEXT_CRIT_POSTFIX = "文本右侧致命效果修饰符号"
L_GUI_COMBATTEXT_ICONS = "显示输出伤害技能图示"
L_GUI_COMBATTEXT_ICON_SIZE = "伤害输出图示大小"
L_GUI_COMBATTEXT_TRESHOLD = "伤害输出信息最小阀值"
L_GUI_COMBATTEXT_HEAL_TRESHOLD = "治疗承受信息/输出最小阀值"
L_GUI_COMBATTEXT_SCROLLABLE = "允许滑鼠调整滚动区域"
L_GUI_COMBATTEXT_MAX_LINES = "滚动区域显示最多行数"
L_GUI_COMBATTEXT_TIME_VISIBLE = "信息保留时间(秒)"
L_GUI_COMBATTEXT_STOP_VE_SPAM = "自动屏蔽吸血鬼之拥(@暗牧)的垃圾信息"
L_GUI_COMBATTEXT_DK_RUNES = "显示死亡骑士符文恢复"
L_GUI_COMBATTEXT_KILLINGBLOW = "显示击杀信息"
L_GUI_COMBATTEXT_MERGE_AOE_SPAM = "将AOE伤害合并为一条信息"
L_GUI_COMBATTEXT_MERGE_AOE_SPAM_TIME = "AOE伤害合并信息阀值(秒)"
L_GUI_COMBATTEXT_DISPEL = "当你驱散成功的时候提示"
L_GUI_COMBATTEXT_INTERRUPT = "当你打断成功的时候提示"
L_GUI_COMBATTEXT_DIRECTION = "Scrolling Direction('top'(goes down) or 'bottom'(goes up))" -- Needs review

-- Buffs reminder options
L_GUI_REMINDER = "Buffs提示"
L_GUI_REMINDER_SOLO_ENABLE = "显示自身缺少buffs"
L_GUI_REMINDER_SOLO_SOUND = "开启自身缺少buffs声音提示"
L_GUI_REMINDER_SOLO_SIZE = "自身buff图示大小"
L_GUI_REMINDER_RAID_ENABLE = "显示缺少的团队buffs"
L_GUI_REMINDER_RAID_ALWAYS = "总是显示buffs提示"
L_GUI_REMINDER_RAID_SIZE = "团队buffs图示大小"
L_GUI_REMINDER_RAID_ALPHA = "当buffs存在时透明显示图示"

-- Raid cooldowns options
L_GUI_COOLDOWN_RAID = "团队冷却"
L_GUI_COOLDOWN_RAID_ENABLE = "开启团队技能冷却"
L_GUI_COOLDOWN_RAID_HEIGHT = "团队技能冷却栏高度"
L_GUI_COOLDOWN_RAID_WIDTH = "团队技能冷却栏宽度"
L_GUI_COOLDOWN_RAID_SORT = "团队技能冷却栏向上延伸"
L_GUI_COOLDOWN_RAID_ICONS = "团队技能冷却栏图示"
L_GUI_COOLDOWN_RAID_IN_RAID = "在团队中显示团队技能冷却"
L_GUI_COOLDOWN_RAID_IN_PARTY = "在队伍中显示团队技能冷却"
L_GUI_COOLDOWN_RAID_IN_ARENA = "在竞技场中显示团队技能冷却"

-- Enemy cooldowns options
L_GUI_COOLDOWN_ENEMY = "敌对冷却"
L_GUI_COOLDOWN_ENEMY_ENABLE = "敌对技能冷却"
L_GUI_COOLDOWN_ENEMY_SIZE = "敌对技能冷却图示大小"
L_GUI_COOLDOWN_ENEMY_DIRECTION = "敌对冷却图标的方向 (RIGHT|LEFT|UP|DOWN)"
L_GUI_COOLDOWN_ENEMY_EVERYWHERE = "在任何时候显示敌对技能冷却"
L_GUI_COOLDOWN_ENEMY_IN_BG = "在战场中显示敌对技能冷却"
L_GUI_COOLDOWN_ENEMY_IN_ARENA = "在竞技场中显示敌对技能冷却"

-- Pulse cooldowns options
L_GUI_COOLDOWN_PULSE = "技能冷却闪烁"
L_GUI_COOLDOWN_PULSE_ENABLE = "开启冷却闪烁提示"
L_GUI_COOLDOWN_PULSE_SIZE = "冷却闪烁大小"
L_GUI_COOLDOWN_PULSE_SOUND = "播放声音提醒"
L_GUI_COOLDOWN_PULSE_ANIM_SCALE = "动画缩放"
L_GUI_COOLDOWN_PULSE_HOLD_TIME = "不透明状态持续时间"
L_GUI_COOLDOWN_PULSE_THRESHOLD = "最小持续时间"

-- Threat options
L_GUI_THREAT = "仇恨栏"
L_GUI_THREAT_ENABLE = "开启仇恨栏"
L_GUI_THREAT_HEIGHT = "仇恨栏高度"
L_GUI_THREAT_WIDTH = "仇恨栏宽度"
L_GUI_THREAT_ROWS = "仇恨栏数目"
L_GUI_THREAT_HIDE_SOLO = "只在队伍或团队中开启"

-- Tooltip options
L_GUI_TOOLTIP = "提示资讯"
L_GUI_TOOLTIP_ENABLE = "开启提示资讯增强"
L_GUI_TOOLTIP_SHIFT = "按下shift时显示提示资讯"
L_GUI_TOOLTIP_CURSOR = "提示资讯跟随鼠标"
L_GUI_TOOLTIP_ICON = "在提示资讯中显示物品图示"
L_GUI_TOOLTIP_HEALTH = "显示百分比生命值"
L_GUI_TOOLTIP_HIDE = "隐藏动作条的提示提示资讯."
L_GUI_TOOLTIP_HIDE_COMBAT = "战斗中隐藏鼠标提示"
L_GUI_TOOLTIP_TALENTS = "在提示资讯中显示天赋"
L_GUI_TOOLTIP_ACHIEVEMENTS = "在提示资讯中显示成就比较"
L_GUI_TOOLTIP_TARGET = "在提示资讯中显示目标的目标"
L_GUI_TOOLTIP_TITLE = "在提示资讯中显示目标称号"
L_GUI_TOOLTIP_RANK = "在提示资讯中显示公会会阶"
L_GUI_TOOLTIP_ARENA_EXPERIENCE = "在提示资讯中显示竞技场等级"
L_GUI_TOOLTIP_SPELL_ID = "法术ID"
L_GUI_TOOLTIP_RAID_ICON = "团队图标"
L_GUI_TOOLTIP_WHO_TARGETTING = "当你在队伍/团队中时显示谁以目标为目标的提示"
L_GUI_TOOLTIP_ITEM_COUNT = "叠堆数量"
L_GUI_TOOLTIP_UNIT_ROLE = "单位角色"
L_GUI_TOOLTIP_REFORGE = "Item reforge info" -- Needs review
L_GUI_TOOLTIP_SYMBIOSIS = "Symbiosis info" -- Needs review
L_GUI_TOOLTIP_INSTANCE_LOCK = "Your instance lock status in tooltip" -- Needs review
L_GUI_TOOLTIP_ITEM_TRANSMOGRIFY = "Displays items can not be transmogrified" -- Needs review

-- Chat options
L_GUI_CHAT_ENABLE = "开启聊天框增强"
L_GUI_CHAT_BACKGROUND = "开启聊天框背景"
L_GUI_CHAT_BACKGROUND_ALPHA = "聊天背景透明度"
L_GUI_CHAT_SPAM = "屏蔽无用系统信息(*玩家1* 在决斗中战胜了 *玩家2*)"
L_GUI_CHAT_GOLD = "屏蔽某些玩家的垃圾信息"
L_GUI_CHAT_WIDTH = "框体宽度"
L_GUI_CHAT_HEIGHT = "框体高度"
L_GUI_CHAT_BAR = "显示频道快捷图示栏"
L_GUI_CHAT_BAR_MOUSEOVER = "Lite Button Bar on mouseover" -- Needs review
L_GUI_CHAT_TIMESTAMP = "时间标签颜色"
L_GUI_CHAT_WHISP = "接受密语时声音提示"
L_GUI_CHAT_SKIN_BUBBLE = "美化默认聊天泡泡"
L_GUI_CHAT_CL_TAB = "显示战斗记录标签"
L_GUI_CHAT_TABS_MOUSEOVER = "Chat tabs on mouseover" -- Needs review
L_GUI_CHAT_STICKY = "记住上一次使用的频道"
L_GUI_CHAT_DAMAGE_METER_SPAM = "Merge damage meter spam in one line-link" -- Needs review

-- Bag options
L_GUI_BAGS = "背包"
L_GUI_BAGS_ENABLE = "开启背包增强"
L_GUI_BAGS_BUTTON_SIZE = "空格大小"
L_GUI_BAGS_BUTTON_SPACE = "空格间隔"
L_GUI_BAGS_BANK = "银行背包每行数目"
L_GUI_BAGS_BAG = "背包每行数目"

-- Minimap options
L_GUI_MINIMAP_ENABLE = "开启迷你地图增强"
L_GUI_MINIMAP_ICON = "追踪类型图示"
L_GUI_MINIMAP_SIZE = "小地图大小"
L_GUI_MINIMAP_HIDE_COMBAT = "战斗中隐藏小地图"
L_GUI_MINIMAP_TOGGLE_MENU = "显示可开/关的菜单"
L_GUI_MINIMAP_MERGE_MENUS = "将小地图上依附的插件按钮整合到菜单中"

-- Map options
L_GUI_MAP_ENABLE = "开启世界地图增强"
L_GUI_MAP_SCALE = "世界地图缩放"
L_GUI_MAP_BG_STYLIZATION = "战场地图风格"
L_GUI_MAP_BOSS_COUNT = "Show boss count in World Map" -- Needs review
L_GUI_MAP_EXPLORE = "Tracking Explorer and Lore Master achievements in World Map" -- Needs review

-- Loot options
L_GUI_LOOT_ENABLE = "开启拾取增强"
L_GUI_LOOT_ROLL_ENABLE = "开启团队拾取框体"
L_GUI_LOOT_ICON_SIZE = "拾取框体图示大小"
L_GUI_LOOT_WIDTH = "拾取框体宽度"
L_GUI_LOOT_AUTOGREED = "满级后自动贪婪绿色物品"
L_GUI_LOOT_AUTODE = "自动选择分解选项"

-- Nameplate options
L_GUI_NAMEPLATE_ENABLE = "开启单位名条"
L_GUI_NAMEPLATE_COMBAT = "在战斗中自动显示单位名条"
L_GUI_NAMEPLATE_HEALTH = "显示百分比生命值"
L_GUI_NAMEPLATE_CASTBAR = "显示施法条"
L_GUI_NAMEPLATE_HEIGHT = "单位名条高度"
L_GUI_NAMEPLATE_WIDTH = "单位名条宽度"
L_GUI_NAMEPLATE_AD_HEIGHT = "在选定目标的时候,增加名条的高度"
L_GUI_NAMEPLATE_AD_WIDTH = "在选定目标的时候,增加名条的宽度"
L_GUI_NAMEPLATE_CASTBAR_NAME = "显示施法名称"
L_GUI_NAMEPLATE_THREAT = "显示仇恨情况"
L_GUI_NAMEPLATE_CLASS_ICON = "在PVP情况下显示职业图示"
L_GUI_NAMEPLATE_NAME_ABBREV = "显示名字缩写"
L_GUI_NAMEPLATE_GOOD_COLOR = "依据你的队伍角色(坦克,输出/治疗)分别显示同样的安全威胁颜色"
L_GUI_NAMEPLATE_NEAR_COLOR = "显示增加和减少的威胁颜色"
L_GUI_NAMEPLATE_BAD_COLOR = "依据你的队伍角色(坦克,输出/治疗)显示的威胁颜色"
L_GUI_NAMEPLATE_SHOW_DEBUFFS = "显示Debuff (必须关闭名字缩写)"
L_GUI_NAMEPLATE_DEBUFFS_SIZE = "Debuffs大小"
L_GUI_NAMEPLATE_HEALER_ICON = "Show healer icon on all enemy healers nameplate in battlegrounds" -- Needs review

-- ActionBar options
L_GUI_ACTIONBAR_ENABLE = "开启动作条"
L_GUI_ACTIONBAR_HOTKEY = "显示动作条文字"
L_GUI_ACTIONBAR_MACRO = "在动作条显示宏名称"
L_GUI_ACTIONBAR_GRID = "显示空的动作条按钮"
L_GUI_ACTIONBAR_BUTTON_SIZE = "按钮大小"
L_GUI_ACTIONBAR_BUTTON_SPACE = "按钮间隔"
L_GUI_ACTIONBAR_SPLIT_BARS = "把第五动作条分成两个有六个位置的小动作条"
L_GUI_ACTIONBAR_CLASSCOLOR_BORDER = "给所有的按钮使用职业颜色边框"
L_GUI_ACTIONBAR_TOGGLE_MODE = "开启动作条切换按钮"
L_GUI_ACTIONBAR_BOTTOMBARS = "底部动作条数目 (1, 2 or 3)"
L_GUI_ACTIONBAR_RIGHTBARS = "右侧动作条数目 (0, 1, 2 or 3)"
L_GUI_ACTIONBAR_RIGHTBARS_MOUSEOVER = "鼠标划过时显示右侧动作条"
L_GUI_ACTIONBAR_PETBAR_MOUSEOVER = "鼠标划过时显示宠物动作条"
L_GUI_ACTIONBAR_PETBAR_HIDE = "隐藏宠物动作条"
L_GUI_ACTIONBAR_PETBAR_HORIZONTAL = "打开横向宠物动作条"
L_GUI_ACTIONBAR_STANCEBAR_MOUSEOVER = "鼠标划过时显示变身/姿态/图腾快捷列"
L_GUI_ACTIONBAR_STANCEBAR_HIDE = "隐藏变身/姿态/图腾动作条"
L_GUI_ACTIONBAR_STANCEBAR_HORIZONTAL = "横向显示变身/姿态动作条"
L_GUI_ACTIONBAR_MICROMENU = "Enable micro menu" -- Needs review
L_GUI_ACTIONBAR_MICROMENU_MOUSEOVER = "Micro menu on mouseover" -- Needs review

-- Auras/Buffs/Debuffs
L_GUI_AURA_PLAYER_BUFF_SIZE = "玩家Buffs图标大小"
L_GUI_AURA_SHOW_SPIRAL = "在图示上显示漩涡冷却样式"
L_GUI_AURA_SHOW_TIMER = "在图示上显示层数堆叠"
L_GUI_AURA_PLAYER_AURAS = "在玩家框体显示法术效果"
L_GUI_AURA_TARGET_AURAS = "在目标框体显示法术效果"
L_GUI_AURA_FOCUS_DEBUFFS = "在焦点目标框体显示DeBuffs"
L_GUI_AURA_FOT_DEBUFFS = "在焦点目标的目标框体显示Debuffs"
L_GUI_AURA_PET_DEBUFFS = "在宠物框体显示DeBuffs"
L_GUI_AURA_TOT_DEBUFFS = "在目标的目标框体显示DeBuffs"
L_GUI_AURA_BOSS_BUFFS = "在BOSS框体显示Buffs"
L_GUI_AURA_PLAYER_AURA_ONLY = "在目标框体只显示自己的DeBuffs"
L_GUI_AURA_DEBUFF_COLOR_TYPE = "DeBuffs着色依照法术类型"
L_GUI_AURA_CAST_BY = "在鼠标提示中显示是谁施放了这个 增益/減益"
L_GUI_AURA_CLASSCOLOR_BORDER = "给玩家自身BUFF图标使用职业颜色边框"

-- Unit Frames options
L_GUI_UF_ENABLE = "开启单位框架"
L_GUI_UF_OWN_COLOR = "在预测治疗中显示你的治疗量"
L_GUI_UF_UF_COLOR = "血量条的颜色 (如果已使用自定义颜色)"
L_GUI_UF_ENEMY_HEALTH_COLOR = "敌对目标生命条以红色着色"
L_GUI_UF_TOTAL_VALUE = "在玩家与目标框体显示详细的文字变化"
L_GUI_UF_COLOR_VALUE = "生命值与魔法值以职业颜色着色"
L_GUI_UF_BAR_COLOR_VALUE = "血量条的颜色以目前剩余血量着色"
L_GUI_UF_UNIT_CASTBAR = "显示施法条"
L_GUI_UF_CASTBAR_ICON = "显示施法条图标"
L_GUI_UF_CASTBAR_LATENCY = "施法条延迟"
L_GUI_UF_CASTBAR_TICKS = "施法条跳数"
L_GUI_UF_SHOW_PET = "显示宠物框架"
L_GUI_UF_SHOW_FOCUS = "显示焦点框架"
L_GUI_UF_SHOW_TOT = "显示目标的目标框架"
L_GUI_UF_SHOW_BOSS = "显示boss框体"
L_GUI_UF_BOSS_RIGHT = "在右侧显示Boss框体"
L_GUI_UF_SHOW_ARENA = "显示竞技场框体"
L_GUI_UF_ARENA_RIGHT = "在右侧显示竞技场框体"
L_GUI_UF_ICONS_PVP = "鼠标划过玩家/目标时显示PVP状态文字"
L_GUI_UF_ICONS_COMBAT = "显示战斗标识"
L_GUI_UF_ICONS_RESTING = "显示休息标识"
L_GUI_UF_PORTRAIT_ENABLE = "开启玩家/目标头像"
L_GUI_UF_PORTRAIT_CLASSCOLOR_BORDER = "开启职业颜色边框"
L_GUI_UF_PORTRAIT_HEIGHT = "头像高度"
L_GUI_UF_PORTRAIT_WIDTH = "头像宽度"
L_GUI_UF_PLUGINS_GCD = "公共CD计时"
L_GUI_UF_PLUGINS_SWING = "普通攻击计时条"
L_GUI_UF_PLUGINS_NECRO_STRIKE = "开启死疽打击计时条" 
L_GUI_UF_PLUGINS_REPUTATION_BAR = "声望条"
L_GUI_UF_PLUGINS_EXPERIENCE_BAR = "经验条"
L_GUI_UF_PLUGINS_SMOOTH_BAR = "平滑条"
L_GUI_UF_PLUGINS_TALENTS = "显示敌对玩家天赋"
L_GUI_UF_PLUGINS_COMBAT_FEEDBACK = "显示玩家/目标的文字战斗信息"
L_GUI_UF_PLUGINS_FADER = "头像框体渐隐"
L_GUI_UF_PLUGINS_DIMINISHING = "Diminishing Returns icons on arena frames" -- Needs review

-- Unit Frames Class bar options
L_GUI_UF_PLUGINS_CLASS_BAR = "Unit Frames Class bars" -- Needs review
L_GUI_UF_PLUGINS_COMBO_BAR = "潜行者|德鲁伊连击点图示"
L_GUI_UF_PLUGINS_SHADOW_BAR = "Enable Shadow Orbs bar" -- Needs review
L_GUI_UF_PLUGINS_CHI_BAR = "Enable Chi bar" -- Needs review
L_GUI_UF_PLUGINS_VENGEANCE_BAR = "开启仇恨栏"
L_GUI_UF_PLUGINS_ECLIPSE_BAR = "开启日蚀/月蚀栏"
L_GUI_UF_PLUGINS_HOLY_BAR = "开启圣光能量栏"
L_GUI_UF_PLUGINS_SHARD_BAR = "开启灵魂碎片栏"
L_GUI_UF_PLUGINS_RUNE_BAR = "符文条"
L_GUI_UF_PLUGINS_TOTEM_BAR = "图腾栏"

-- Raid Frames options
L_GUI_UF_AGGRO_BORDER = "仇恨边框"
L_GUI_UF_DEFICIT_HEALTH = "团队生命值亏减模式"
L_GUI_UF_SHOW_PARTY = "显示队伍框体"
L_GUI_UF_SHOW_RAID = "显示团队框体"
L_GUI_UF_VERTICAL_HEALTH = "垂直显示团队框体生命值"
L_GUI_UF_ALPHA_HEALTH = "100%生命值时透明显示生命栏"
L_GUI_UF_SHOW_RANGE = "在团队框体中距离透明度变化"
L_GUI_UF_RANGE_ALPHA = "淡化超出距离的单位框体"
L_GUI_UF_SOLO_MODE = "总是显示玩家框体"
L_GUI_UF_PLAYER_PARTY = "在小队中显示玩家框体"
L_GUI_UF_SHOW_TANK = "显示团队主坦克框体"
L_GUI_UF_SHOW_TANK_TT = "显示坦克目标的目标"
L_GUI_UF_RAID_GROUP = "显示小队数目(ShestakUI_Heal风格)"
L_GUI_UF_RAID_VERTICAL_GROUP = "竖向显示团队队伍(ShestakUI_Heal风格)"
L_GUI_UF_ICONS_LEADER = "显示团队队长标识/助手标识/分配者标识"
L_GUI_UF_ICONS_LFD_ROLE = "显示队长标识"
L_GUI_UF_ICONS_RAID_MARK = "显示团队标记"
L_GUI_UF_ICONS_READY_CHECK = "确认就绪情况图示"
L_GUI_UF_PLUGINS_DEBUFFHIGHLIGHT_ICON = "Debuff与图示高亮"
L_GUI_UF_PLUGINS_AURA_WATCH = "团队法术监视"
L_GUI_UF_PLUGINS_AURA_WATCH_TIMER = "在团队Debuff图标上显示时间"
L_GUI_UF_PLUGINS_HEALCOMM = "即将受到的治疗条"
L_GUI_UF_PLUGINS_AUTO_RESURRECTION = "鼠标中键点击已死亡角色时自动施放复活技能(Clique启用时不生效)"

-- Panel options
L_GUI_TOP_PANEL = "顶部面板"
L_GUI_TOP_PANEL_ENABLE = "开启顶部面板"
L_GUI_TOP_PANEL_MOUSE = "鼠标划过时显示顶部面板"
L_GUI_TOP_PANEL_WIDTH = "面板宽度"
L_GUI_TOP_PANEL_HEIGHT = "面板高度"

-- Stats options
L_GUI_STATS = "统计面板"
L_GUI_STATS_BG = "战场分数"
L_GUI_STATS_CLOCK = "时钟"
L_GUI_STATS_LATENCY = "延迟"
L_GUI_STATS_MEMORY = "内存占用"
L_GUI_STATS_FPS = "帧数"
L_GUI_STATS_EXPERIENCE = "经验"
L_GUI_STATS_COORDS = "坐标"
L_GUI_STATS_LOCATION = "区域"

-- Error options
L_GUI_ERROR = "错误收集"
L_GUI_ERROR_HIDE = "隐藏错误提示"
L_GUI_ERROR_BLACK = "隐藏黑名单错误"
L_GUI_ERROR_WHITE = "显示白名单错误"
L_GUI_ERROR_HIDE_COMBAT = "在战斗中隐藏错误提示"