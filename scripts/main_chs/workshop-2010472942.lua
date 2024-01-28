--大部分翻译来自https://steamcommunity.com/sharedfiles/filedetails/?id=3022902813 其余内容我也懒得翻译0.0
local STRINGS = GLOBAL.STRINGS
local require = GLOBAL.require
local general_scripts = require("play_generalscripts")
--------------------------------------------------------------------------
	-------------------------- 独眼巨鹿 --------------------------
--------------------------------------------------------------------------
GLOBAL.STRINGS.CHARACTER_TITLES.weerclops = "单眼小鹿"
GLOBAL.STRINGS.CHARACTER_NAMES.weerclops = "鹿角怪"
GLOBAL.STRINGS.CHARACTER_DESCRIPTIONS.weerclops = "一拳冰寒\n善于摧毁房子\n越来越想摧毁一切\n适应寒冷，但不适应炎热"
GLOBAL.STRINGS.CHARACTERS.WEERCLOPS = require "speech_weerclops"
GLOBAL.STRINGS.NAMES.WEERCLOPS = "鹿角怪"
GLOBAL.STRINGS.LAVAARENA_CHARACTER_DESCRIPTIONS.weerclops = "*给敌人带来冰冷之触，降低防御力\n\n\n\n专长：\n近战，飞镖"
GLOBAL.STRINGS.QUAGMIRE_CHARACTER_DESCRIPTIONS.weerclops = "手持时食物变质速度减缓50%\n\n专长：\n农耕"
GLOBAL.STRINGS.SKIN_NAMES.weerclops_none = "鹿角怪"
GLOBAL.STRINGS.SKIN_DESCRIPTIONS.weerclops_none = "一个冷冻的、皮毛纠缠的皮囊。"
STRINGS.CHARACTER_ABOUTME.weerclops = "在寒冷的冬夜，鹿角怪的哐哐声回荡在森林中。它不会放过任何建筑物。"
STRINGS.CHARACTER_SURVIVABILITY.weerclops = "严峻"
STRINGS.CHARACTER_BIOS.weerclops = {
{ title = "生日", desc = "2月26日" },
{ title = "最喜欢的食物", desc = "甜瓜冻" }, }
--Skins
if GLOBAL.GetModConfigData("enable_unintelligible","workshop-2010472942") == true then
GLOBAL.STRINGS.CHARACTER_QUOTES.weerclops = "“咕......”"
GLOBAL.STRINGS.SKIN_QUOTES.weerclops_ice = "“嗯......”"
GLOBAL.STRINGS.SKIN_QUOTES.weerclops_rose = "“嗯！”"
GLOBAL.STRINGS.SKIN_QUOTES.weerclops_magma = "“咕呼呼呼......”"
GLOBAL.STRINGS.SKIN_QUOTES.weerclops_klaus = "“劳拉，劳拉，劳拉！”"
else
GLOBAL.STRINGS.CHARACTER_QUOTES.weerclops = "“我的爪子痒痒地想要摧毁......这是鹿角怪的本能。”"
GLOBAL.STRINGS.SKIN_QUOTES.weerclops_ice = "“没有什么可以逃脱我的注视......”"
GLOBAL.STRINGS.SKIN_QUOTES.weerclops_rose = "“鹿角怪也有冰冷、冻结的荆棘。”"
GLOBAL.STRINGS.SKIN_QUOTES.weerclops_magma = "“鹿角怪并不暴躁...我们很宽宏大量。”"  -- 假设他们为了双关语而学到了这个词
GLOBAL.STRINGS.SKIN_QUOTES.weerclops_klaus = "“如果他们找不到眼睛，就摘不下来...”"
end
STRINGS.SKIN_NAMES.weerclops_ice = "冰雪降临"
STRINGS.SKIN_DESCRIPTIONS.weerclops_ice = "鹿角怪冰冷的凝视足以致命。"
STRINGS.SKIN_NAMES.weerclops_rose = "蔷薇色"
STRINGS.SKIN_DESCRIPTIONS.weerclops_rose = "你无法区分冰刺和带刺的荆棘。"
--STRINGS.SKIN_NAMES.body_weerclops_rose = "冬之蔷薇外壳"
--STRINGS.SKIN_DESCRIPTIONS.body_weerclops_rose = "少数玫瑰能够经受住寒冷的冬季，其他则在其中茁壮成长。"
STRINGS.SKIN_NAMES.weerclops_magma = "熔岩巨兽"
STRINGS.SKIN_DESCRIPTIONS.weerclops_magma = "不要被愚弄。鹿角怪内外一样寒冷。"
--STRINGS.SKIN_NAMES.body_weerclops_magma = "对极抵消的胸甲"
--STRINGS.SKIN_DESCRIPTIONS.body_weerclops_magma = "用这件炽热的冰原胸甲粉碎你的对手。"
STRINGS.SKIN_NAMES.weerclops_klaus = "圣诞鹿角怪装"
STRINGS.SKIN_DESCRIPTIONS.weerclops_klaus = "鹿角怪对于假日的奇特装扮并不陌生。"
-------------------------- A Little Drama - Stage play --------------------------
STRINGS.STAGEACTOR.WEERCLOPS1 =
    {
        "夜晚已陷入死寂，直到毁灭之声打破了寂静...",
        "在丛林中有一阵骚动...",
        "重重的脚步声响彻一起，",
        "然后你看见我们结块的毛皮，我们细长的黑色腿...",
        "一只巨鹿眼神锁定你的眼睛，",
        "穿过膝深的雪你又能多快逃跑？",
    }

general_scripts.WEERCLOPS1 = {
   cast = { "weerclops" },
   lines = {
		{roles = {"weerclops"}, duration = 3.0, line = STRINGS.STAGEACTOR.WEERCLOPS1[1]},
		{roles = {"weerclops"}, duration = 3.0, line = STRINGS.STAGEACTOR.WEERCLOPS1[2]},
		{roles = {"weerclops"}, duration = 3.0, line = STRINGS.STAGEACTOR.WEERCLOPS1[3]},
		{roles = {"weerclops"}, duration = 3.0, line = STRINGS.STAGEACTOR.WEERCLOPS1[4]},
		{roles = {"weerclops"}, duration = 3.0, line = STRINGS.STAGEACTOR.WEERCLOPS1[5]},
		{roles = {"weerclops"}, duration = 3.0, line = STRINGS.STAGEACTOR.WEERCLOPS1[6]},
    }
}

-------------------------- MOD --------------------------
-- if not GLOBAL.STRINGS._STATUS_ANNOUNCEMENTS then
-- 	GLOBAL.STRINGS._STATUS_ANNOUNCEMENTS = {}
-- end

-- GLOBAL.STRINGS._STATUS_ANNOUNCEMENTS.WEERCLOPS =
-- {
-- 		HUNGER = {
-- 			FULL  = "The stomach is still destroying the remains...", 	-- >75%
-- 			HIGH  = "There's room for more destruction with my teeth.",			-- >55%
-- 			MID   = "I've got a craving for destruction. Or food...", 	-- >35%
-- 			LOW   = "My stomach is in ruin.", 				-- >15%
-- 			EMPTY = "I've let my stomach destroy me...", 			-- <15%
-- 		},
-- 		SANITY = {
-- 			FULL  = "Satisfied... for now.", 			-- >75%
-- 			HIGH  = "I can feel the itch to destroy creeping in.", 				-- >55%
-- 			MID   = "I need to destroy... Now.", 				-- >35%
-- 			LOW   = "My claws are trembling to destroy...", 			-- >15%
-- 			EMPTY = "Rrrr! I MUST. DESTROY.", 	-- <15%
-- 		},
-- 		HEALTH = {
-- 			FULL  = "Nothing can stop a Deerclops.", 	-- 100%
-- 			HIGH  = "A Deerclops has seen much worse destruction.", 	-- >75%
-- 			MID   = "My eye is seeing red...", 			-- >50%
-- 			LOW   = "I feel... destroyed.", 	-- >25%
-- 			EMPTY = "Another Deerclops... fallen to ruin...", 	-- <25%
-- 		},
-- 		WETNESS = {
-- 			FULL  = "I'm going to collapse from wetness... like a wall.", 	-- >75%
-- 			HIGH  = "My fur is weighing me down...",					-- >55%
-- 			MID   = "My eye is getting glossy...", 				-- >35%
-- 			LOW   = "I must be... melting.", 		-- >15%
-- 			EMPTY = "Dry as ice.", 				-- <15%
-- 		},
-- }
-------------------------- CHARACTER --------------------------
-- STRINGS.CHARACTERS.GENERIC.DESCRIBE.WEERCLOPS =
-- {
--             GENERIC = "Good day to you, %s!",
--             ATTACKER = "I wouldn't trust %s around anything we built.",
--             MURDERER = "%s's gone berserk on our base!",
--             REVIVER = "%s, destroyer of bases and ghosts!",
--             GHOST = "That eye is looking more ghostly than usual, %s.",
-- 			FIRESTARTER = "Those icy claws are dripping with fire too.",
-- }
-- STRINGS.CHARACTERS.WILLOW.DESCRIBE.WEERCLOPS =
-- {
--             GENERIC = "Hi %s!",
--             ATTACKER = "I dunno what else we expected from you, %s.",
--             MURDERER = "Awe, crap! Burn 'em!",
--             REVIVER = "You can build up something after all, %s! A heart!",
--             GHOST = "Haha, quit staring and I'll get you a heart, %s!",
-- 			FIRESTARTER = "Burn it all down, %s! Burn every base!",
-- }
-- STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.WEERCLOPS =
-- {
--             GENERIC = "Is scary monster, %s! H-hello!",
--             ATTACKER = "Wolfgang will show who is mightier!",
--             MURDERER = "Scary monster %s is killer! Wolfgang is run!",
--             REVIVER = "Scary monster man is nice sometimes.",
--             GHOST = "%s needs big heart like big creepy eye!",
-- 			FIRESTARTER = "Please no. Please no burnings!",
-- }
-- STRINGS.CHARACTERS.WENDY.DESCRIBE.WEERCLOPS =
-- {
--             GENERIC = "How do you do, %s?",
--             ATTACKER = "Only blood will quench %s.",
--             MURDERER = "You've always been a terrible beast, %s.",
--             REVIVER = "Abigail likes you, %s.",
--             GHOST = "Even harbingers of death leave eventually...",
-- 			FIRESTARTER = "Abigail knows what you broke.",
-- }
-- STRINGS.CHARACTERS.WX78.DESCRIBE.WEERCLOPS =
-- {
--             GENERIC = "DETECTING... %s!",
--             ATTACKER = "INCREASING LEVELS OF VIOLENCE DETECTED. NICE",
--             MURDERER = "%s HAS BEEN DESTROYING ORGANICS AND THEIR CREATIONS",
--             REVIVER = "THIS SERVANT DESTROYS BASES FOR ME",
--             GHOST = "I AM STRONGER THAN YOU. HA HA",
-- 			FIRESTARTER = "HA HA. %s IS LAYING WASTE TO THE WORLD",
-- }
-- STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.WEERCLOPS =
-- {
--             GENERIC = "Ah, greetings, dear %s!",
--             ATTACKER = "You aren't causing more havoc, are you dear?",
--             MURDERER = "Your chaos will end here, Laurasiatheria!",
--             REVIVER = "Behind that cold exterior is still a warm heart.",
--             GHOST = "All that destruction you have to try not to destroy yourself too.",
-- 			FIRESTARTER = "Do be careful destroying, dear, ice cracks quite easy.",
-- }
-- STRINGS.CHARACTERS.WOODIE.DESCRIBE.WEERCLOPS =
-- {
--             GENERIC = "Bud, %s! Hey there!",
--             ATTACKER = "Don't go staring at my trees like that, %s.",
--             MURDERER = "I'll have those fancy antlers up on a mantel, eh!",
--             REVIVER = "You're a pretty fine moose, eh %s?",
--             GHOST = "I'll get a heart if you stop the haunting looks, eh?",
-- 			FIRESTARTER = "You'll want to watch where you set fires, bud.",
-- }
-- STRINGS.CHARACTERS.WAXWELL.DESCRIBE.WEERCLOPS =
-- {
--             GENERIC = "Greetings, err, %s...",
--             ATTACKER = "%s's destructive tendencies are getting out of hand.",
--             MURDERER = "Just like you to be a murderous fiend!",
--             REVIVER = "Your kind aren't as terrifying when they grow soft... and short.",
--             GHOST = "I'll see if I have a spare...",
-- 			FIRESTARTER = "I would have sworn they play with ice, not fire.",
-- }
-- STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.WEERCLOPS =
-- {
-- 	        GENERIC = "Hail, frigid eye giant %s!",
-- 	        ATTACKER = "Back! My spear will make this fight legendary!",
-- 	        MURDERER = "Our glorious battle shall be made ballad!!",
-- 	        REVIVER = "Believe it! A Viking allied with her greatest foe!",
-- 	        GHOST = "%s has fallen! But its eye hasn't topped my spear!",
-- 	        FIRESTARTER = "%'s massive eye hath been forged in flame!",
-- }
-- STRINGS.CHARACTERS.WEBBER.DESCRIBE.WEERCLOPS =
-- {
-- 	        GENERIC = "Hey %s! Destroy anything today?",
-- 	        ATTACKER = "Hey! We're not a building!",
-- 	        MURDERER = "You're just a big meanie!",
-- 	        REVIVER = "You're not as cold as you tell us!",
-- 	        GHOST = "Oh no, %s smushed themself!",
-- 	        FIRESTARTER = "Don't stomp with fire, %s!",
-- }
-- STRINGS.CHARACTERS.WINONA.DESCRIBE.WEERCLOPS =
-- {
--             GENERIC = "Hey there, %s... Not destroying my gadgets right?",
--             ATTACKER = "I won't be puttin' up with no more demolishin', %s.",
--             MURDERER = "You're a no good bulldozer! Get 'em!",
--             REVIVER = "Now if only you'd apply all that destruction to construction!",
--             GHOST = "Don't go starin' at me with that big ol' eye now!",
-- 			FIRESTARTER = "Now %s's startin' fires now too, huh?",
-- }
-- STRINGS.CHARACTERS.WORTOX.DESCRIBE.WEERCLOPS =
-- {
--             GENERIC = "%s! Let's go deface some funny signs! Hyuyu!",
--             ATTACKER = "What cruel tricks you play! Hyuyu!",
--             MURDERER = "Don't stomp the imp, hyuyu!",
--             REVIVER = "That eye holds a lot of souls!",
--             GHOST = "Don't look at me like that, hyuyu! Just a taste!",
--             FIRESTARTER = "Hyuyu, even icy claws like a flame or two!",
-- }
-- STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.WEERCLOPS =
-- {
--             GENERIC = "Hello Branch Head!",
--             ATTACKER = "Bad %s! No stomp!",
--             MURDERER = "%s is bad!",
--             REVIVER = "Helping. Good Branch Head.",
--             GHOST = "Oh. Where legs?",
--             FIRESTARTER = "Fire bad for head branches!",
-- }
-- STRINGS.CHARACTERS.WARLY.DESCRIBE.WEERCLOPS =
-- {
-- 		    GENERIC = "Bonjour, %s!",
-- 	        ATTACKER = "%s is being much too rough lately...",
-- 	        MURDERER = "%s has done truly abominable things.",
-- 	        REVIVER = "%s was much scarier looming overhead!",
-- 	        GHOST = "I can't make a soup out of a floating eyeball!",
-- 	        FIRESTARTER = "I had taken you for more of an icy fellow.",
-- }
-- STRINGS.CHARACTERS.WURT.DESCRIBE.WEERCLOPS =
-- {
-- 		    GENERIC = "%s not look happy.",
-- 	        ATTACKER = "Glorp! Go away!",
-- 	        MURDERER = "Glorp!! Stay away from kingdom!",
-- 	        REVIVER = "%s look happier.",
-- 	        GHOST = "Eye keeps floating, florp.",
-- 	        FIRESTARTER = "Thought you made of ice?",
-- }
-- STRINGS.CHARACTERS.WALTER.DESCRIBE.WEERCLOPS =
-- {
-- 		    GENERIC = "Hi %s!",
-- 	        ATTACKER = "That's just nature, I guess.",
-- 	        MURDERER = "H-hey, I have more than enough jerky to go around!",
-- 	        REVIVER = "Ha! I knew that cyclops was a friend!",
-- 	        GHOST = "You didn't think you were a structure yourself, did you %s?",
-- 	        FIRESTARTER = "Uh... we need to fetch you some ice.",
-- }
-- STRINGS.CHARACTERS.WANDA.DESCRIBE.WEERCLOPS =
-- {
--             GENERIC = "You wouldn't happen to be the short and sweet one this time, %s?",
--             ATTACKER = "I'm keeping my eye on you, %s...",
--             MURDERER = "%s! You're just as destructive in all my other timelines!",
--             REVIVER = "You're not as destructive as you think, %s.",
--             GHOST = "I'll have you back up and freezing in no time, %s!",
--             FIRESTARTER = "This must be the timeline where Deerclops use fire.",
-- }
--------------------------------------------------------------------------
	-------------------------- BEARGER --------------------------
