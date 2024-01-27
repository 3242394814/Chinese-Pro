--暴食汉化，翻译文本来自workshop-2779875600
	STRINGS.GOATMUM_VICTORY[5] = "善良的陌生人，冬宴快乐!"

	STRINGS.CHARACTERS.GENERIC.DESCRIBE_CONFUSION = {"所以... 这是什么?","额... 我不明白这是活的吗??","这是什么?","这是盘子吗?"}
	STRINGS.QUAGMIRE_CHARACTER_DESCRIPTIONS.wortox = "*用灵魂抚慰啮齿兽的饥饿\n\n\n\n*专业知识:\n收集"
	STRINGS.QUAGMIRE_CHARACTER_DESCRIPTIONS.wormwood = "*附近的植物生长得更快，腐烂得更慢\n\n\n\n*专业知识:\n农业"
	STRINGS.QUAGMIRE_CHARACTER_DESCRIPTIONS.warly = "*增加烹饪食物的价值\n\n\n\n*专业知识:\n烹饪"
	STRINGS.QUAGMIRE_CHARACTER_DESCRIPTIONS.wurt = "*在沼泽草皮上走得更快\n*有机会抓到两条鱼\n\n\n*专业知识:\n采集"
	STRINGS.QUAGMIRE_CHARACTER_DESCRIPTIONS.walter = "*拥有他的搭档沃比\n*沃比可以用于存储物品\n\n\n*专业知识:\n采集"
	STRINGS.QUAGMIRE_CHARACTER_DESCRIPTIONS.wanda = "*用她的袖珍时钟恢复产品的新鲜度\n\n\n*专业知识:\n烹饪"
	
	STRINGS.ACTIONS.SALT = "盐"

	STRINGS.NAMES.QUAGMIRE_POCKETWATCH = "永恒的手表"

	STRINGS.NAMES.CHICKEN =
	{
		"鸡",
	}
	
	STRINGS.CHARACTERS.GENERIC.DESCRIBE.QUAGMIRE_CHICKEN = "这是一只小鸡."
	STRINGS.CHARACTERS.WILLOW.DESCRIBE.QUAGMIRE_CHICKEN = "这是一只丑陋的鸡."
	STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.QUAGMIRE_CHICKEN = "咯咯咯咯!"
	STRINGS.CHARACTERS.WENDY.DESCRIBE.QUAGMIRE_CHICKEN = "可怕的家禽."
	STRINGS.CHARACTERS.WX78.DESCRIBE.QUAGMIRE_CHICKEN = "一群美味的鸟"
	STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.QUAGMIRE_CHICKEN = "可驯服的鸟类."
	STRINGS.CHARACTERS.WOODIE.DESCRIBE.QUAGMIRE_CHICKEN = "鸟就是鸟."
	STRINGS.CHARACTERS.WAXWELL.DESCRIBE.QUAGMIRE_CHICKEN = "讨厌的家禽."
	STRINGS.CHARACTERS.WEBBER.DESCRIBE.QUAGMIRE_CHICKEN = "哈哈! 我们都爱小鸡!"
	STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.QUAGMIRE_CHICKEN = "行走的肉块!"

	STRINGS.CHARACTERS.WINONA.DESCRIBE.QUAGMIRE_CHICKEN = "它有点像 \"Maxy\"."
	STRINGS.CHARACTERS.WORTOX.DESCRIBE.QUAGMIRE_CHICKEN = "你好, 小鸡?"
	STRINGS.CHARACTERS.WARLY.DESCRIBE.QUAGMIRE_CHICKEN = "我美味可口的朋友!"
	STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.QUAGMIRE_CHICKEN = "我的朋友!"
	STRINGS.CHARACTERS.WURT.DESCRIBE.QUAGMIRE_CHICKEN = "你好，朋友？!"
	STRINGS.CHARACTERS.WALTER.DESCRIBE.QUAGMIRE_CHICKEN = "漂亮的小鸡!"
	STRINGS.CHARACTERS.WANDA.DESCRIBE.QUAGMIRE_CHICKEN = "我已经在其他时间线见过你了!"

	-- for prefab, data in pairs(STRING_FIXES) do
	-- 	for name, str in pairs(data) do	
	-- 		-- if not STRINGS.CHARACTERS[prefab].DESCRIBE[name] or
	-- 		-- STRINGS.CHARACTERS.GENERIC.DESCRIBE[name] == STRINGS.CHARACTERS[prefab].DESCRIBE[name] then
	-- 			STRINGS.CHARACTERS[prefab].DESCRIBE[name] = str
	-- 		-- end
	-- 	end
	-- end
	
	STRINGS.CHARACTER_DETAILS.STARTING_ITEMS_TITLE = "带着这个进入暴食"