--------------------------------------------------------------------------
GLOBAL.STRINGS.CHARACTER_TITLES.wearger = "多毛熊大"
GLOBAL.STRINGS.CHARACTER_NAMES.wearger = "熊獾"
GLOBAL.STRINGS.CHARACTER_DESCRIPTIONS.wearger = "在寒冷的天气里冬眠\n愤怒的跺脚\n对蜂蜜有强烈的渴望"
GLOBAL.STRINGS.CHARACTERS.WEARGER = require "speech_wearger"
GLOBAL.STRINGS.NAMES.WEARGER = "熊獾"
GLOBAL.STRINGS.LAVAARENA_CHARACTER_DESCRIPTIONS.wearger = "*可以重击地面造成额外伤害\n\n专长:\n近战"
GLOBAL.STRINGS.QUAGMIRE_CHARACTER_DESCRIPTIONS.wearger = "*可以重击地面同时砍倒多棵树木和树桩\n\n专长:\n采集"
GLOBAL.STRINGS.SKIN_NAMES.wearger_none = "熊獾"
GLOBAL.STRINGS.SKIN_DESCRIPTIONS.wearger_none = "熊獾那源源不断脱落的毛皮。"
STRINGS.CHARACTER_ABOUTME.wearger = "熊獾是一种简单、贪吃的野兽，唯一的目标就是在寒冷的季节里觅食和睡觉。"
STRINGS.CHARACTER_SURVIVABILITY.wearger = "瘦弱"
STRINGS.CHARACTER_BIOS.wearger = {
			{ title = "生日", desc = "9月1日" },
			{ title = "最喜欢的食物", desc = "蜜汁火腿" }
		}
-------------------------- SKINS --------------------------
STRINGS.SKIN_NAMES.wearger_ice = "被雪掩盖的"
STRINGS.SKIN_NAMES.wearger_survivor = "幸存者"
-- STRINGS.SKIN_NAMES.legs_wearger_survivor = "毛皮围裙"
STRINGS.SKIN_NAMES.wearger_teddy = "泰迪贝尔格"
-- STRINGS.SKIN_NAMES.body_wearger_teddy = "毛绒内衣"
STRINGS.SKIN_NAMES.wearger_minotaur = "古老的齿轮贝尔格服装"
STRINGS.SKIN_NAMES.wearger_lunar = "月球系"
if GLOBAL.GetModConfigData("enable_unintelligible","workshop-2010472942") == true then
    GLOBAL.STRINGS.SKIN_QUOTES.wearger_ice = "\"嗯。嗯！\""
    GLOBAL.STRINGS.CHARACTER_QUOTES.wearger =  "\"呜呜……\""
    GLOBAL.STRINGS.SKIN_QUOTES.wearger_survivor = "\"呜呜呜呜呜！！！\""
    GLOBAL.STRINGS.SKIN_QUOTES.wearger_teddy = "\"呜呜-哈哈哈！\""
    GLOBAL.STRINGS.SKIN_QUOTES.wearger_minotaur = "\"呜呜……儿……儿。\""
	GLOBAL.STRINGS.SKIN_QUOTES.wearger_lunar = "\"Brrr-r-r!\""
else
    GLOBAL.STRINGS.CHARACTER_QUOTES.wearger =  "\"呜呜……需要找食物。很快要冬眠了。\""
    GLOBAL.STRINGS.SKIN_QUOTES.wearger_ice = "\"大片的雪。冬眠用的好。\""
    GLOBAL.STRINGS.SKIN_QUOTES.wearger_survivor = "\"为冬眠备足粮食……不太顺利。\""
    GLOBAL.STRINGS.SKIN_QUOTES.wearger_teddy = "\"……你和我能做朋友吗？\""
    GLOBAL.STRINGS.SKIN_QUOTES.wearger_minotaur = "\"下次会找到更好的冬眠地点。\""
	GLOBAL.STRINGS.SKIN_QUOTES.wearger_lunar = "\"感觉很冷...需要开始完全休眠。\""
end
STRINGS.SKIN_DESCRIPTIONS.wearger_survivor = "熊对翻箱倒柜和粗暴对待并不陌生。"
--STRINGS.SKIN_DESCRIPTIONS.legs_wearger_survivor = "Losing that much fur surviving out in the wilderness has its uses."
STRINGS.SKIN_DESCRIPTIONS.wearger_ice = "人们不应该在大雪冬眠中打扰熊。"
STRINGS.SKIN_DESCRIPTIONS.wearger_teddy = "那些是新鲜的浆果汁污渍，熊獾只是想要一个拥抱!"
--STRINGS.SKIN_DESCRIPTIONS.body_wearger_teddy = "Feel safe at home with this classic trick and treating clothing combo."
STRINGS.SKIN_DESCRIPTIONS.wearger_minotaur = "熊经常发现自己深陷冬眠室。"
STRINGS.SKIN_DESCRIPTIONS.wearger_lunar = "在这些寒冷的天气季节里，熊獾进入了一种更有灵魂的麻木状态。"
-------------------------- 技能树 --------------------------
STRINGS.SKILLTREE.WEARGER = {
		WEARGER_FUR_1_TITLE = "脱毛",
		WEARGER_FUR_1_DESC = "增加自然脱落毛发簇的速率。",

		WEARGER_FUR_2_TITLE = "皮毛服饰",
		WEARGER_FUR_2_DESC = "学习如何使用你的毛簇更有效地制作厚毛。",

		WEARGER_FUR_CRAFT1_TITLE = "帽子制作",
		WEARGER_FUR_CRAFT1_DESC = "学习如何使用毛皮制作柔软的熊皮帽子，以应对寒冷天气。",

		WEARGER_FUR_LEFT_TITLE = "毛茸茸的手工",
		WEARGER_FUR_LEFT_DESC = "学习如何使用你的皮毛修补衣服。",

		WEARGER_FUR_RIGHT_TITLE = "毛皮地毯卷",
		WEARGER_FUR_RIGHT_DESC = "学习如何使用您的毛皮制作温暖的熊獾毛皮地毯。",

		WEARGER_FUR_CRAFT2_TITLE = "毛皮袋制作",
		WEARGER_FUR_CRAFT2_DESC = "学习如何用你的毛皮制作一个尽职尽责的收纳包。",

		WEARGER_FUR_CRAFT3_TITLE = "毛皮床建筑",
		WEARGER_FUR_CRAFT3_DESC = "了解如何使用您的毛皮制作一个舒适的熊獾毛皮卷床 供冬眠。",

		----------------------
		WEARGER_HIBEAR_FOOD_TITLE = "胃胀",
		WEARGER_HIBEAR_FOOD_DESC = "在冬眠季节，食物会增加20%的饱腹感。",

		WEARGER_HIBEAR_1_TITLE = "储备充足 I",
		WEARGER_HIBEAR_1_DESC = "当你在饱腹状态下冬眠时，获得对位面伤害的防御，你在近距离的拍地伤害会更大。",

		WEARGER_HIBEAR_2_TITLE = "储备充足 II",
		WEARGER_HIBEAR_2_DESC = "当饱腹冬眠时，获得完全的击退免疫力。",

		WEARGER_HIBEAR_3_TITLE = "储备充足 III",
		WEARGER_HIBEAR_3_DESC = "当饱腹冬眠时，更快地搬运重物。",

		WEARGER_HIBEAR_4_TITLE = "储备充足 IV",
		WEARGER_HIBEAR_4_DESC = "降低熊皮的饱腹效果阈值到20%。",

		WEARGER_HIBEAR_LOCK_DESC = "学习5种休眠技能解锁。",

		WEARGER_HIBEAR_FULL_TITLE = "卡路里冠军",
		WEARGER_HIBEAR_FULL_DESC = "在冬眠季节之外获得冬眠饱腹的好处。",

		WEARGER_YAWN_1_TITLE = "无拘无束，蓬勃发展",
		WEARGER_YAWN_1_DESC = "在冬眠季节之外增加睡眠抵抗力。",

		WEARGER_YAWN_2_TITLE = "昏昏欲睡 I",
		WEARGER_YAWN_2_DESC = "在冬眠期间，从睡眠中获得更多好处。",

		WEARGER_YAWN_3_TITLE = "昏昏欲睡 II",
		WEARGER_YAWN_3_DESC = "在冬眠期间，睡觉时减少饥饿感。",

		WEARGER_YAWN_4_TITLE = "昏昏欲睡 III",
		WEARGER_YAWN_4_DESC = "在冬眠期间，尝试地面跳跃时不要再打哈欠。\n减少睡眠后的昏昏沉沉。",

		----------------------
		WEARGER_ALLEGIANCE_LOCK_1_DESC = "学习12种技能解锁。",

		WEARGER_ALLEGIANCE_SHADOW_TITLE = "暗影延臣",
		WEARGER_ALLEGIANCE_SHADOW_DESC = "女王会为你的忠心添彩。\n你的地面猛击技能将召唤阴影触手。更快，对树木和敌人造成三倍伤害。",

		WEARGER_ALLEGIANCE_LUNAR_TITLE = "月光创新者",
		WEARGER_ALLEGIANCE_LUNAR_DESC = "神秘创始人将通过提高你的地面猛击伤害来奖励你的好奇心。\n跳向你的敌人，在没有冷却的情况下造成毁灭性的伤害。",
}
STRINGS.SKILLTREE.PANELS.FUR = "毛簇"
STRINGS.SKILLTREE.PANELS.HIBEARNATION = "熊皮"
-- STRINGS.NAMES.WEARGER_HAT = "Hibearnation Hat"
-- STRINGS.RECIPE_DESC.WEARGER_HAT = "Hearty is the head that bears this hat."
-- STRINGS.CHARACTERS.GENERIC.DESCRIBE.WEARGER_HAT = "I'll let my mind hibernate this season."
-- STRINGS.CHARACTERS.WILLOW.DESCRIBE.WEARGER_HAT = "Great. Now my head's gonna smell like bearger-butt."
-- STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.WEARGER_HAT = "Hat fit just right on Wolfgang!"
-- STRINGS.CHARACTERS.WENDY.DESCRIBE.WEARGER_HAT = "Your head is as empty as I..."
-- STRINGS.CHARACTERS.WX78.DESCRIBE.WEARGER_HAT = "HAIRY HEAD COVERING"
-- STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.WEARGER_HAT = "This will keep my mind at ease during those torpid seasons."
-- STRINGS.CHARACTERS.WOODIE.DESCRIBE.WEARGER_HAT = "A real woodsman's hat, from the bear itself."
-- STRINGS.CHARACTERS.WAXWELL.DESCRIBE.WEARGER_HAT = "I suppose that brute doesn't have a taste for style."
-- STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.WEARGER_HAT = "See this hat, 'twas no cat!"
-- STRINGS.CHARACTERS.WEBBER.DESCRIBE.WEARGER_HAT = "We already have a head full of hair!"
-- STRINGS.CHARACTERS.WINONA.DESCRIBE.WEARGER_HAT = "Can't go wrong with a hat like this in the winter."
-- STRINGS.CHARACTERS.WORTOX.DESCRIBE.WEARGER_HAT = "I thought I was only who was hairbrained here!"
-- STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.WEARGER_HAT = "Hair for head"
-- STRINGS.CHARACTERS.WARLY.DESCRIBE.WEARGER_HAT = "You'll keep my head nice and toasty."
-- STRINGS.CHARACTERS.WURT.DESCRIBE.WEARGER_HAT = "Think with a teddy's thoughts. Not many thoughts in here, florpt."
-- STRINGS.CHARACTERS.WALTER.DESCRIBE.WEARGER_HAT = "What do you think, Woby? Do we match?"
-- STRINGS.CHARACTERS.WANDA.DESCRIBE.WEARGER_HAT = "Don't you fill my head with thoughts of overwintering."
-- ----------------------
-- STRINGS.NAMES.WEARGER_BIN = "Bearger Bag"
-- STRINGS.RECIPE_DESC.WEARGER_BIN = "No longer be badgered by excess stash."
-- STRINGS.CHARACTERS.GENERIC.DESCRIBE.WEARGER_BIN = "I've got enough hair to share around."
-- STRINGS.CHARACTERS.WILLOW.DESCRIBE.WEARGER_BIN = "Who would want a bag of your hair?"
-- STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.WEARGER_BIN = "Big bear hug for Wolfgang's things!"
-- STRINGS.CHARACTERS.WENDY.DESCRIBE.WEARGER_BIN = "It cradles my belongings from the outside world."
-- STRINGS.CHARACTERS.WX78.DESCRIBE.WEARGER_BIN = "YOU WILL CARRY MY THINGS"
-- STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.WEARGER_BIN = "A brilliant use for your surplus of hair."
-- STRINGS.CHARACTERS.WOODIE.DESCRIBE.WEARGER_BIN = "My stuff's always safer surrounded by fur."
-- STRINGS.CHARACTERS.WAXWELL.DESCRIBE.WEARGER_BIN = "That brute has so much hair we're having to carry it as well."
-- STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.WEARGER_BIN = "I will carry your spirit on with me!"
-- STRINGS.CHARACTERS.WEBBER.DESCRIBE.WEARGER_BIN = "We'll carry a little bit of you with us!"
-- STRINGS.CHARACTERS.WINONA.DESCRIBE.WEARGER_BIN = "For when I need just a hair of more space."
-- STRINGS.CHARACTERS.WORTOX.DESCRIBE.WEARGER_BIN = "The hair will take care!"
-- STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.WEARGER_BIN = "Fuzzy will carry stuff"
-- STRINGS.CHARACTERS.WARLY.DESCRIBE.WEARGER_BIN = "A nice prestige fur bag."
-- STRINGS.CHARACTERS.WURT.DESCRIBE.WEARGER_BIN = "Could carry more stuff with scales!"
-- STRINGS.CHARACTERS.WALTER.DESCRIBE.WEARGER_BIN = "Don't worry, Woby, I wouldn't turn you into a small bag!"
-- STRINGS.CHARACTERS.WANDA.DESCRIBE.WEARGER_BIN = "You'll have to bear the burden of carrying my things."
-- ----------------------
-- STRINGS.NAMES.WEARGER_BED = "Bearger Fur Roll"
-- STRINGS.RECIPE_DESC.WEARGER_BED = "Sleep through the winter."
-- STRINGS.CHARACTERS.GENERIC.DESCRIBE.WEARGER_BED = "All that hair makes it warmer."
-- STRINGS.CHARACTERS.WILLOW.DESCRIBE.WEARGER_BED = "I hope that stink doesn't stick."
-- STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.WEARGER_BED = "Is itchy like big bear."
-- STRINGS.CHARACTERS.WENDY.DESCRIBE.WEARGER_BED = "All that dead hair and it still smells of life."
-- STRINGS.CHARACTERS.WX78.DESCRIBE.WEARGER_BED = "YOUR DISGUSTING DROPPINGS WILL NOT WARM ME"
-- STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.WEARGER_BED = "I appreciate the sentiment, dear."
-- STRINGS.CHARACTERS.WOODIE.DESCRIBE.WEARGER_BED = "Nothing like a good night's sleep on real fur, eh?"
-- STRINGS.CHARACTERS.WAXWELL.DESCRIBE.WEARGER_BED = "I don't want even a single one of your hairs on this suit."
-- STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.WEARGER_BED = "Your fur makes for a true warrior's sleep!"
-- STRINGS.CHARACTERS.WEBBER.DESCRIBE.WEARGER_BED = "We'll have to hold our nose the whole night."
-- STRINGS.CHARACTERS.WINONA.DESCRIBE.WEARGER_BED = "It's a lot easier when we don't have to badger 'em for all this hair."
-- STRINGS.CHARACTERS.WORTOX.DESCRIBE.WEARGER_BED = "From one fur to another!"
-- STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.WEARGER_BED = "Hairy sleepytime"
-- STRINGS.CHARACTERS.WARLY.DESCRIBE.WEARGER_BED = "That smell might be enough to keep me up all night."
-- STRINGS.CHARACTERS.WURT.DESCRIBE.WEARGER_BED = "Stripy fluff."
-- STRINGS.CHARACTERS.WALTER.DESCRIBE.WEARGER_BED = "I always got weird looks for saying we should just ask nicely for fur! Look at us now!"
-- STRINGS.CHARACTERS.WANDA.DESCRIBE.WEARGER_BED = "There's worse far worse to spend time sleeping on."
-- ----------------------
-- STRINGS.NAMES.WEARGER_RUG = "Bearger Fur Rug"
-- STRINGS.RECIPE_DESC.WEARGER_RUG = "Made from real Bearger chest!"
-- STRINGS.CHARACTERS.GENERIC.DESCRIBE.WEARGER_RUG = "I recognize art when I see it!"
-- STRINGS.CHARACTERS.WILLOW.DESCRIBE.WEARGER_RUG = "I know a way to make it even warmer!"
-- STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.WEARGER_RUG = "Is good hair rug."
-- STRINGS.CHARACTERS.WENDY.DESCRIBE.WEARGER_RUG = "It feels like frolicking in a field of dead hair."
-- STRINGS.CHARACTERS.WX78.DESCRIBE.WEARGER_RUG = "STAY BENEATH ME"
-- STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.WEARGER_RUG = "Making allies of those we thought vicious has been quite lucrative."
-- STRINGS.CHARACTERS.WOODIE.DESCRIBE.WEARGER_RUG = "Feels like home!"
-- STRINGS.CHARACTERS.WAXWELL.DESCRIBE.WEARGER_RUG = "I feel quite vindicated about this one."
-- STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.WEARGER_RUG = "Your hide benefits us well!"
-- STRINGS.CHARACTERS.WEBBER.DESCRIBE.WEARGER_RUG = "I'm glad we didn't hurt anything for this!"
-- STRINGS.CHARACTERS.WINONA.DESCRIBE.WEARGER_RUG = "You make a mean rug, ya small lug."
-- STRINGS.CHARACTERS.WORTOX.DESCRIBE.WEARGER_RUG = "I'm fur from head to toe to below!"
-- STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.WEARGER_RUG = "Scratchy"
-- STRINGS.CHARACTERS.WARLY.DESCRIBE.WEARGER_RUG = "It really livens up the place."
-- STRINGS.CHARACTERS.WURT.DESCRIBE.WEARGER_RUG = "Soft!"
-- STRINGS.CHARACTERS.WALTER.DESCRIBE.WEARGER_RUG = "Don't think about it, Woby!"
-- STRINGS.CHARACTERS.WANDA.DESCRIBE.WEARGER_RUG = "Thankfully it doesn't slow me down."
-- ----------------------
-- STRINGS.CHARACTERS.GENERIC.ACTIONFAIL.SEW = { NOTWEARGER = "This hair gets everywhere but here!", }
-- STRINGS.CHARACTERS.WILLOW.ACTIONFAIL.SEW = { NOTWEARGER = "Yuck! I don't that fur in my clothes!", }
-- STRINGS.CHARACTERS.WOLFGANG.ACTIONFAIL.SEW = { NOTWEARGER = "Big bear fur doesn't fit!", }
-- STRINGS.CHARACTERS.WENDY.ACTIONFAIL.SEW = { NOTWEARGER = "There's no patching things up.", }
-- STRINGS.CHARACTERS.WX78.ACTIONFAIL.SEW = { NOTWEARGER = "KEEP YOUR FURS AWAY FROM ME", }
-- STRINGS.CHARACTERS.WICKERBOTTOM.ACTIONFAIL.SEW = { NOTWEARGER = "I'm afraid I have no experience with this material.", }
-- STRINGS.CHARACTERS.WOODIE.ACTIONFAIL.SEW = { NOTWEARGER = "You don't know how to sew with this, do ya 'Luce?", }
-- STRINGS.CHARACTERS.WAXWELL.ACTIONFAIL.SEW = { NOTWEARGER = "I'm sure I can find any cut of fur better for that.", }
-- STRINGS.CHARACTERS.WATHGRITHR.ACTIONFAIL.SEW = { NOTWEARGER = "I shall make better use of this beast's fur.", }
-- STRINGS.CHARACTERS.WEBBER.ACTIONFAIL.SEW = { NOTWEARGER = "We might do better with some silk!", }
-- STRINGS.CHARACTERS.WINONA.ACTIONFAIL.SEW = { NOTWEARGER = "Think my tape would do ya one better.", }
-- STRINGS.CHARACTERS.WORTOX.ACTIONFAIL.SEW = { NOTWEARGER = "No hair will fit here nor there!", }
-- STRINGS.CHARACTERS.WORMWOOD.ACTIONFAIL.SEW = { NOTWEARGER = "Hmmm... Can't do", }
-- STRINGS.CHARACTERS.WARLY.ACTIONFAIL.SEW = { NOTWEARGER = "Not much of an ingredient I can use I'm afraid.", }
-- STRINGS.CHARACTERS.WURT.ACTIONFAIL.SEW = { NOTWEARGER = "Bad hair!", }
-- STRINGS.CHARACTERS.WALTER.ACTIONFAIL.SEW = { NOTWEARGER = "This would be easier with a needle.", }
-- STRINGS.CHARACTERS.WANDA.ACTIONFAIL.SEW = { NOTWEARGER = "If only sewing weren't so time consuming.", }
-------------------------- A Little Drama - Stage play --------------------------
STRINGS.STAGEACTOR.WEARGER1 =
    {
        "费-菲-佛-凡。",
        "我闻到了一个采蜜者的蜂蜜的味道。",
        "（嗅嗅）",
        "呜呜呜！",
        "太饿了！",
		"现在开始冬眠。永远。",
    }

general_scripts.WEARGER1 = {
   cast = { "wearger" },
   lines = {
		{roles = {"wearger"},	duration = 3.0, line = STRINGS.STAGEACTOR.WEARGER1[1]},
		{roles = {"wearger"},	duration = 3.0, line = STRINGS.STAGEACTOR.WEARGER1[2]},
		{roles = {"wearger"},	duration = 2.5, line = STRINGS.STAGEACTOR.WEARGER1[3], anim="idle_wearger"},
		{roles = {"wearger"},	duration = 2.0, line = STRINGS.STAGEACTOR.WEARGER1[4]},
		{roles = {"wearger"},	duration = 3.0, line = STRINGS.STAGEACTOR.WEARGER1[5]},
		{roles = {"wearger"},	duration = 3.0, line = STRINGS.STAGEACTOR.WEARGER1[6]},
    }
}
-------------------------- MODDED --------------------------
-- GLOBAL.STRINGS._STATUS_ANNOUNCEMENTS.WEARGER =
-- {
-- 		HUNGER = {
-- 			FULL  = "Full enough for hibernating!", 	-- >75%
-- 			HIGH  = "Still preparing for hibernation.",			-- >55%
-- 			MID   = "Losing warmth from food...", 	-- >35%
-- 			LOW   = "GRRR. Need to find stash of berries and nuts.", 				-- >15%
-- 			EMPTY = "RRRRRRAUUUGH!! FOOOD!!!", 			-- <15%
-- 		},
-- 		SANITY = {
-- 			FULL  = "Feels good.", 			-- >75%
-- 			HIGH  = "Head has started to itch.", 				-- >55%
-- 			MID   = "Head feels hairy. Inside too.", 				-- >35%
-- 			LOW   = "Head feels like it's being ground pound!", 			-- >15%
-- 			EMPTY = "GRRRAAA!! Get out of my head!!", 	-- <15%
-- 		},
-- 		HEALTH = {
-- 			FULL  = "Not missing any hair.", 	-- 100%
-- 			HIGH  = "Grrr. Little scratches. Hair grows back.", 	-- >75%
-- 			MID   = "Honey. I need honey.", 			-- >50%
-- 			LOW   = "Grr... I shed blood like hair.", 	-- >25%
-- 			EMPTY = "Nearing... the last hibernation.", 	-- <25%
-- 		},
-- 		WETNESS = {
-- 			FULL  = "GrrRrRr... Drowning!", 	-- >75%
-- 			HIGH  = "Fur is a slog. Can't hibernate...",					-- >55%
-- 			MID   = "Fur doesn't soak up much water...", 				-- >35%
-- 			LOW   = "Fur is sprinkling.", 		-- >15%
-- 			EMPTY = "Fur is nice and dry. Cozy.", 				-- <15%
-- 		},
-- }
-------------------------- CHARACTER --------------------------
-- STRINGS.CHARACTERS.GENERIC.DESCRIBE.WEARGER =
-- {
--             GENERIC = "Good day to you, %s!",
--             ATTACKER = "I can hear %s's stomach growling from here...",
--             MURDERER = "%s has gone bearserk!",
--             REVIVER = "%s is like a big, hungry teddy bear.",
--             GHOST = "%s went into a more permanent hibernation.",
-- 			FIRESTARTER = "Your fur's looking more ashier than usual, %s.",
-- }
-- STRINGS.CHARACTERS.WILLOW.DESCRIBE.WEARGER =
-- {
--             GENERIC = "Hi %s!",
--             ATTACKER = "Nice bear, nice bear! Uh oh.",
--             MURDERER = "Need help losing some more hair, %s? BURN!",
--             REVIVER = "It's like having a smellier life-size Bernie!",
--             GHOST = "Aw. No fun if I can't burn your hair anymore!",
-- 			FIRESTARTER = "BURN it, bear, BURN it!!",
-- }
-- STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.WEARGER =
-- {
--             GENERIC = "Is little bear, %s! Hello!",
--             ATTACKER = "Ah! Little bear is hungier than Wolfgang!",
--             MURDERER = "Little bear is killer! Wolfgang will run!",
--             REVIVER = "%s is nice bear. Has hair like on Wolfgang chest.",
--             GHOST = "Wolfgang will get raw hairy heart for you!",
-- 			FIRESTARTER = "Little bear %s is burning hair!",
-- }
-- STRINGS.CHARACTERS.WENDY.DESCRIBE.WEARGER =
-- {
--             GENERIC = "How do you do, %s?",
--             ATTACKER = "%s's hunger is insatiable. He will devour us whole.",
--             MURDERER = "Your fur still reeks of murder, %s.",
--             REVIVER = "Abigail likes you, %s.",
--             GHOST = "Even %s sheds a heart.",
-- 			FIRESTARTER = "Do you wish to see the world burn?",
-- }
-- STRINGS.CHARACTERS.WX78.DESCRIBE.WEARGER =
-- {
--             GENERIC = "DETECTING... %s!",
--             ATTACKER = "%s IS ANGRIER THAN USUAL. NICE.",
--             MURDERER = "HA HA. %S IS SQUASHING THE FLESHLINGS AND EATING THEM",
--             REVIVER = "%s IS A USEFUL MINION. GOOD THING I CANNOT SMELL HIM",
--             GHOST = "HA HA. %s WENT INTO A PERMANENT HIBERNATION",
-- 			FIRESTARTER = "%s LAYS WASTE TO THE WORLD",
-- }
-- STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.WEARGER =
-- {
--             GENERIC = "Ah, greetings dear %s!",
--             ATTACKER = "%s has quite the temper when he doesn't feed.",
--             MURDERER = "Enough! Your hunger will end here!",
--             REVIVER = "Now that you can form coherent words, I would like to know more about your species!",
--             GHOST = "Oh dear. You shouldn't be shedding that much. Tsk.",
-- 			FIRESTARTER = "Do be careful where you scavenge, dear.",
-- }
-- STRINGS.CHARACTERS.WOODIE.DESCRIBE.WEARGER =
-- {
--             GENERIC = "Look who it is! %s!",
--             ATTACKER = "Don't like how %s is treating my forests.",
--             MURDERER = "You've just been waitin' on a Canadian to cut ya down to size!",
--             REVIVER = "%s sure has some proper winter gear on him!",
--             GHOST = "Only a true Canadian can survive harsh winters, eh?",
-- 			FIRESTARTER = "Not only does he knock trees over, he burns 'em down too!",
-- }
-- STRINGS.CHARACTERS.WAXWELL.DESCRIBE.WEARGER =
-- {
--             GENERIC = "Greetings, Mr. %s...",
--             ATTACKER = "Just give him whatever he wants and he'll go away.",
--             MURDERER = "%s has always been a bloodthirsty and messy creature.",
--             REVIVER = "%s makes a better ally than I would've thought.",
--             GHOST = "Perhaps we could use all that leftover hair for a nice rug.",
-- 			FIRESTARTER = "%s's fur reeks of ash and fire.",
-- }
-- STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.WEARGER =
-- {
-- 	        GENERIC = "Hail, beastly berserker %s!",
-- 	        ATTACKER = "Back! Back, berserker!",
-- 	        MURDERER = "BEAR-SERKER! Meet by spear!!",
-- 	        REVIVER = "%s, a beastly warrior!",
-- 	        GHOST = "Your hide is now forfeit.",
-- 	        FIRESTARTER = "%s's hair hath been forged in flame!",
-- }
-- STRINGS.CHARACTERS.WEBBER.DESCRIBE.WEARGER =
-- {
-- 	        GENERIC = "Hi %s! Winter coat's coming in nice!",
-- 	        ATTACKER = "Hey! Food isn't everything!",
-- 	        MURDERER = "Uh oh! %s might swallow us both!",
-- 	        REVIVER = "%s is nice and hairy! Like me!",
-- 	        GHOST = "Oh no! How much did you shed?",
-- 	        FIRESTARTER = "Don't light fires, %s!",
-- }
-- STRINGS.CHARACTERS.WINONA.DESCRIBE.WEARGER =
-- {
--             GENERIC = "How you doin', ya hairy lug?",
--             ATTACKER = "Hey, things don't have to get hairy!",
--             MURDERER = "%s's got a mean murderous mug on 'em!",
--             REVIVER = "You could use a brush once in a while, %s!",
--             GHOST = "That's what all that lying about does to ya!",
-- 			FIRESTARTER = "Quit with the fires, ya hairy lug!",
-- }
-- STRINGS.CHARACTERS.WORTOX.DESCRIBE.WEARGER =
-- {
--             GENERIC = "Hello hello, hungry hangry bear!",
--             ATTACKER = "%s is looking to eat! I hope it's not imp meat!",
--             MURDERER = "Do not eat the imp, hyuyu!",
--             REVIVER = "%s saves souls from the hibernation station!",
--             GHOST = "Hyuyu, your soul is so hairy!",
--             FIRESTARTER = "Your pranks sure do get hairy! Hyuyu!",
-- }
-- STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.WEARGER =
-- {
--             GENERIC = "%s is hairy friend",
--             ATTACKER = "No hitting, hairy!",
--             MURDERER = "%s is Mad Murder Molter!",
--             REVIVER = "%s is friend fixer",
--             GHOST = "Not so smelly now",
--             FIRESTARTER = "Fire bad, fire bad!",
-- }
-- STRINGS.CHARACTERS.WARLY.DESCRIBE.WEARGER =
-- {
-- 		    GENERIC = "Bonjour, my very hairy friend!",
-- 	        ATTACKER = "Might a nice soup simmer you down, %s?",
-- 	        MURDERER = "Oh dear. I don't think %s would have the patience for my cooking.",
-- 	        REVIVER = "Hmm. I'll have to cook up a full-body hair net for you.",
-- 	        GHOST = "It hurts to see someone go out on an empty stomach!",
-- 	        FIRESTARTER = "Things are getting much too hairy, %s.",
-- }
-- STRINGS.CHARACTERS.WURT.DESCRIBE.WEARGER =
-- {
-- 		    GENERIC = "Hello fuzzy hairy man!",
-- 	        ATTACKER = "Not fair, you have too much hair!",
-- 	        MURDERER = "Grrr, you just a bear bully!",
-- 	        REVIVER = "You is warm and fuzzy.",
-- 	        GHOST = "Will find extra fluffy heart for you!",
-- 	        FIRESTARTER = "Florpt! Too warm! Bad for hair!",
-- }
-- STRINGS.CHARACTERS.WALTER.DESCRIBE.WEARGER =
-- {
-- 		    GENERIC = "Hey %s!",
-- 	        ATTACKER = "I think %s's bear hugs are getting out of control.",
-- 	        MURDERER = "I gotta write down that this species of bear and badger are killers.",
-- 	        REVIVER = "%s's coat is softer than it looks!",
-- 	        GHOST = "Don't worry! Woby and I will sniff out a good heart!",
-- 	        FIRESTARTER = "I never thought I'd be teaching a bear how to build a campfire!",
-- }
-- STRINGS.CHARACTERS.WANDA.DESCRIBE.WEARGER =
-- {
--             GENERIC = "Sorry, %s. No time to hibernate!",
--             ATTACKER = "Acts like that don't surprise me anymore.",
--             MURDERER = "Murderer! I'll have to tell you about all the timelines you've perished in.",
--             REVIVER = "Never thought a Bearger would be so reliable in this timeline.",
--             GHOST = "Give me a moment, %s. You won't forget the taste of honey yet!",
--             FIRESTARTER = "I don't remember you burning things last timeline.",
-- }
--------------------------------------------------------------------------
	-------------------------- MOOSE/GOOSE --------------------------