STRINGS.GORGE = {
	CURRENT_MODE = "当前模式:\n%s",
	GAME_MODE_SAME = "此模式已经激活",
	MODE_INFO = "游戏模式: %s",
	IN_DEVELOPMENT = "Re-Gorge-itated Mod: 在开发中",
	POWER = "能力: ",
	POWER_DISABLED = "在此服务器上禁用了技能选择",
	
	POWER_F = "能力: %d",
	
	ACHIEVEMENTS = "成就:",
	
	SCANNER = {
		ERROR = "错误!",
		COOKED = "煮熟的菜!",
		OVERCOOKED = "没有菜!",
		SALTED = "盐出现了!",
		SAP = "肉豆蔻出现了!",
		SAP_ROT = "肉豆蔻消失了!",
		CROP = "作物生长了!",
		CROP_ROT = "作物腐烂了!",
	},
	
	VOTE = {
		CLEARED = "所有选票都被清除.",
		NO_PLAYERS = "至少需要3个玩家开始投票.",
		PASSED = "投票通过.",
		VOTED = "%s 投票赞成踢 %s. (%i/%i)",
		MODE_VOTED = "%s 投票更改模式为 \"%s\". (%i/%i)",
		MODE_CHANGED = "改变游戏模式为 \"%s\". 投票开始以继续!",

		KICK = "投票踢人",
		TIP = "*所有玩家都需要投票",
		NO_PLAYERS_TIP = "你需要更多玩家投票",

		GAME_MODE = "投票更改模式",

		DISABLED = "投票系统在此服务器上被禁用",
	},

	MESSAGES = {
		VOTE = "[投票]",
		ANNOUNCE = "[宣布]",
	},

	CHANGABLEFEMUSIC_DISABLED = "更改音乐系统已禁用\n 在这个服务器上.",
	
	MMMURDER	= "你是杀手!",
	MMINNOCENT	= "你是无辜者!",
	MMACTIONS = {
		REGORGEMURDER = "击杀",
		REGORGEREPORT = "报告尸体",
	},
	MMVOTING = {
		VOTE = "投票",
		TITLE = "谁是杀手?",
		SKIPVOTE = "弃票",
		CLOSE = "返回讨论",
		SKIPPEDVOTES = "结束投票: ",
		VOTES = "票数: "
	},

	CURRENT_GORGE_MUSIC = "当前的音乐: ",
	GORGE_MUSIC =
	{
		"暴食主题音乐",
		"熔炉主题音乐",
		"冬季盛宴主题音乐",
		"胡萝卜鼠年主题音乐",
		"拉格泰姆主题音乐",
		"饥荒主题音乐",
		"恐怖森林主题音乐",
		"女武神主题音乐",
		"寂静主题音乐",
		"大力士主题音乐",
		"风暴之眼主题音乐",
		"夏季活动主题音乐",
		"韦伯主题音乐",
		"水中木主题音乐",
		"旺达主题音乐",
		"大力士主题音乐",
		"沉默的主题音乐",
	},

	GAMEMODES = {
		NAMES = {
			default = "默认",
			hungry = "饥荒",
			darkness = "漆黑一片",
			hard = "困难模式",
			scaling = "缩放难度",
			endless = "无尽生存",
			no_sweat = "轻而易举",
			thieves = "暗影窃贼",
			configurable = "可配置的暴食",
			rush = "急促",
			sandbox = "沙盒",
			sick = "病虫害",
			murder_mystery = "秘密谋杀",
			confusion = "混乱",
			moon_curse = "月光诅咒",
		},
		
		MORE_PLAYER_REQUIRED = "%s 只能与 %s+ 名\n玩家一起玩",
		
		LESS_PLAYER_REQUIRED = "%s 只能与 %s+ 名\n或更少玩家一起玩",
		
		DESCRIPTIONS = {
			default = "尝试默认的暴食体验.",
			hungry = "饕餮饥饿速率变为5倍！喂他，否则你会死的。",
			darkness = "饕餮吃掉了太阳。你得在黑暗中做饭!",
			hard = "饕餮变得非常生气！所有食物都会腐烂得更快，资源更少，还有很多其他麻烦。",
			scaling = "玩家越多，饥饿感就越强.",
			endless = "饕餮不会给你带来好处，但它会让植物再生，并给商人提供一些原料。玩30分钟以上就赢了！",
			no_sweat = "饕餮。。。很高兴见到你？它的饥饿速度慢了两倍！",
			thieves = "暗影爬行也穿过通往这个世界的大门。他们会偷掉所有的食物！",
			configurable = "定制你自己的暴食！你的游戏-你的规则。",
			rush = "饕餮对你的菜不太满意。。。",
			sandbox = "饕餮似乎忽视了你。你想怎么做就怎么做！",
			sick = "饕餮生病了。它每次吼叫都会打喷嚏。",
			murder_mystery = "其中一个玩家是杀人犯！烹饪时要小心，把你的(blunderbuss)枪捏紧！",
			confusion = "饕餮改变了一切！你不再看到真实的事物，一切都会随着彼此而改变。",
			moon_curse = "饕餮看起来吃了月亮！饕餮散发出月光。。。"
		},
	},

	CHAR_DESC = {
		"*跑得比别人快\n\n\n*专业知识:\n收集",
		"*采摘作物很快\n\n\n*专业知识:\n农业",
		"*烹饪速度更快\n*可以检查食物是否符合你的渴望\n\n*专业知识:\n烹饪",
	},
	
	PERKS = {
		willow = {
			[2] = "*自带一个火机\n*用于烹饪食物",
		},
		
		wolfgang = {
			[2] = "*使用哑铃让自己快一点点",
		},

		wendy = {
			[2] = "*可以在采摘腐烂作物的同时\n以25%的几率获得新鲜作物",
		},
	
		wx78 = {
			[2] = "*拥有机器人，记录土壤\n盐，烹饪菜肴或汁液",
		},

		wathgrithr = {
			[2] = "*用有独特的砍树技能",
		},
		
		webber = {
			[2] = "*拥有一群小蜘蛛帮忙建造花园",
		},
	
		walter = {
			[2] = "*可以购买弹弓和弹药",
		},
	},

	COOLDOWN = "冷却时间: %s",
}