--------------------------------------------------------------------------
GLOBAL.STRINGS.CHARACTER_TITLES.woose = "鹅跃之主"
GLOBAL.STRINGS.CHARACTER_NAMES.woose = "麋鹿或雁鸟"
if GLOBAL.GetModConfigData("enable_nesting","workshop-2010472942") == true then
GLOBAL.STRINGS.CHARACTER_DESCRIPTIONS.woose = "能够形成凶悍的旋风\n喜欢在海洋上散步\n容易弄湿羽毛\n有建巢的倾向"
else
GLOBAL.STRINGS.CHARACTER_DESCRIPTIONS.woose = "能够形成凶悍的旋风\n容易弄湿羽毛\n善于发出恶意嘎嘎声"
end
GLOBAL.STRINGS.CHARACTERS.WOOSE = require "speech_woose"
GLOBAL.STRINGS.NAMES.WOOSE = "麋鹿鹅"
GLOBAL.STRINGS.SKIN_NAMES.woose_none = "麋鹿鹅"
GLOBAL.STRINGS.SKIN_DESCRIPTIONS.woose_none = "电流使羽毛变得凌乱的外观。"
GLOBAL.STRINGS.LAVAARENA_CHARACTER_DESCRIPTIONS.woose = "*具有母性光环，治疗效果提升20%\n\n专长：\n近战，飞镖，法杖"
GLOBAL.STRINGS.QUAGMIRE_CHARACTER_DESCRIPTIONS.woose = "*带上她可靠的巢\n*检查食物以确定是否符合咀嚼者的口味\n\n专长：\n采集"
STRINGS.CHARACTER_ABOUTME.woose = "在常态中，一个可爱的早晨，你是一只母性麋鹿……或者是雁鸟。"
STRINGS.CHARACTER_SURVIVABILITY.woose = "凄惨"
STRINGS.CHARACTER_BIOS.woose = {
			{ title = "生日", desc = "3月6日" },
			{ title = "喜欢的食物", desc = "花卉沙拉" }, }
-------------------------- SKINS --------------------------
STRINGS.SKIN_NAMES.woose_ice = "冰雪降临"
STRINGS.SKIN_DESCRIPTIONS.woose_ice = "这只鹿鹅更愿意为她的幼崽准备一顿美食，而不是成为它们的食物。"
STRINGS.SKIN_DESCRIPTIONS.woose_young = "他们总是说鹿鹅看起来比实际年龄年轻。"
STRINGS.SKIN_NAMES.woose_young = "孵化之蛋"
STRINGS.SKIN_DESCRIPTIONS.woose_victorian = "为了简单的巢穴竟然花费了这么多时间和精力，肯定是有回报的吧？"
STRINGS.SKIN_NAMES.woose_victorian = "维多利亚时代"
--STRINGS.SKIN_NAMES.body_woose_victorian = "鹿鹅母亲装"
--STRINGS.SKIN_DESCRIPTIONS.body_woose_victorian = "为了照看你育儿场中所有鸟嘴并保持良好形象而进行双重工作。"
STRINGS.SKIN_NAMES.woose_malbatross = "鹿鹅魔蝙蝠装"
STRINGS.SKIN_DESCRIPTIONS.woose_malbatross = "这个服装需要在海上钓鱼度过许多艰难的日子。"
if GLOBAL.GetModConfigData("enable_unintelligible","workshop-2010472942") == true then
	GLOBAL.STRINGS.CHARACTER_QUOTES.woose =  "\"嘟哧嘟!? 喙喙喙来!!!\""
	GLOBAL.STRINGS.SKIN_QUOTES.woose_ice = "\"呼-呼-呼——嘟!!\""
	GLOBAL.STRINGS.SKIN_QUOTES.woose_young = "\"嘎呢！噗噗！嘟！\""
	GLOBAL.STRINGS.SKIN_QUOTES.woose_victorian = "\"嘟喙！！！\""
	GLOBAL.STRINGS.SKIN_QUOTES.woose_malbatross = "\"嘿呼——呼-呼-呼嘟！\""
	else
	GLOBAL.STRINGS.CHARACTER_QUOTES.woose =  "\"妈妈最了解她的巢! 哈呜!!\""
	GLOBAL.STRINGS.SKIN_QUOTES.woose_ice = "\"让妈妈在她的翅膀下为你取暖吧! 哈呜!\""
	GLOBAL.STRINGS.SKIN_QUOTES.woose_young = "\"为了保护她的幼崽，母亲必须变成她的幼崽!!\""
	GLOBAL.STRINGS.SKIN_QUOTES.woose_victorian = "\"嘟喙！一个好妈妈会毕命为巢穴奋斗牙齿和爪子！\""
	GLOBAL.STRINGS.SKIN_QUOTES.woose_malbatross = "\"妈妈会在海洋中为她的幼崽捕捉所有的鱼！\""
end
-------------------------- A Little Drama - Stage play --------------------------
STRINGS.STAGEACTOR.WOOSE1 =
    {
        "咯咯，咯咯，鹿鹿鹅母鸭，",
        "她有飞羽掉吗？",
        "真的，妈妈有，漂亮小家伙，",
        "足够半个枕头填充！",
		"这里有羽毛笔，拿一两根，",
		"再加些绒毛给你做床！",
		"嘟嘟！",
    }

general_scripts.WOOSE1 = {
   cast = { "woose" },
   lines = {
		{roles = {"woose"},	duration = 3.0, line = STRINGS.STAGEACTOR.WOOSE1[1]},
		{roles = {"woose"},	duration = 3.0, line = STRINGS.STAGEACTOR.WOOSE1[2]},
		{roles = {"woose"},	duration = 3.0, line = STRINGS.STAGEACTOR.WOOSE1[3]},
		{roles = {"woose"},	duration = 3.0, line = STRINGS.STAGEACTOR.WOOSE1[4]},
		{roles = {"woose"},	duration = 3.0, line = STRINGS.STAGEACTOR.WOOSE1[5]},
		{roles = {"woose"},	duration = 3.0, line = STRINGS.STAGEACTOR.WOOSE1[6]},
		{roles = {"woose"},	duration = 1.0, line = STRINGS.STAGEACTOR.WOOSE1[7]},
    }
}
-------------------------- MODDED --------------------------
-- GLOBAL.STRINGS._STATUS_ANNOUNCEMENTS.WOOSE =
-- {
-- 		HUNGER = {
-- 			FULL  = "Stuffed!", 	-- >75%
-- 			HIGH  = "Enough food for the whole nest!",			-- >55%
-- 			MID   = "Need to feed! Honk!!", 	-- >35%
-- 			LOW   = "Hynk! Momma has to skip feeding her young tonight!", 				-- >15%
-- 			EMPTY = "Momma fed all her young, but not herself! HYNK!", 			-- <15%
-- 		},
-- 		SANITY = {
-- 			FULL  = "Honk! My young keeps momma happy!", 			-- >75%
-- 			HIGH  = "Took a little bonk on the antlers! HOOONK!", 				-- >55%
-- 			MID   = "Hearing lots of honking!! HYONK!", 				-- >35%
-- 			LOW   = "Momma's eyes are spinning!!", 			-- >15%
-- 			EMPTY = "HYYOOOONNK!!!", 	-- <15%
-- 		},
-- 		HEALTH = {
-- 			FULL  = "The healthiest momma in the whole flock!", 	-- 100%
-- 			HIGH  = "Hynk! Momma's got a few plucked feathers!", 	-- >75%
-- 			MID   = "Momma's not feeling so good... hyoonk.", 			-- >50%
-- 			LOW   = "Younglings! Momma needs your help!", 	-- >25%
-- 			EMPTY = "Momma has fallen out of her own nest! Hynnnk...", 	-- <25%
-- 		},
-- 		WETNESS = {
-- 			FULL  = "HYNK! Feathers are full of water! Too heavy to swim!!", 	-- >75%
-- 			HIGH  = "Feathers are filled with water! Too much, honnk!",					-- >55%
-- 			MID   = "Feathers getting heavy!! Hynk!", 				-- >35%
-- 			LOW   = "Refreshing feathers!", 		-- >15%
-- 			EMPTY = "Dry with frizzy, fluffy feathers!", 				-- <15%
-- 		},
-- }
-------------------------- CHARACTER --------------------------
STRINGS.CHARACTERS.GENERIC.DESCRIBE.NESTING_WOOSE = "我还没有准备好承诺。"
STRINGS.CHARACTERS.WILLOW.DESCRIBE.NESTING_WOOSE = "只是一堆没用的树枝。"
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.NESTING_WOOSE = "用爱心制作！"
STRINGS.CHARACTERS.WENDY.DESCRIBE.NESTING_WOOSE = "这是一个虚构的生命。"
STRINGS.CHARACTERS.WX78.DESCRIBE.NESTING_WOOSE = "一堆恶心的树枝堆积"
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.NESTING_WOOSE = "尽管高度不同，但北美麋鹿仍然有母爱。"
STRINGS.CHARACTERS.WOODIE.DESCRIBE.NESTING_WOOSE = "可能需要一点砍伐，伙计。"
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.NESTING_WOOSE = "把它的气味离我远点，我们就成交了。"
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.NESTING_WOOSE = "一群树枝和泥土的喧闹观众！"
STRINGS.CHARACTERS.WEBBER.DESCRIBE.NESTING_WOOSE = "哇！你做了一个真棒的巢穴！"
STRINGS.CHARACTERS.WINONA.DESCRIBE.NESTING_WOOSE = "你真有决心，我得承认。"
STRINGS.CHARACTERS.WORTOX.DESCRIBE.NESTING_WOOSE = "最适合怪物母亲的巢穴！"
STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.NESTING_WOOSE = "朋友们相互拥抱"
STRINGS.CHARACTERS.WARLY.DESCRIBE.NESTING_WOOSE = "就像一锅有树枝的汤。"
STRINGS.CHARACTERS.WURT.DESCRIBE.NESTING_WOOSE = "对于国王来说，这个座位还不够好，florp！"
STRINGS.CHARACTERS.WALTER.DESCRIBE.NESTING_WOOSE = "树枝和泥土！希望里面还有些虫子！"
STRINGS.CHARACTERS.WANDA.DESCRIBE.NESTING_WOOSE = "我无法理解等待那么久。"
----------------------
-- GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.NESTING_WOOSE = { GENERAL = "I'm not ready for the commitment.",	LOW = "Empty nest syndrome must be setting in.", }
-- GLOBAL.STRINGS.CHARACTERS.WILLOW.DESCRIBE.NESTING_WOOSE = { GENERAL = "I can show you my love with a little fire! What'dya say, birdbutt?",	LOW = "Can I put it out of its misery already?", }
-- GLOBAL.STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.NESTING_WOOSE = { GENERAL = "Is little bird baby bed!",	LOW = "Little bird baby bed is weaker than usual.", }
-- GLOBAL.STRINGS.CHARACTERS.WENDY.DESCRIBE.NESTING_WOOSE = { GENERAL = "It's a fabrication of life.",	LOW = "It, too, will die.", }
-- GLOBAL.STRINGS.CHARACTERS.WX78.DESCRIBE.NESTING_WOOSE = { GENERAL = "AMASSING OF GROSS STICKS",	LOW = "EXPIRY DATE APPROACHING. GOOD", }
-- GLOBAL.STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.NESTING_WOOSE = { GENERAL = "Despite the new height, Alces canadensis are still maternal at heart.",	LOW = "Perhaps I could lend a helping hand, she would be grateful.", }
-- GLOBAL.STRINGS.CHARACTERS.WOODIE.DESCRIBE.NESTING_WOOSE = { GENERAL = "Could use a chopping there, bud.",	LOW = "Your home's looking pretty worse for wear.", }
-- GLOBAL.STRINGS.CHARACTERS.WAXWELL.DESCRIBE.NESTING_WOOSE = { GENERAL = "Filthy.",	LOW = "If you're going to walk like us, you could do with cleaning up your filth.", }
-- GLOBAL.STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.NESTING_WOOSE = { GENERAL = "If it's important to my ally, it's important to us all!",	LOW = "Beauty fades. Glory is forever.", }
-- GLOBAL.STRINGS.CHARACTERS.WEBBER.DESCRIBE.NESTING_WOOSE = { GENERAL = "Wow! You make a really good den!",	LOW = "Aw, we should help her with her den!", }
-- GLOBAL.STRINGS.CHARACTERS.WINONA.DESCRIBE.NESTING_WOOSE = { GENERAL = "Ya got gusto, I'll give you that.",	LOW = "That's not gonna last much longer.", }
-- GLOBAL.STRINGS.CHARACTERS.WORTOX.DESCRIBE.NESTING_WOOSE = { GENERAL = "A nest that fits a monstrous mother best!",	LOW = "This nest is soon to be laid to rest!", }
-- GLOBAL.STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.NESTING_WOOSE = { GENERAL = "Friends cuddling",	LOW = "Sick, Friend?", }
-- GLOBAL.STRINGS.CHARACTERS.WARLY.DESCRIBE.NESTING_WOOSE = { GENERAL = "Like a stick soup.",	LOW = "I fear its expiry date is soon.", }
-- GLOBAL.STRINGS.CHARACTERS.WURT.DESCRIBE.NESTING_WOOSE = { GENERAL = "Not good enough seat for a king, florp!",	LOW = "Fish wouldn't get wilty like this, florp.", }
-- GLOBAL.STRINGS.CHARACTERS.WALTER.DESCRIBE.NESTING_WOOSE = { GENERAL = "I've always wanted to ask a waterfowl about its nest!",	LOW = "Do you think she'll let us build her a bird house, Woby?", }
-- GLOBAL.STRINGS.CHARACTERS.WANDA.DESCRIBE.NESTING_WOOSE = { GENERAL = "I won't be spending any amount of time attending to that.",	LOW = "Its age is starting to show.", }
----------------------
GLOBAL.STRINGS.CHARACTERS.GENERIC.ACTIONFAIL.GIVE = { NOTMOTHER = "嗯，呃，我并不从事那个领域的研究。", }
GLOBAL.STRINGS.CHARACTERS.WILLOW.ACTIONFAIL.GIVE = { NOTMOTHER = "呸！我才不碰那个呢！", }
GLOBAL.STRINGS.CHARACTERS.WOLFGANG.ACTIONFAIL.GIVE = { NOTMOTHER = "沃尔夫冈不是最强大的母亲！", }
GLOBAL.STRINGS.CHARACTERS.WENDY.ACTIONFAIL.GIVE = { NOTMOTHER = "我不会庇护你远离这个世界的恐惧。", }
GLOBAL.STRINGS.CHARACTERS.WX78.ACTIONFAIL.GIVE = { NOTMOTHER = "我拒绝。", }
GLOBAL.STRINGS.CHARACTERS.WICKERBOTTOM.ACTIONFAIL.GIVE = { NOTMOTHER = "恐怕就算她费尽心力，蛋也无法在这里孵化。", }
GLOBAL.STRINGS.CHARACTERS.WOODIE.ACTIONFAIL.GIVE = { NOTMOTHER = "我想露西还没准备好安定下来。", }
GLOBAL.STRINGS.CHARACTERS.WAXWELL.ACTIONFAIL.GIVE = { NOTMOTHER = "也许我自己能更好地利用这个。", }
GLOBAL.STRINGS.CHARACTERS.WATHGRITHR.ACTIONFAIL.GIVE = { NOTMOTHER = "我不会干涉你的仪式！", }
GLOBAL.STRINGS.CHARACTERS.WEBBER.ACTIONFAIL.GIVE = { NOTMOTHER = "我们可不想破坏她的巢！", }
GLOBAL.STRINGS.CHARACTERS.WINONA.ACTIONFAIL.GIVE = { NOTMOTHER = "在这里，我对你无能为力。", }
GLOBAL.STRINGS.CHARACTERS.WARLY.ACTIONFAIL.GIVE = { NOTMOTHER = "很遗憾，这不是我的专长领域。", }
GLOBAL.STRINGS.CHARACTERS.WORTOX.ACTIONFAIL.GIVE = { NOTMOTHER = "呵呵，开玩笑！我们小恶魔根本不筑巢！", }
GLOBAL.STRINGS.CHARACTERS.WURT.ACTIONFAIL.GIVE = { NOTMOTHER = "滋兰普？不合适。", }
GLOBAL.STRINGS.CHARACTERS.WORMWOOD.ACTIONFAIL.GIVE = { NOTMOTHER = "朋友不要", }
GLOBAL.STRINGS.CHARACTERS.WALTER.ACTIONFAIL.GIVE = { NOTMOTHER = "我查一下手册！我知道有很好的鸟窝处理指南，但是...鹿鸭的巢？", }
GLOBAL.STRINGS.CHARACTERS.WANDA.ACTIONFAIL.GIVE = { NOTMOTHER = "我根本不会考虑给那个什么价值和时间。", }

-- STRINGS.CHARACTERS.GENERIC.DESCRIBE.WOOSE =
-- {
--             GENERIC = "Good day, %s!",
--             ATTACKER = "You're giving me goosebumps, %s.",
--             MURDERER = "Your goose is cooked, %s! Your moose too!",
--             REVIVER = "Your goose really hangs high, %s!",
--             GHOST = "%s is more ghoost than goose!",
-- 			FIRESTARTER = "Trying to cook your own goose, %s?",
-- }
-- STRINGS.CHARACTERS.WILLOW.DESCRIBE.WOOSE =
-- {
--             GENERIC = "Hi %s!",
--             ATTACKER = "Hey, featherbrain! Wanna see how feathers catch fire?",
--             MURDERER = "I've never wanted to cook someone's goose so bad! Well, maybe I have.",
--             REVIVER = "%s is a big snuggly softie!",
--             GHOST = "You look even dumber as a ghost, %s!",
-- 			FIRESTARTER = "Yes! I knew you had it in you, %s!",
-- }
-- STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.WOOSE =
-- {
--             GENERIC = "Is birdlady, %s! Hello!",
--             ATTACKER = "Watch Wolfgang lift birdlady's mighty egg and eat!",
--             MURDERER = "%s is killer bird!",
--             REVIVER = "%s is nice birdlady.",
--             GHOST = "Wolfgang will get heart for birdlady's nest!",
-- 			FIRESTARTER = "Why starting fires, birdlady? For nest?",
-- }
-- STRINGS.CHARACTERS.WENDY.DESCRIBE.WOOSE =
-- {
--             GENERIC = "How do you do, %s?",
--             ATTACKER = "She was merely luring us under her vicious wings!",
--             MURDERER = "Such an expression of murder in her eyes!",
--             REVIVER = "%s cradles life...",
--             GHOST = "You could always fly away from this place, %s...",
-- 			FIRESTARTER = "Do wish to build a nest of flame, %s?",
-- }
-- STRINGS.CHARACTERS.WX78.DESCRIBE.WOOSE =
-- {
--             GENERIC = "DETECTING... %s!",
--             ATTACKER = "IS THAT WHY YOU WANT FLESHLING UNDER YOUR WINGS? TO BEAT THEM?",
--             MURDERER = "%s's SOUL IS AS EMPTY AS HER NEST. HA HA",
--             REVIVER = "I HAVE THE UGLY ORGANIC BEAST AS MY MINION",
--             GHOST = "YOU ARE MORE USELESS THAN I GAVE CREDIT FOR",
-- 			FIRESTARTER = "HA HA. THIS ORGANIC HAS BEEN BURNING THINGS",
-- }
-- STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.WOOSE =
-- {
--             GENERIC = "Ah, greetings dear %s!",
--             ATTACKER = "It appears the Alces canadensis are just as protective short.",
--             MURDERER = "You can speak, but you honk just as loud as your predecessor!",
--             REVIVER = "You'll make a fine mother one day, %s.",
--             GHOST = "You don't need to live and die by a nest, dear!",
-- 			FIRESTARTER = "Careful, %s. What's sauce for the goose, is sauce for the moose!",
-- }
-- STRINGS.CHARACTERS.WOODIE.DESCRIBE.WOOSE =
-- {
--             GENERIC = "You too, eh?",
--             ATTACKER = "Canada's got the most ferocious mothers, eh?",
--             MURDERER = "I'll have that goose of yours cooked, eh!",
--             REVIVER = "I'd be proud to call ya Canada's mother, %s!",
--             GHOST = "Wouldn't happen to have a heart in that nest of yours, %s?",
-- 			FIRESTARTER = "All that bird must make ya an enemy of the forest!",
-- }
-- STRINGS.CHARACTERS.WAXWELL.DESCRIBE.WOOSE =
-- {
--             GENERIC = "Greetings, Ms. %s.",
--             ATTACKER = "There's still a few screws loose in that moose.",
--             MURDERER = "Looks like we'll have to kill the goose without golden eggs.",
--             REVIVER = "%s is quite the mother, for beasts that is.",
--             GHOST = "You're a candidate for a second pair of wings, %s.",
-- 			FIRESTARTER = "%s seems more firefowl than waterfowl.",
-- }
-- STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.WOOSE =
-- {
-- 	        GENERIC = "Greetings, feathery beast %s!",
-- 	        ATTACKER = "Is it a glorious battle of wits and wings you want?",
-- 	        MURDERER = "You will be felled, fowl beast! Our battle, glorious!",
-- 	        REVIVER = "Your heart shines as bright as your electric egg!",
-- 	        GHOST = "It was a honor to fight thee, motherly beast!",
-- 	        FIRESTARTER = "Don't singe thy wings, %s!",
-- }
-- STRINGS.CHARACTERS.WEBBER.DESCRIBE.WOOSE =
-- {
-- 	        GENERIC = "Hi %s! How's the nest?",
-- 	        ATTACKER = "Hey, we thought you were motherly!",
-- 	        MURDERER = "We don't wanna snuggle under those wings!",
-- 	        REVIVER = "%s's nest isn't like a spider den, but her wings are soft!",
-- 	        GHOST = "We'll find a heart for you, %s!",
-- 	        FIRESTARTER = "Uh-oh! Does %s know fire is dangerous to us?",
-- }
-- STRINGS.CHARACTERS.WINONA.DESCRIBE.WOOSE =
-- {
--             GENERIC = "How are ya, mama!",
--             ATTACKER = "%s is hollerin' up a storm!",
--             MURDERER = "%s's sending us on a wild killer goose chase!",
--             REVIVER = "You know, I oughta show you how to build a REAL nest!",
--             GHOST = "Need a wing there, mama moose?",
-- 		    FIRESTARTER = "Fire? Thought you were more of the water type, mama!",
-- }
-- STRINGS.CHARACTERS.WORTOX.DESCRIBE.WOOSE =
-- {
--             GENERIC = "Hello, hello my motherly moose-y friend!",
--             ATTACKER = "Who set the moose loose!",
--             MURDERER = "Hyuyu! Don't honk at the imp!",
--             REVIVER = "We've established a soulful goose truce!",
--             GHOST = "I'd love a taste, %s!",
--             FIRESTARTER = "She sure seems down with fire! Hyuyu!",
-- }
-- STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.WOOSE =
-- {
--             GENERIC = "Hello branch head tweeter!",
--             ATTACKER = "Hurt too much! Tweet too much!",
--             MURDERER = "Don't sit on friends! Bad!",
--             REVIVER = "Good helper friend",
--             GHOST = "Branch head tweeter is floaty!",
--             FIRESTARTER = "Agh! Tweet maker is fire maker!",
-- }
-- STRINGS.CHARACTERS.WARLY.DESCRIBE.WOOSE =
-- {
-- 		    GENERIC = "Bonjour, my feathered friend!",
-- 	        ATTACKER = "%s is giving me quite the goosebumps. Or is it moosebumps?",
-- 	        MURDERER = "I bet you roast nicely with some cranberry sauce!",
-- 	        REVIVER = "%s is a kind, caring mother.",
-- 	        GHOST = "%'s goose was cooked!",
-- 	        FIRESTARTER = "I don't suppose you could cook your own eggs too?",
-- }
-- STRINGS.CHARACTERS.WURT.DESCRIBE.WOOSE =
-- {
-- 		    GENERIC = "Hello \"Mother Goose\"!",
-- 	        ATTACKER = "\"Mother Goose\" honk too loud!",
-- 	        MURDERER = "No, that hurt! Feathers sharp!",
-- 	        REVIVER = "You good mother, with funny face!",
-- 	        GHOST = "Will get heart, %s!",
-- 	        FIRESTARTER = "That not how nest is made!",
-- }
-- STRINGS.CHARACTERS.WALTER.DESCRIBE.WOOSE =
-- {
-- 		    GENERIC = "Hi %s!",
-- 	        ATTACKER = "I don't think having a bird as a mom is a good idea.",
-- 	        MURDERER = "Steer clear, Woby! She's a killer mom!",
-- 	        REVIVER = "You really make me miss my actual mom.",
-- 	        GHOST = "Woby and I will get you a real nice heart, mom!",
-- 	        FIRESTARTER = "If you can make a nest, you can make a campfire!",
-- }
-- STRINGS.CHARACTERS.WANDA.DESCRIBE.WOOSE =
-- {
--             GENERIC = "Sorry %s, no time to honk about!",
--             ATTACKER = "%s! That was not necessary for whatever nest you've made.",
--             MURDERER = "Murderer! That is not an example you want to set for your eggs!",
--             REVIVER = "You're a lot, but I've found you do keep your word.",
--             GHOST = "Your eggs won't be growing up without you this time, %s!",
--             FIRESTARTER = "You're much too overbearing this time around, %s.",
-- }
--------------------------------------------------------------------------
	-------------------------- DRAGONFLY --------------------------
--------------------------------------------------------------------------
GLOBAL.STRINGS.CHARACTER_TITLES.wragonfly = "昆虫火蜥"
GLOBAL.STRINGS.CHARACTER_NAMES.wragonfly = "蜻蜓"
GLOBAL.STRINGS.CHARACTER_DESCRIPTIONS.wragonfly = "易怒\n火爆的态度\n能够喷吐火焰\n能够点燃生命"
GLOBAL.STRINGS.CHARACTERS.WRAGONFLY = require "speech_wragonfly"
GLOBAL.STRINGS.NAMES.WRAGONFLY = "龙蝇"
GLOBAL.STRINGS.LAVAARENA_CHARACTER_DESCRIPTIONS.wragonfly = "当生命值较低时进入狂暴状态，提高攻击力、生命值和移动速度60秒\n狂暴状态有30秒冷却时间\n\n专长：\n近战、法杖"
GLOBAL.STRINGS.QUAGMIRE_CHARACTER_DESCRIPTIONS.wragonfly = "*当Gnaw饿得发狂时进入狂暴状态，增加速度\n\n专长：\n采集"
GLOBAL.STRINGS.SKIN_NAMES.wragonfly_none = "Dragonfly"
GLOBAL.STRINGS.SKIN_DESCRIPTIONS.wragonfly_none = "蜻蜓最喜欢的一对鳞片。"
STRINGS.CHARACTER_ABOUTME.wragonfly = "带着她内心龙族的脾气，蜻蜓认为新的环境是一个可以积累财富的地方。"
STRINGS.CHARACTER_SURVIVABILITY.wragonfly = "纤细"
STRINGS.CHARACTER_BIOS.wragonfly = {
	{ title = "生日", desc = "11月30日" },
	{ title = "最喜欢的食物", desc = "热辣龙椒沙拉" }, }
-------------------------- SKINS --------------------------
if GLOBAL.GetModConfigData("enable_unintelligible","workshop-2010472942") == true then
-- GLOBAL.STRINGS.CHARACTER_QUOTES.wragonfly =  "\"Grrr...! Bzrrrt, zrt zrt!\""
-- GLOBAL.STRINGS.SKIN_QUOTES.wragonfly_ice = "\"Zrrh-rh-zrht!\""
-- GLOBAL.STRINGS.SKIN_QUOTES.wragonfly_shadow = "\"ZRRRT..! Bzzzzrrt!\""
-- GLOBAL.STRINGS.SKIN_QUOTES.wragonfly_haunted = "\"BzzRrRrRrRrt...!\""
-- GLOBAL.STRINGS.SKIN_QUOTES.wragonfly_antlion = "\"...Bzrt?\""
else
	GLOBAL.STRINGS.CHARACTER_QUOTES.wragonfly = "\"何物胜过金山一片和一丝余烬...！\""
	GLOBAL.STRINGS.SKIN_QUOTES.wragonfly_ice = "\"寒冷的外表衬托着内心炽热的烈焰！\""
	GLOBAL.STRINGS.SKIN_QUOTES.wragonfly_shadow = "\"只为我女王般的阴影囤积最甜蜜的财富！\""
	GLOBAL.STRINGS.SKIN_QUOTES.wragonfly_haunted = "\"女王即使在死后也渴望黄金...！BZrRrRt！\""
	GLOBAL.STRINGS.SKIN_QUOTES.wragonfly_antlion = "\"我只渴望你最好的贡品和珍贵之物！\""
end
GLOBAL.STRINGS.SKIN_NAMES.wragonfly_ice = "雪寒之翼"
GLOBAL.STRINGS.SKIN_DESCRIPTIONS.wragonfly_ice = "当熔岩在寒冷的冬夜中燃烧时，蜻蜓展翅翱翔。" -- Klei 引述
GLOBAL.STRINGS.SKIN_NAMES.wragonfly_shadow = "凯旋毒龙"
GLOBAL.STRINGS.SKIN_DESCRIPTIONS.wragonfly_shadow = "不要惹恶龙女王的囤积宝藏。"
GLOBAL.STRINGS.SKIN_NAMES.wragonfly_haunted = "被诅咒的龙蛇"
GLOBAL.STRINGS.SKIN_DESCRIPTIONS.wragonfly_haunted = "那双翠绿的眼睛背后只剩下愤怒和狂怒。"
GLOBAL.STRINGS.SKIN_NAMES.wragonfly_antlion = "蛇蛛幻化"
GLOBAL.STRINGS.SKIN_DESCRIPTIONS.wragonfly_antlion = "对于炎夏里微凉的微风，蜻蜓再也没有什么比这更讨厌的了。"
-------------------------- A Little Drama - Stage play --------------------------
STRINGS.STAGEACTOR.WRAGONFLY1 =
    {
        "我很强大...！我的盔甲就像十重盾牌！",
        "我的牙齿是剑，我的爪子是矛！",
        "我的尾巴的撞击如同雷霆一击，我的翅膀是台风！",
        "...以及我的吐息是死亡！",
    }

general_scripts.WRAGONFLY1 = {
   cast = { "wragonfly" },
   lines = {
		{roles = {"wragonfly"}, duration = 3.0, line = STRINGS.STAGEACTOR.WRAGONFLY1[1], anim="emote_fistshake"},
		{roles = {"wragonfly"},        duration = 3.0, line = STRINGS.STAGEACTOR.WRAGONFLY1[2]},
		{roles = {"wragonfly"},        duration = 3.0, line = STRINGS.STAGEACTOR.WRAGONFLY1[3]},
		{roles = {"wragonfly"},        duration = 3.0, line = STRINGS.STAGEACTOR.WRAGONFLY1[4], anim="emote_flex"},
    }
}
-------------------------- MODDED --------------------------
-- GLOBAL.STRINGS._STATUS_ANNOUNCEMENTS.WRAGONFLY =
-- {
-- 		HUNGER = {
-- 			FULL  = "I am well-fed! As any regal dragon ruler!", 	-- >75%
-- 			HIGH  = "My hunger, satisfied! My hunger for wealth on the other claw...",			-- >55%
-- 			MID   = "O' Woe is me! For I hunger for more!", 	-- >35%
-- 			LOW   = "Zrt. No queen should go without cake!", 				-- >15%
-- 			EMPTY = "The fire within has been quenched...!", 			-- <15%
-- 		},
-- 		SANITY = {
-- 			FULL  = "I might start singing a dragon's tune!", 			-- >75%
-- 			HIGH  = "This conscious is clear and o' so innocent! I fear nothing!", 				-- >55%
-- 			MID   = "My mind is is cracking at the seams, like an old silver chalice...!", 				-- >35%
-- 			LOW   = "My thoughts are like liquid gold pouring out of my precious head!", 			-- >15%
-- 			EMPTY = "My temper has caught up to me! I command thee to halt, beast of shadow!!", 	-- <15%
-- 		},
-- 		HEALTH = {
-- 			FULL  = "My claws, luxurious! My scales, piercing! My riches, flourishing!", 	-- 100%
-- 			HIGH  = "Nothing a polishing of the scales cannot fix!", 	-- >75%
-- 			MID   = "This queen falters too much at the seams...", 			-- >50%
-- 			LOW   = "The lava leaks from my veins...!", 	-- >25%
-- 			EMPTY = "ZRT!! No more play, this queen you shalt not slay...!", 	-- <25%
-- 		},
-- 		WETNESS = {
-- 			FULL  = "My fire is drenched, my claws dripping! Free me from this prison!", 	-- >75%
-- 			HIGH  = "My scales have begun to soak and simmer my light!",					-- >55%
-- 			MID   = "The air around me is steamed ablaze!", 				-- >35%
-- 			LOW   = "I can hear the sizzling of steam off my scales.", 		-- >15%
-- 			EMPTY = "Dry and arid, how I must stay!", 				-- <15%
-- 		},
-- }
-------------------------- CHARACTER --------------------------
-- STRINGS.CHARACTERS.GENERIC.DESCRIBE.WRAGONFLY =
-- {
--             GENERIC = "Greetings to you, %s!",
--             ATTACKER = "%s's claws are glowing brighter than usual...",
--             MURDERER = "Murderer! You can't trust what used to kill us!",
--             REVIVER = "Thanks for lending a helping claw, %s.",
--             GHOST = "It looks like we didn't get any loot this time.",
-- 			ENRAGED = "%s is really heated right now.",
-- 			FIRESTARTER = "Haven't you burnt enough bridges, %s?",
-- }
-- STRINGS.CHARACTERS.WILLOW.DESCRIBE.WRAGONFLY =
-- {
--             GENERIC = "Hi %s!",
--             ATTACKER = "That passion!! A little rough though, %s!",
--             MURDERER = "Murderer! I knew I couldn't trust a bug!",
--             REVIVER = "Ha, %s!! You care more about us than you lead on, huh!",
--             GHOST = "Your fire get extinguished, %s?",
-- 			ENRAGED = "I hope this doesn't awaken anything in me.",
-- 			FIRESTARTER = "%s! YES, burn it all!! Let me join in!!",
-- }
-- STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.WRAGONFLY =
-- {
--             GENERIC = "Big fiery killbeast is now tiny?",
--             ATTACKER = "Wolfgang is mightier than mighty beast!",
--             MURDERER = "Is still fiery killbeast, but tiny! Attack!",
--             REVIVER = "%s is nicer than bigger killbeast.",
--             GHOST = "Wolfgang will get raw killbeast heart for you!",
-- 			ENRAGED = "Fiery killbeast is full of angry fire!",
-- 			FIRESTARTER = "Please no burnings, killbeast!",
-- }
-- STRINGS.CHARACTERS.WENDY.DESCRIBE.WRAGONFLY =
-- {
--             GENERIC = "How do you do, %s?",
--             ATTACKER = "%s has a taste for blood. She always gets what she wants...",
--             MURDERER = "You are not above death... villain!",
--             REVIVER = "What big eyes you have... %s.",
--             GHOST = "Flies never live too long, %s...",
-- 			ENRAGED = "Is something upsetting you, %s...?",
-- 			FIRESTARTER = "%s dons a wreath of flame, and guilt.",
-- }
-- STRINGS.CHARACTERS.WX78.DESCRIBE.WRAGONFLY =
-- {
--             GENERIC = "DETECTING... %s!",
--             ATTACKER = "THIS IS A STRICT NO GROSS FLY FLESHING ZONE",
--             MURDERER = "DON'T DESTROY TOO MANY OF MY MINIONS, %s",
--             REVIVER = "YOU SERVE ME, NOT THE OTHER WAY AROUND",
--             GHOST = "HA HA. YOU DIED. WHAT DID YOU SAY ABOUT SCALES AGAIN?",
-- 			ENRAGED = "%s CAN HANDLE EXTREMELY HIGH TEMPERATURES",
-- 			FIRESTARTER = "YOUR TEMPERATURE IS TOO HIGH FOR A FLESHLING. STOP IT.",
-- }
-- STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.WRAGONFLY =
-- {
--             GENERIC = "Ah, greetings, dear %s!",
--             ATTACKER = "We don't tolerate such behavior here, %s!",
--             MURDERER = "If you kill like your predecessor, we shall murder you like one!",
--             REVIVER = "You're a much kinder variant of mythical Diptera, %s!",
--             GHOST = "Tsk. I see those scales of yours were all talk, %s.",
-- 			ENRAGED = "Tsk! Go clear you head, dear, before the camp burns down.",
-- 			FIRESTARTER = "I'm aware it's in your nature, but we can't be tolerating your fires here, dear.",
-- }
-- STRINGS.CHARACTERS.WOODIE.DESCRIBE.WRAGONFLY =
-- {
--             GENERIC = "%s! Hey buggy bud!",
--             ATTACKER = "Think we haven't chopped yer kin's scales off before, %s?",
--             MURDERER = "Enough of your forest fires, you're getting the axe!",
--             REVIVER = "Guess we got you all sorts of wrong, %s!",
--             GHOST = "Your fire's looking a little pale, %s.",
-- 			ENRAGED = "Don't go walking into the forest like that, %s!",
-- 			FIRESTARTER = "She's burning my trees before I can chop them!",
-- }
-- STRINGS.CHARACTERS.WAXWELL.DESCRIBE.WRAGONFLY =
-- {
--             GENERIC = "Greetings, Ms. %s...",
--             ATTACKER = "Don't leave a scratch and fly away from it, %s!",
--             MURDERER = "What surprise! The fly continues to thrive on killing us!",
--             REVIVER = "You give a beast a proper mind and heart and they're bound to care. Scoff.",
--             GHOST = "You never stood a chance, even when you towered over us.",
-- 			ENRAGED = "Ms. %s's mere presence is a hazard to us.",
-- 			FIRESTARTER = "Ms. %s's and her army of annoying firebugs create quite the scene.",
-- }
-- STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.WRAGONFLY =
-- {
-- 	        GENERIC = "Ah, dragon! I had hoped you'd be a bigger foe!",
-- 	        ATTACKER = "Your terrible deeds reach every edge of the land! Spear to scale shall we fight!",
-- 	        MURDERER = "I've felled many a dragon! This battle shall be glorious!",
-- 	        REVIVER = "%s is a great and merciful beast!",
-- 	        GHOST = "It irks me to have to revive a slain beast!",
-- 			ENRAGED = "%s stews within Hel's flames!",
-- 	        FIRESTARTER = "%s summons Hel's flames ruthlessly!",
-- }
-- STRINGS.CHARACTERS.WEBBER.DESCRIBE.WRAGONFLY =
-- {
-- 	        GENERIC = "Hey %s! Your scales look sharp!",
-- 	        ATTACKER = "%s, stop! Your claws are scaring us!",
-- 	        MURDERER = "Murderer! Why can't bugs play nice!",
-- 	        REVIVER = "%s isn't as scary as she looks!",
-- 	        GHOST = "Wow! Even your ghost looks sort of scary!",
-- 			ENRAGED = "%s! Does being on fire like that hurt?",
-- 	        FIRESTARTER = "Hey! Bugs aren't supposed to spit fire!",
-- }
-- STRINGS.CHARACTERS.WINONA.DESCRIBE.WRAGONFLY =
-- {
--             GENERIC = "Hey, %s, ya snootiest of snoots!",
--             ATTACKER = "Keep them \"callous\" claws to yourself, how about!?",
--             MURDERER = "Watch out! She's got a built-in welding torch!",
--             REVIVER = "You're a bit showy, hey?",
--             GHOST = "Those scales are all for show, aren't they %s?",
-- 			ENRAGED = "A bit hot in the head this one, ya?",
-- 		    FIRESTARTER = "How many fires can one fly hold?",
-- }
-- STRINGS.CHARACTERS.WORTOX.DESCRIBE.WRAGONFLY =
-- {
--             GENERIC = "Hello, hello, my hot-headed friend!",
--             ATTACKER = "I don't like your use of claws, not one bit!",
--             MURDERER = "%s! You're just as bad as my old partner!",
--             REVIVER = "What a warm soul hiding behind all that ego, hyuyu!",
--             GHOST = "Bye bye, dear dragonfly!",
-- 			ENRAGED = "Ooh! Quiet down, I love this part! Hyuyu!",
--             FIRESTARTER = "What funny pranks you do, hyuyu!",
-- }
-- STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.WRAGONFLY =
-- {
--             GENERIC = "Oh. %s is fire",
--             ATTACKER = "Patuey fly, don't hurt!",
--             MURDERER = "Agh, too much hurt! Too much fire!!",
--             REVIVER = "Patuey fly is friend",
--             GHOST = "Oh. Is fire gone?",
-- 			ENRAGED = "Too much fire! Too much!!",
--             FIRESTARTER = "Why make so much fire?!",
-- }
-- STRINGS.CHARACTERS.WARLY.DESCRIBE.WRAGONFLY =
-- {
-- 		    GENERIC = "Salut, my buggy-eyed friend!",
-- 	        ATTACKER = "Mon dieu! You could cook me from raw to well-done!",
-- 	        MURDERER = "You'll not broil me alive!",
-- 	        REVIVER = "You truly have a heart of gold, %s!",
-- 	        GHOST = "Non, this will not do! Who else can sear steak with such ease!",
-- 			ENRAGED = "Might you give me a quick claw in this meal I'm making?",
-- 	        FIRESTARTER = "%s is quite the firefly!",
-- }
-- STRINGS.CHARACTERS.WURT.DESCRIBE.WRAGONFLY =
-- {
-- 		    GENERIC = "Hello, big scaled-folk!",
-- 	        ATTACKER = "No! Scaled-folk shouldn't fight, florp!",
-- 	        MURDERER = "Why scaled-folk fight! Don't trust buggy-eyed scaled-folk!",
-- 	        REVIVER = "Scaled-folk stick together, florp!!",
-- 	        GHOST = "Will get help! Scaled-folk stick together, florpt!",
-- 			ENRAGED = "Why scales so hot?",
-- 	        FIRESTARTER = "%s is very weird scaled-folk.",
-- }
-- STRINGS.CHARACTERS.WALTER.DESCRIBE.WRAGONFLY =
-- {
-- 		    GENERIC = "Hey %s!",
-- 	        ATTACKER = "Okay, okay! I won't collect anymore of your scales!",
-- 	        MURDERER = "%s has some fierce claws on her! So cool!",
-- 	        REVIVER = "Can you tell me what it's like being a bug AND a dragon!?",
-- 	        GHOST = "Trade a heart for gold? No? Okay, okay, I'll go get a heart!",
-- 			ENRAGED = "Woah! She has lava in her veins!",
-- 	        FIRESTARTER = "I know you're pretty much made of fire but-",
-- }
-- STRINGS.CHARACTERS.WANDA.DESCRIBE.WRAGONFLY =
-- {
--             GENERIC = "Sorry %s, no time for curtsy!",
--             ATTACKER = "How long will it take until we find all our gold missing this time?",
--             MURDERER = "Killer! This time it's you who'll be eating cake!",
--             REVIVER = "Relieved to find this timeline doesn't involve my clocks on top a dragon's hoard.",
--             GHOST = "If you would only give me a second, I'd have you back!",
-- 			ENRAGED = "This happens all the time with her.",
--             FIRESTARTER = "You're a little too predictable, %s.",
-- }
-------------------------- SHIPWRECKED --------------------------
--     if GLOBAL.STRINGS.CHARACTERS.WALANI then
-- GLOBAL.STRINGS.CHARACTERS.WALANI.DESCRIBE.WEERCLOPS =
-- {
-- 	        GENERIC = "Hang ten, %s!",
-- 	        ATTACKER = "Chill out! Y'know, like the sitting back and relaxing kind!",
-- 	        MURDERER = "Way too chill. Never thought I'd say that... Brr.",
-- 	        REVIVER = "%s knows real chill.",
-- 	        GHOST = "What'cha lookin' at me like that for?",
-- 	        FIRESTARTER = "You need to chill out. More so than usual.",
-- }
-- GLOBAL.STRINGS.CHARACTERS.WALANI.DESCRIBE.WEARGER =
-- {
-- 	        GENERIC = "Aloha, %s!",
-- 	        ATTACKER = "Things don't have to get hairy, dude!",
-- 	        MURDERER = "Not even I get that fussy when I'm hungry.",
-- 	        REVIVER = "%s knows how to hang ten in a cool breeze.",
-- 	        GHOST = "Bummer about your death, beargy-bud.",
-- 	        FIRESTARTER = "All that hair's a fire hazard, I guess.",
-- }
-- GLOBAL.STRINGS.CHARACTERS.WALANI.DESCRIBE.WOOSE =
-- {
-- 	        GENERIC = "Hang ten, %s!",
-- 	        ATTACKER = "Kick back and lay loose, moose!",
-- 	        MURDERER = "Yeesh! That's no mom of mine!",
-- 	        REVIVER = "Mom's got the biggest heart and honks around.",
-- 	        GHOST = "Sorry about your death, moo... goo... %s.",
-- 	        FIRESTARTER = "You need a serious bird bath, bud.",
-- }
-- GLOBAL.STRINGS.CHARACTERS.WALANI.DESCRIBE.WRAGONFLY =
-- {
-- 	        GENERIC = "Aloha, %s!",
-- 	        ATTACKER = "Yeesh, cool off a bit will you?",
-- 	        MURDERER = "You could use a chill pill and a bucket of ice.",
-- 	        REVIVER = "Hey, your heart's still burning hot!",
-- 	        GHOST = "Being like that must bug you, huh.",
-- 			ENRAGED = "Chill out, fly!",
-- 	        FIRESTARTER = "Those fires weren't very fly, guy.",
-- }
-- STRINGS.CHARACTERS.WALANI.DESCRIBE.NESTING_WOOSE_ITEM = "That's a whole lotta busywork. Not for me."
-- STRINGS.CHARACTERS.WALANI.DESCRIBE.NESTING_WOOSE = { GENERAL = "That's a whole lotta busywork. Not for me.",	LOW = "It's a little sad all left alone like that.", }
-- STRINGS.CHARACTERS.WALANI.ACTIONFAIL.GIVE = { NOTMOTHER = "On second thought, I probably have commitment issues.", }

-- STRINGS.CHARACTERS.WALANI.DESCRIBE.WEARGER_HAT = "It's hibernation season for my head."
-- STRINGS.CHARACTERS.WALANI.DESCRIBE.WEARGER_BIN = "My things are about to get a lot hairier."
-- STRINGS.CHARACTERS.WALANI.DESCRIBE.WEARGER_BED = "Sweet hairy, hairy dreams."
-- STRINGS.CHARACTERS.WALANI.DESCRIBE.WEARGER_RUG = "It's like digging your toes in a hairy beach."
-- STRINGS.CHARACTERS.WALANI.ACTIONFAIL.SEW = { NOTWEARGER = "I don't think I can freestyle with these clumps.", }
-- end
    if GLOBAL.STRINGS.CHARACTERS.WOODLEGS then
-- GLOBAL.STRINGS.CHARACTERS.WOODLEGS.DESCRIBE.WEERCLOPS =
-- {
-- 	        GENERIC = "Ahoy, ye one-eyed devil!",
-- 	        ATTACKER = "Just don't go destroyin' me boat now, matey!",
-- 	        MURDERER = "%s be cutthroat! Like me blade ta it! Yarrr!",
-- 	        REVIVER = "Ye deserve an eye-patch!",
-- 	        GHOST = "Ye ain't too terrible dead! Yarr!",
-- 	        FIRESTARTER = "Don't be givin' me legs cracks!",
-- }
-- GLOBAL.STRINGS.CHARACTERS.WOODLEGS.DESCRIBE.WEARGER =
-- {
-- 	        GENERIC = "Ahoy, ye badgerin' devil!",
-- 	        ATTACKER = "Ye won't be gettin' me golden honey thet easy!",
-- 	        MURDERER = "Arrr! Let Woodlegs give ye a nice haircut!",
-- 	        REVIVER = "All thet hair ye could be a captain!",
-- 	        GHOST = "Snorin' in th'snow ain't seem so bad now! Yarr!",
-- 	        FIRESTARTER = "Keep yer fiery hairs away from me pegs!",
-- }
-- GLOBAL.STRINGS.CHARACTERS.WOODLEGS.DESCRIBE.WOOSE =
-- {
-- 	        GENERIC = "Ahoy, ye moosey-matey!",
-- 	        ATTACKER = "Ye'll not be nestin' wit' me gold! Th'seas b'mine!",
-- 	        MURDERER = "I'll 'ave yer horns on a mantle, matey!",
-- 	        REVIVER = "Ye'd make a fine feathered captain!",
-- 	        GHOST = "Ye ain't as big as ye used ta be!",
-- 	        FIRESTARTER = "Keep yer fiery feathers away!",
-- }
-- GLOBAL.STRINGS.CHARACTERS.WOODLEGS.DESCRIBE.WRAGONFLY =
-- {
-- 	        GENERIC = "Ahoy, ye treasure-keeping beast!",
-- 	        ATTACKER = "Ye'll not be havin' me treasure!!",
-- 	        MURDERER = "Ol'Woodlegs knows how ta fell any ol'treasure keepin' beast!",
-- 	        REVIVER = "Ye got a heart o'gold, an' I be wantin' it!",
-- 	        GHOST = "Yer treasure be mine! Yarrr!",
-- 			ENRAGED = "Gettin' a boat load o'treasure was ne'er easy!",
-- 	        FIRESTARTER = "Away from me pegs, infernal beast!",
-- }
-- STRINGS.CHARACTERS.WOODLEGS.DESCRIBE.NESTING_WOOSE_ITEM = "A nest o'th'land!"
-- STRINGS.CHARACTERS.WOODLEGS.DESCRIBE.NESTING_WOOSE = { GENERAL = "A nest o'th'land!",	LOW = "Th'nest be missin' 'er cap'n!", }
STRINGS.CHARACTERS.WOODLEGS.ACTIONFAIL.GIVE = { NOTMOTHER = "啊！这不是乌鸦巢！", }

-- STRINGS.CHARACTERS.WOODLEGS.DESCRIBE.WEARGER_HAT = "Me furry cap o'finery!"
-- STRINGS.CHARACTERS.WOODLEGS.DESCRIBE.WEARGER_BIN = "Thet be one hairy haul!"
-- STRINGS.CHARACTERS.WOODLEGS.DESCRIBE.WEARGER_BED = "Prefer me a bed at sea!"
-- STRINGS.CHARACTERS.WOODLEGS.DESCRIBE.WEARGER_RUG = "A rug o'fur. A hairy'un at thet!"
-- STRINGS.CHARACTERS.WOODLEGS.ACTIONFAIL.SEW = { NOTWEARGER = "Gots enough hair on me chest!", }
end
-------------------------- WORLDGEN --------------------------
-- STRINGS.UI.WORLDGEN_ROR = { NOUNS = {"Deerclops's eye...", "Bearger's hair...", "Dragonfly's lavae...", "Moose's nest...", "Goose's nest..."}}
-- for _,v in pairs(STRINGS.UI.WORLDGEN_ROR.NOUNS) do
-- 	table.insert(STRINGS.UI.WORLDGEN.NOUNS, v)
-- end

-- local tip_string_runts = "In a miraculous modification experiment of unknown proportions the once ferocious species of Bearger, Deerclops, Dragonfly, and Moose/Goose have sprung anew with thoughts and feelings of their own. Lacking their kin's looming stature, now dubbed as runts."
-- AddLoadingTip(GLOBAL.STRINGS.UI.LOADING_SCREEN_LORE_TIPS, "TIP_RUNTS", tip_string_runts)

----------------------------------------------重新加载熊獾技能树相关代码（为了汉化！）-------------------------------------------------------------------------
if GLOBAL.GetModConfigData("enable_wearger_skills","workshop-2010472942") == true and GLOBAL.GetModConfigData("enable_wearger","workshop-2010472942") == true then
	local POS_Y_1 =  172

	local ALLEGIANCE_POS_Y_1 = POS_Y_1
	local ALLEGIANCE_POS_Y_2 = 128
	local ALLEGIANCE_POS_Y_3 = 84
	local ALLEGIANCE_POS_Y_4 = 38

	local ALLEGIANCE_LOCK_X = 202
	local ALLEGIANCE_SHADOW_X = ALLEGIANCE_LOCK_X - 23
	local ALLEGIANCE_LUNAR_X  = ALLEGIANCE_LOCK_X + 24

	local ALLEGIANCE_TILE_X = ALLEGIANCE_LOCK_X

	local TITLE_Y = POS_Y_1 + 30

	--------------------------------------------------------------------------------------------------

	local WEARGER_SKILL_STRINGS = STRINGS.SKILLTREE.WEARGER

	--------------------------------------------------------------------------------------------------

	local function CreateAddTagFn(tag)
		return function(inst) inst:AddTag(tag) end
	end

	local function CreateRemoveTagFn(tag)
		return function(inst) inst:RemoveTag(tag) end
	end

	--------------------------------------------------------------------------------------------------

	local ORDERS =
	{
		{"hibearnation",       { -170,     TITLE_Y }},
		{"fur",       { 24         , 176 + 18 }},
		{"allegiance",  { ALLEGIANCE_TILE_X, TITLE_Y }},
	}

	--------------------------------------------------------------------------------------------------
	local function BuildSkillsData(SkillTreeFns)
		local skills =
		{
			-- Increase Shedding Rate + Ground Pound Shedding
			wearger_fur_1 = {
				title = WEARGER_SKILL_STRINGS.WEARGER_FUR_1_TITLE,
				desc = WEARGER_SKILL_STRINGS.WEARGER_FUR_1_DESC,
				icon = "wearger_fur_1",
				pos = {25, 159},
				root = true,
				group = "fur",
				tags = {"fur"},
				connects = {
					"wearger_fur_2",
				},
				onactivate = function(inst)
					-- For load (skills activation occurs after onload functions).
					if not inst:HasTag("hibearnating") then
						inst.components.shedder:StartShedding(345)
					end
				end,
			},
			-- Craft Bearger Thick Furs more efficiently.
			wearger_fur_2 = {
				title = WEARGER_SKILL_STRINGS.WEARGER_FUR_2_TITLE,
				desc = WEARGER_SKILL_STRINGS.WEARGER_FUR_2_DESC,
				icon = "wearger_fur_2",
				pos = {25, 121},
				group = "fur",
				tags = {"fur"},
				connects = {
					"wearger_fur_craft_1",
				},
				onactivate   = CreateAddTagFn("thickfurmaker"),
				ondeactivate = CreateRemoveTagFn("thickfurmaker"),
			},
			-- Learn to craft the Hibearnation Hat
			wearger_fur_craft_1 = {
				title = WEARGER_SKILL_STRINGS.WEARGER_FUR_CRAFT1_TITLE,
				desc = WEARGER_SKILL_STRINGS.WEARGER_FUR_CRAFT1_DESC,
				icon = "wearger_fur_craft_1",
				pos = {25, 83},
				group = "fur",
				tags = {"fur"},
				connects = {
					"wearger_fur_craft_2",
					"wearger_fur_craft_3",
					"wearger_fur_left",
					"wearger_fur_right",
				},
				onactivate   = CreateAddTagFn("hibearhatmaker"),
				ondeactivate = CreateRemoveTagFn("hibearhatmaker"),
			},
			-- Learn to use your Fur Tufts to repair clothing
			wearger_fur_left = {
				title = WEARGER_SKILL_STRINGS.WEARGER_FUR_LEFT_TITLE,
				desc = WEARGER_SKILL_STRINGS.WEARGER_FUR_LEFT_DESC,
				icon = "wearger_fur_left",
				pos = {-20, 90},
				group = "fur",
				tags = {"fur"},
			},
			-- Learn to craft the Bearger Rug
			wearger_fur_right = {
				title = WEARGER_SKILL_STRINGS.WEARGER_FUR_RIGHT_TITLE,
				desc = WEARGER_SKILL_STRINGS.WEARGER_FUR_RIGHT_DESC,
				icon = "wearger_fur_right",
				pos = {70, 90},
				group = "fur",
				tags = {"fur"},
				onactivate   = CreateAddTagFn("beargerrugmaker"),
				ondeactivate = CreateRemoveTagFn("beargerrugmaker"),
			},

			-- Learn to craft the Bearger Bin
			wearger_fur_craft_2 = {
				title = WEARGER_SKILL_STRINGS.WEARGER_FUR_CRAFT2_TITLE,
				desc = WEARGER_SKILL_STRINGS.WEARGER_FUR_CRAFT2_DESC,
				icon = "wearger_fur_craft_2",
				pos = {0, 37},
				group = "fur",
				tags = {"fur"},
				onactivate   = CreateAddTagFn("beargerbinmaker"),
				ondeactivate = CreateRemoveTagFn("beargerbinmaker"),
			},
			-- Learn to craft the Bearger Bed Roll
			wearger_fur_craft_3 = {
				title = WEARGER_SKILL_STRINGS.WEARGER_FUR_CRAFT3_TITLE,
				desc = WEARGER_SKILL_STRINGS.WEARGER_FUR_CRAFT3_DESC,
				icon = "wearger_fur_craft_3",
				pos = {50, 37},
				group = "fur",
				tags = {"fur"},
				onactivate   = CreateAddTagFn("beargerbedmaker"),
				ondeactivate = CreateRemoveTagFn("beargerbedmaker"),
			},
			--------------------------------------------------------------------------
			-- During Hibernation, Foods are 20% More Filling
			wearger_foods = {
				title = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_FOOD_TITLE,
				desc = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_FOOD_DESC,
				icon = "wearger_foods",
				pos = {-201, 160},
				root = true,
				
				group = "hibearnation",
				tags = {"hibearnation"},
				onactivate = function(inst)
					if inst:HasTag("hibearnating") then
						if inst.components.eater ~= nil then
							inst.components.eater:SetAbsorptionModifiers(1, 1.2, 1)
						end
					end
				end,
			},

			wearger_yawn1 = {
				title = WEARGER_SKILL_STRINGS.WEARGER_YAWN_1_TITLE,
				desc = WEARGER_SKILL_STRINGS.WEARGER_YAWN_1_DESC,
				icon = "wearger_yawn1",
				pos = {-125, 160},
				root = true,
				connects = { "wearger_yawn2" },
				
				group = "hibearnation",
				tags = {"hibearnation", "sleepresist"},
				onactivate = function(inst)
					-- For load (skills activation occurs after onload functions).
					if not inst:HasTag("hibearnating") then
						if inst.components.grogginess ~= nil then
							inst.components.grogginess:SetResistance(10)--Default is 3
						end
					end
				end,
			},

			wearger_yawn2 = {
				title = WEARGER_SKILL_STRINGS.WEARGER_YAWN_2_TITLE,
				desc = WEARGER_SKILL_STRINGS.WEARGER_YAWN_2_DESC,
				icon = "wearger_yawn2",
				pos = {-125, 122},
				connects = {
					"wearger_yawn3",
				},
				
				group = "hibearnation",
				tags = {"hibearnation"},
				onactivate = function(inst)
					if inst:HasTag("hibearnating") then
						if inst.components.sleepingbaguser ~= nil then
							inst.components.sleepingbaguser.health_bonus_mult = 1.3 --30%
							inst.components.sleepingbaguser.sanity_bonus_mult = 1.3 --30%
						end
					end
				end,
			},

			wearger_yawn3 = {
				title = WEARGER_SKILL_STRINGS.WEARGER_YAWN_3_TITLE,
				desc = WEARGER_SKILL_STRINGS.WEARGER_YAWN_3_DESC,
				icon = "wearger_yawn3",
				pos = {-125, 84},
				connects = {
					"wearger_yawn4",
				},
				
				group = "hibearnation",
				tags = {"hibearnation"},
				onactivate = function(inst)
					if inst:HasTag("hibearnating") then
						if inst.components.sleepingbaguser ~= nil then
							inst.components.sleepingbaguser.hunger_bonus_mult = 0.1
						end
					end
				end,
			},

			wearger_yawn4 = {
				title = WEARGER_SKILL_STRINGS.WEARGER_YAWN_4_TITLE,
				desc = WEARGER_SKILL_STRINGS.WEARGER_YAWN_4_DESC,
				icon = "wearger_yawn4",
				pos = {-125, 46},
				
				group = "hibearnation",
				tags = {"hibearnation"},
			},

			wearger_hibear1 = {
				title = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_1_TITLE,
				desc = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_1_DESC,
				icon = "wearger_hibear1",
				pos = {-163, 160},
				root = true,
				connects = { "wearger_hibear2" },
				
				group = "hibearnation",
				tags = {"hibearnation"},
				ondeactivate = function(inst)
					if inst.components.planardefense ~= nil then
						inst.components.planardefense:RemoveBonus(inst, "wearger_combat_defense")
					end
				end,
			},

			wearger_hibear2 = {
				title = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_2_TITLE,
				desc = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_2_DESC,
				icon = "wearger_hibear2",
				pos = {-163, 122},
				connects = { "wearger_hibear3" },
				
				group = "hibearnation",
				tags = {"hibearnation"},
			},

			wearger_hibear3 = {
				title = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_3_TITLE,
				desc = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_3_DESC,
				icon = "wearger_hibear3",
				pos = {-163, 84},
				connects = { "wearger_hibear4" },
				
				group = "hibearnation",
				tags = {"hibearnation"},
				ondeactivate = CreateRemoveTagFn("mightiness_mighty"),
			},

			wearger_hibear4 = {
				title = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_4_TITLE,
				desc = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_4_DESC,
				icon = "wearger_hibear4",
				pos = {-163, 46},
				
				group = "hibearnation",
				tags = {"hibearnation"},
			},

			--------------------------------------------------------------------------

			wearger_hibear_full_lock = {
				desc = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_LOCK_DESC,
				pos = {-201, 84},
				group = "hibearnation",
				tags = {"lock"},
				root = true,
				lock_open = function(prefabname, activatedskills, readonly) 
					if readonly then
						return "question"
					end

					local bear_skills = SkillTreeFns.CountTags(prefabname, "hibearnation", activatedskills)
					return bear_skills >= 5

				end,
				connects = {
					"wearger_hibear_full",
				},
			},

			-- Hibernation Mastery - Full stomach benefits are all-season. Health increase, insulation, & previous hibear branch
			wearger_hibear_full = {
				title = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_FULL_TITLE,
				desc = WEARGER_SKILL_STRINGS.WEARGER_HIBEAR_FULL_DESC,
				icon = "wearger_hibear_full",
				pos = {-201, 46},
				group = "hibearnation",
				tags = {"hibearnation", "hibearmaster"},
				onactivate   = CreateAddTagFn("hibearmaster"),
				ondeactivate = CreateRemoveTagFn("hibearmaster"),
			},

			--------------------------------------------------------------------------

			wearger_allegiance_lock_1 = {
				desc = WEARGER_SKILL_STRINGS.WEARGER_ALLEGIANCE_LOCK_1_DESC,
				pos = {ALLEGIANCE_LOCK_X, ALLEGIANCE_POS_Y_1},
				group = "allegiance",
				tags = {"allegiance","lock"},
				root = true,
				lock_open = function(prefabname, activatedskills, readonly)
					return SkillTreeFns.CountSkills(prefabname, activatedskills) >= 12
				end,
			},

			wearger_allegiance_lock_2 = SkillTreeFns.MakeFuelWeaverLock(
				{ pos = {ALLEGIANCE_SHADOW_X, ALLEGIANCE_POS_Y_2} }
			),


			wearger_allegiance_lock_4 = SkillTreeFns.MakeNoLunarLock(
				{ pos = {ALLEGIANCE_SHADOW_X, ALLEGIANCE_POS_Y_3} }
			),

			wearger_allegiance_shadow = {
				title = WEARGER_SKILL_STRINGS.WEARGER_ALLEGIANCE_SHADOW_TITLE,
				desc = WEARGER_SKILL_STRINGS.WEARGER_ALLEGIANCE_SHADOW_DESC,
				icon = "wilson_favor_shadow",
				pos = {ALLEGIANCE_SHADOW_X , ALLEGIANCE_POS_Y_4},
				group = "allegiance",
				tags = {"allegiance","shadow","shadow_favor"},
				locks = {"wearger_allegiance_lock_1", "wearger_allegiance_lock_2", "wearger_allegiance_lock_4"},

				onactivate = function(inst, fromload)
					inst:AddTag("player_shadow_aligned")

					local damagetyperesist = inst.components.damagetyperesist
					if damagetyperesist then
						damagetyperesist:AddResist("shadow_aligned", inst, TUNING.SKILLS.WILSON_ALLEGIANCE_SHADOW_RESIST, "allegiance_shadow")
					end
					local damagetypebonus = inst.components.damagetypebonus
					if damagetypebonus then
						damagetypebonus:AddBonus("lunar_aligned", inst, TUNING.SKILLS.WILSON_ALLEGIANCE_VS_LUNAR_BONUS, "allegiance_shadow")
					end
				end,
				ondeactivate = function(inst, fromload)
					inst:RemoveTag("player_shadow_aligned")

					local damagetyperesist = inst.components.damagetyperesist
					if damagetyperesist then
						damagetyperesist:RemoveResist("shadow_aligned", inst, "allegiance_shadow")
					end
					local damagetypebonus = inst.components.damagetypebonus
					if damagetypebonus then
						damagetypebonus:RemoveBonus("lunar_aligned", inst, "allegiance_shadow")
					end
				end,
			},

			wearger_allegiance_lock_3 = SkillTreeFns.MakeCelestialChampionLock(
				{ pos = {ALLEGIANCE_LUNAR_X, ALLEGIANCE_POS_Y_2} }
			),

			wearger_allegiance_lock_5 = SkillTreeFns.MakeNoShadowLock(
				{ pos = {ALLEGIANCE_LUNAR_X, ALLEGIANCE_POS_Y_3} }
			),

			wearger_allegiance_lunar = {
				title = WEARGER_SKILL_STRINGS.WEARGER_ALLEGIANCE_LUNAR_TITLE,
				desc = WEARGER_SKILL_STRINGS.WEARGER_ALLEGIANCE_LUNAR_DESC,
				icon = "wilson_favor_lunar",
				pos = {ALLEGIANCE_LUNAR_X , ALLEGIANCE_POS_Y_4},
				group = "allegiance",
				tags = {"allegiance","lunar","lunar_favor"},
				locks = {"wearger_allegiance_lock_1", "wearger_allegiance_lock_3", "wearger_allegiance_lock_5"},

				onactivate = function(inst, fromload)
					inst:AddTag("player_lunar_aligned")

					local damagetyperesist = inst.components.damagetyperesist
					if damagetyperesist then
						damagetyperesist:AddResist("lunar_aligned", inst, TUNING.SKILLS.WILSON_ALLEGIANCE_LUNAR_RESIST, "allegiance_lunar")
					end
					local damagetypebonus = inst.components.damagetypebonus
					if damagetypebonus then
						damagetypebonus:AddBonus("shadow_aligned", inst, TUNING.SKILLS.WILSON_ALLEGIANCE_VS_SHADOW_BONUS, "allegiance_lunar")
					end
				end,
				ondeactivate = function(inst, fromload)
					inst:RemoveTag("player_lunar_aligned")

					local damagetyperesist = inst.components.damagetyperesist
					if damagetyperesist then
						damagetyperesist:RemoveResist("lunar_aligned", inst, "allegiance_lunar")
					end
					local damagetypebonus = inst.components.damagetypebonus
					if damagetypebonus then
						damagetypebonus:RemoveBonus("shadow_aligned", inst, "allegiance_lunar")
					end
				end,
			},
		}

		return {
			SKILLS = skills,
			ORDERS = ORDERS,
		}
	end

	local skilltree_defs = require("prefabs/skilltree_defs")
	if BuildSkillsData then
		local data = BuildSkillsData(skilltree_defs.FN)
		
		if data then
			skilltree_defs.CreateSkillTreeFor("wearger", data.SKILLS)
			skilltree_defs.SKILLTREE_ORDERS["wearger"] = data.ORDERS
		end
	end
end