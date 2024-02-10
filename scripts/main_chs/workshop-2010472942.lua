--大部分翻译来自https://steamcommunity.com/sharedfiles/filedetails/?id=3022902813 其余内容我也懒得翻译0.0
local STRINGS = GLOBAL.STRINGS
local require = GLOBAL.require
local general_scripts = require("play_generalscripts")
--------------------------------------------------------------------------
	-------------------------- 独眼巨鹿 --------------------------
--------------------------------------------------------------------------
STRINGS.CHARACTER_TITLES.weerclops = "单眼小鹿"
STRINGS.CHARACTER_NAMES.weerclops = "鹿角怪"
STRINGS.CHARACTER_DESCRIPTIONS.weerclops = "一拳冰寒\n善于摧毁房子\n越来越想摧毁一切\n适应寒冷，但不适应炎热"
STRINGS.CHARACTERS.WEERCLOPS = require "speech_weerclops"
STRINGS.NAMES.WEERCLOPS = "鹿角怪"
STRINGS.LAVAARENA_CHARACTER_DESCRIPTIONS.weerclops = "*给敌人带来冰冷之触，降低防御力\n\n\n\n专长：\n近战，飞镖"
STRINGS.QUAGMIRE_CHARACTER_DESCRIPTIONS.weerclops = "手持时食物变质速度减缓50%\n\n专长：\n农耕"
STRINGS.SKIN_NAMES.weerclops_none = "鹿角怪"
STRINGS.SKIN_DESCRIPTIONS.weerclops_none = "一个冷冻的、皮毛纠缠的皮囊。"
STRINGS.CHARACTER_ABOUTME.weerclops = "在寒冷的冬夜，鹿角怪的哐哐声回荡在森林中。它不会放过任何建筑物。"
STRINGS.CHARACTER_SURVIVABILITY.weerclops = "严峻"
STRINGS.CHARACTER_BIOS.weerclops = {
{ title = "生日", desc = "2月26日" },
{ title = "最喜欢的食物", desc = "甜瓜冻" }, }
--Skins
if GLOBAL.GetModConfigData("enable_unintelligible","workshop-2010472942") == true then
STRINGS.CHARACTER_QUOTES.weerclops = "“咕......”"
STRINGS.SKIN_QUOTES.weerclops_ice = "“嗯......”"
STRINGS.SKIN_QUOTES.weerclops_rose = "“嗯！”"
STRINGS.SKIN_QUOTES.weerclops_magma = "“咕呼呼呼......”"
STRINGS.SKIN_QUOTES.weerclops_klaus = "“劳拉，劳拉，劳拉！”"
else
STRINGS.CHARACTER_QUOTES.weerclops = "“我的爪子痒痒地想要摧毁......这是鹿角怪的本能。”"
STRINGS.SKIN_QUOTES.weerclops_ice = "“没有什么可以逃脱我的注视......”"
STRINGS.SKIN_QUOTES.weerclops_rose = "“鹿角怪也有冰冷、冻结的荆棘。”"
STRINGS.SKIN_QUOTES.weerclops_magma = "“鹿角怪并不暴躁...我们很宽宏大量。”"  -- 假设他们为了双关语而学到了这个词
STRINGS.SKIN_QUOTES.weerclops_klaus = "“如果他们找不到眼睛，就摘不下来...”"
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

--------------------------------------------------------------------------
	-------------------------- BEARGER --------------------------
--------------------------------------------------------------------------
STRINGS.CHARACTER_TITLES.wearger = "多毛熊大"
STRINGS.CHARACTER_NAMES.wearger = "熊獾"
STRINGS.CHARACTER_DESCRIPTIONS.wearger = "在寒冷的天气里冬眠\n愤怒的跺脚\n对蜂蜜有强烈的渴望"
STRINGS.CHARACTERS.WEARGER = require "speech_wearger"
STRINGS.NAMES.WEARGER = "熊獾"
STRINGS.LAVAARENA_CHARACTER_DESCRIPTIONS.wearger = "*可以重击地面造成额外伤害\n\n专长:\n近战"
STRINGS.QUAGMIRE_CHARACTER_DESCRIPTIONS.wearger = "*可以重击地面同时砍倒多棵树木和树桩\n\n专长:\n采集"
STRINGS.SKIN_NAMES.wearger_none = "熊獾"
STRINGS.SKIN_DESCRIPTIONS.wearger_none = "熊獾那源源不断脱落的毛皮。"
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
    STRINGS.SKIN_QUOTES.wearger_ice = "\"嗯。嗯！\""
    STRINGS.CHARACTER_QUOTES.wearger =  "\"呜呜……\""
    STRINGS.SKIN_QUOTES.wearger_survivor = "\"呜呜呜呜呜！！！\""
    STRINGS.SKIN_QUOTES.wearger_teddy = "\"呜呜-哈哈哈！\""
    STRINGS.SKIN_QUOTES.wearger_minotaur = "\"呜呜……儿……儿。\""
	STRINGS.SKIN_QUOTES.wearger_lunar = "\"Brrr-r-r!\""
else
    STRINGS.CHARACTER_QUOTES.wearger =  "\"呜呜……需要找食物。很快要冬眠了。\""
    STRINGS.SKIN_QUOTES.wearger_ice = "\"大片的雪。冬眠用的好。\""
    STRINGS.SKIN_QUOTES.wearger_survivor = "\"为冬眠备足粮食……不太顺利。\""
    STRINGS.SKIN_QUOTES.wearger_teddy = "\"……你和我能做朋友吗？\""
    STRINGS.SKIN_QUOTES.wearger_minotaur = "\"下次会找到更好的冬眠地点。\""
	STRINGS.SKIN_QUOTES.wearger_lunar = "\"感觉很冷...需要开始完全休眠。\""
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

--------------------------------------------------------------------------
	-------------------------- MOOSE/GOOSE --------------------------
--------------------------------------------------------------------------
STRINGS.CHARACTER_TITLES.woose = "鹅跃之主"
STRINGS.CHARACTER_NAMES.woose = "麋鹿或雁鸟"
if GLOBAL.GetModConfigData("enable_nesting","workshop-2010472942") == true then
STRINGS.CHARACTER_DESCRIPTIONS.woose = "能够形成凶悍的旋风\n喜欢在海洋上散步\n容易弄湿羽毛\n有建巢的倾向"
else
STRINGS.CHARACTER_DESCRIPTIONS.woose = "能够形成凶悍的旋风\n容易弄湿羽毛\n善于发出恶意嘎嘎声"
end
STRINGS.CHARACTERS.WOOSE = require "speech_woose"
STRINGS.NAMES.WOOSE = "麋鹿鹅"
STRINGS.SKIN_NAMES.woose_none = "麋鹿鹅"
STRINGS.SKIN_DESCRIPTIONS.woose_none = "电流使羽毛变得凌乱的外观。"
STRINGS.LAVAARENA_CHARACTER_DESCRIPTIONS.woose = "*具有母性光环，治疗效果提升20%\n\n专长：\n近战，飞镖，法杖"
STRINGS.QUAGMIRE_CHARACTER_DESCRIPTIONS.woose = "*带上她可靠的巢\n*检查食物以确定是否符合咀嚼者的口味\n\n专长：\n采集"
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
	STRINGS.CHARACTER_QUOTES.woose =  "\"嘟哧嘟!? 喙喙喙来!!!\""
	STRINGS.SKIN_QUOTES.woose_ice = "\"呼-呼-呼——嘟!!\""
	STRINGS.SKIN_QUOTES.woose_young = "\"嘎呢！噗噗！嘟！\""
	STRINGS.SKIN_QUOTES.woose_victorian = "\"嘟喙！！！\""
	STRINGS.SKIN_QUOTES.woose_malbatross = "\"嘿呼——呼-呼-呼嘟！\""
	else
	STRINGS.CHARACTER_QUOTES.woose =  "\"妈妈最了解她的巢! 哈呜!!\""
	STRINGS.SKIN_QUOTES.woose_ice = "\"让妈妈在她的翅膀下为你取暖吧! 哈呜!\""
	STRINGS.SKIN_QUOTES.woose_young = "\"为了保护她的幼崽，母亲必须变成她的幼崽!!\""
	STRINGS.SKIN_QUOTES.woose_victorian = "\"嘟喙！一个好妈妈会毕命为巢穴奋斗牙齿和爪子！\""
	STRINGS.SKIN_QUOTES.woose_malbatross = "\"妈妈会在海洋中为她的幼崽捕捉所有的鱼！\""
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
-- STRINGS.CHARACTERS.GENERIC.DESCRIBE.NESTING_WOOSE = { GENERAL = "I'm not ready for the commitment.",	LOW = "Empty nest syndrome must be setting in.", }
-- STRINGS.CHARACTERS.WILLOW.DESCRIBE.NESTING_WOOSE = { GENERAL = "I can show you my love with a little fire! What'dya say, birdbutt?",	LOW = "Can I put it out of its misery already?", }
-- STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.NESTING_WOOSE = { GENERAL = "Is little bird baby bed!",	LOW = "Little bird baby bed is weaker than usual.", }
-- STRINGS.CHARACTERS.WENDY.DESCRIBE.NESTING_WOOSE = { GENERAL = "It's a fabrication of life.",	LOW = "It, too, will die.", }
-- STRINGS.CHARACTERS.WX78.DESCRIBE.NESTING_WOOSE = { GENERAL = "AMASSING OF GROSS STICKS",	LOW = "EXPIRY DATE APPROACHING. GOOD", }
-- STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.NESTING_WOOSE = { GENERAL = "Despite the new height, Alces canadensis are still maternal at heart.",	LOW = "Perhaps I could lend a helping hand, she would be grateful.", }
-- STRINGS.CHARACTERS.WOODIE.DESCRIBE.NESTING_WOOSE = { GENERAL = "Could use a chopping there, bud.",	LOW = "Your home's looking pretty worse for wear.", }
-- STRINGS.CHARACTERS.WAXWELL.DESCRIBE.NESTING_WOOSE = { GENERAL = "Filthy.",	LOW = "If you're going to walk like us, you could do with cleaning up your filth.", }
-- STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.NESTING_WOOSE = { GENERAL = "If it's important to my ally, it's important to us all!",	LOW = "Beauty fades. Glory is forever.", }
-- STRINGS.CHARACTERS.WEBBER.DESCRIBE.NESTING_WOOSE = { GENERAL = "Wow! You make a really good den!",	LOW = "Aw, we should help her with her den!", }
-- STRINGS.CHARACTERS.WINONA.DESCRIBE.NESTING_WOOSE = { GENERAL = "Ya got gusto, I'll give you that.",	LOW = "That's not gonna last much longer.", }
-- STRINGS.CHARACTERS.WORTOX.DESCRIBE.NESTING_WOOSE = { GENERAL = "A nest that fits a monstrous mother best!",	LOW = "This nest is soon to be laid to rest!", }
-- STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.NESTING_WOOSE = { GENERAL = "Friends cuddling",	LOW = "Sick, Friend?", }
-- STRINGS.CHARACTERS.WARLY.DESCRIBE.NESTING_WOOSE = { GENERAL = "Like a stick soup.",	LOW = "I fear its expiry date is soon.", }
-- STRINGS.CHARACTERS.WURT.DESCRIBE.NESTING_WOOSE = { GENERAL = "Not good enough seat for a king, florp!",	LOW = "Fish wouldn't get wilty like this, florp.", }
-- STRINGS.CHARACTERS.WALTER.DESCRIBE.NESTING_WOOSE = { GENERAL = "I've always wanted to ask a waterfowl about its nest!",	LOW = "Do you think she'll let us build her a bird house, Woby?", }
-- STRINGS.CHARACTERS.WANDA.DESCRIBE.NESTING_WOOSE = { GENERAL = "I won't be spending any amount of time attending to that.",	LOW = "Its age is starting to show.", }
----------------------
STRINGS.CHARACTERS.GENERIC.ACTIONFAIL.GIVE = { NOTMOTHER = "嗯，呃，我并不从事那个领域的研究。", }
STRINGS.CHARACTERS.WILLOW.ACTIONFAIL.GIVE = { NOTMOTHER = "呸！我才不碰那个呢！", }
STRINGS.CHARACTERS.WOLFGANG.ACTIONFAIL.GIVE = { NOTMOTHER = "沃尔夫冈不是最强大的母亲！", }
STRINGS.CHARACTERS.WENDY.ACTIONFAIL.GIVE = { NOTMOTHER = "我不会庇护你远离这个世界的恐惧。", }
STRINGS.CHARACTERS.WX78.ACTIONFAIL.GIVE = { NOTMOTHER = "我拒绝。", }
STRINGS.CHARACTERS.WICKERBOTTOM.ACTIONFAIL.GIVE = { NOTMOTHER = "恐怕就算她费尽心力，蛋也无法在这里孵化。", }
STRINGS.CHARACTERS.WOODIE.ACTIONFAIL.GIVE = { NOTMOTHER = "我想露西还没准备好安定下来。", }
STRINGS.CHARACTERS.WAXWELL.ACTIONFAIL.GIVE = { NOTMOTHER = "也许我自己能更好地利用这个。", }
STRINGS.CHARACTERS.WATHGRITHR.ACTIONFAIL.GIVE = { NOTMOTHER = "我不会干涉你的仪式！", }
STRINGS.CHARACTERS.WEBBER.ACTIONFAIL.GIVE = { NOTMOTHER = "我们可不想破坏她的巢！", }
STRINGS.CHARACTERS.WINONA.ACTIONFAIL.GIVE = { NOTMOTHER = "在这里，我对你无能为力。", }
STRINGS.CHARACTERS.WARLY.ACTIONFAIL.GIVE = { NOTMOTHER = "很遗憾，这不是我的专长领域。", }
STRINGS.CHARACTERS.WORTOX.ACTIONFAIL.GIVE = { NOTMOTHER = "呵呵，开玩笑！我们小恶魔根本不筑巢！", }
STRINGS.CHARACTERS.WURT.ACTIONFAIL.GIVE = { NOTMOTHER = "滋兰普？不合适。", }
STRINGS.CHARACTERS.WORMWOOD.ACTIONFAIL.GIVE = { NOTMOTHER = "朋友不要", }
STRINGS.CHARACTERS.WALTER.ACTIONFAIL.GIVE = { NOTMOTHER = "我查一下手册！我知道有很好的鸟窝处理指南，但是...鹿鸭的巢？", }
STRINGS.CHARACTERS.WANDA.ACTIONFAIL.GIVE = { NOTMOTHER = "我根本不会考虑给那个什么价值和时间。", }


--------------------------------------------------------------------------
	-------------------------- DRAGONFLY --------------------------
--------------------------------------------------------------------------
STRINGS.CHARACTER_TITLES.wragonfly = "昆虫火蜥"
STRINGS.CHARACTER_NAMES.wragonfly = "蜻蜓"
STRINGS.CHARACTER_DESCRIPTIONS.wragonfly = "易怒\n火爆的态度\n能够喷吐火焰\n能够点燃生命"
STRINGS.CHARACTERS.WRAGONFLY = require "speech_wragonfly"
STRINGS.NAMES.WRAGONFLY = "龙蝇"
STRINGS.LAVAARENA_CHARACTER_DESCRIPTIONS.wragonfly = "当生命值较低时进入狂暴状态，提高攻击力、生命值和移动速度60秒\n狂暴状态有30秒冷却时间\n\n专长：\n近战、法杖"
STRINGS.QUAGMIRE_CHARACTER_DESCRIPTIONS.wragonfly = "*当Gnaw饿得发狂时进入狂暴状态，增加速度\n\n专长：\n采集"
STRINGS.SKIN_NAMES.wragonfly_none = "Dragonfly"
STRINGS.SKIN_DESCRIPTIONS.wragonfly_none = "蜻蜓最喜欢的一对鳞片。"
STRINGS.CHARACTER_ABOUTME.wragonfly = "带着她内心龙族的脾气，蜻蜓认为新的环境是一个可以积累财富的地方。"
STRINGS.CHARACTER_SURVIVABILITY.wragonfly = "纤细"
STRINGS.CHARACTER_BIOS.wragonfly = {
	{ title = "生日", desc = "11月30日" },
	{ title = "最喜欢的食物", desc = "热辣龙椒沙拉" }, }
-------------------------- SKINS --------------------------
if GLOBAL.GetModConfigData("enable_unintelligible","workshop-2010472942") == true then
-- STRINGS.CHARACTER_QUOTES.wragonfly =  "\"Grrr...! Bzrrrt, zrt zrt!\""
-- STRINGS.SKIN_QUOTES.wragonfly_ice = "\"Zrrh-rh-zrht!\""
-- STRINGS.SKIN_QUOTES.wragonfly_shadow = "\"ZRRRT..! Bzzzzrrt!\""
-- STRINGS.SKIN_QUOTES.wragonfly_haunted = "\"BzzRrRrRrRrt...!\""
-- STRINGS.SKIN_QUOTES.wragonfly_antlion = "\"...Bzrt?\""
else
	STRINGS.CHARACTER_QUOTES.wragonfly = "\"何物胜过金山一片和一丝余烬...！\""
	STRINGS.SKIN_QUOTES.wragonfly_ice = "\"寒冷的外表衬托着内心炽热的烈焰！\""
	STRINGS.SKIN_QUOTES.wragonfly_shadow = "\"只为我女王般的阴影囤积最甜蜜的财富！\""
	STRINGS.SKIN_QUOTES.wragonfly_haunted = "\"女王即使在死后也渴望黄金...！BZrRrRt！\""
	STRINGS.SKIN_QUOTES.wragonfly_antlion = "\"我只渴望你最好的贡品和珍贵之物！\""
end
STRINGS.SKIN_NAMES.wragonfly_ice = "雪寒之翼"
STRINGS.SKIN_DESCRIPTIONS.wragonfly_ice = "当熔岩在寒冷的冬夜中燃烧时，蜻蜓展翅翱翔。" -- Klei 引述
STRINGS.SKIN_NAMES.wragonfly_shadow = "凯旋毒龙"
STRINGS.SKIN_DESCRIPTIONS.wragonfly_shadow = "不要惹恶龙女王的囤积宝藏。"
STRINGS.SKIN_NAMES.wragonfly_haunted = "被诅咒的龙蛇"
STRINGS.SKIN_DESCRIPTIONS.wragonfly_haunted = "那双翠绿的眼睛背后只剩下愤怒和狂怒。"
STRINGS.SKIN_NAMES.wragonfly_antlion = "蛇蛛幻化"
STRINGS.SKIN_DESCRIPTIONS.wragonfly_antlion = "对于炎夏里微凉的微风，蜻蜓再也没有什么比这更讨厌的了。"
STRINGS.SKIN_NAMES.wragonfly_lunar = "幸运野兽"
STRINGS.SKIN_DESCRIPTIONS.wragonfly_lunar = "龙蝇最喜欢的节日莫过于她自己。"
-------------------------- 技能树 --------------------------
STRINGS.SKILLTREE.WRAGONFLY = {
	WRAGONFLY_VIGOR_1_TITLE = "精神焕发 I",
	WRAGONFLY_VIGOR_1_DESC = "暴怒时，根据您当前的理智恢复健康。",

	WRAGONFLY_VIGOR_2_TITLE = "精神焕发 II",
	WRAGONFLY_VIGOR_2_DESC = "暴怒时，你越接近暴怒结束，你的速度和伤害就越大。",

	WRAGONFLY_DAMAGE_1_TITLE = "龙之怒",
	WRAGONFLY_DAMAGE_1_DESC = "让你的暴怒暴击伤害每隔一次攻击就保持一致。\n第 2 次、第 4 次和第 6 次命中。每次命中的伤害成比例，在第 6 次重置",

	WRAGONFLY_DAMAGE_2_TITLE = "严酷的荒凉",
	WRAGONFLY_DAMAGE_2_DESC = "在被激怒时，攻击你的敌人有机会受到额外的伤害。",

	WRAGONFLY_DAMAGE_3_TITLE = "龙之咒语",
	WRAGONFLY_DAMAGE_3_DESC = "在被激怒时，用一个debuff标记你的敌人，使敌人在被击中时天生受到暴击伤害20秒。",--\n与龙蝇的龙之怒技能相同，但任何伤害都会造成它们。计时器叠加，龙之怒技能则没有。",

	WRAGONFLY_DAMAGE_4_TITLE = "死亡之息",
	WRAGONFLY_DAMAGE_4_DESC = "获得在暴怒时吃灰烬并吐出龙蝇唾液的能力。\n吃灰烬吐出龙蝇唾液，命中时造成130点伤害，并可能点燃敌人。消耗5点饱食度",

	WRAGONFLY_RAGE_HUNGER_LOCK_DESC = "学习3个暴怒技能解锁。",

	WRAGONFLY_HUNGER_TITLE = "灰烬之主",
	WRAGONFLY_HUNGER_DESC = "暴怒时吃木炭会使你的暴怒值增加 20 秒。\n暴怒时理智值会随时间减少。",

	WRAGONFLY_RAGE_LAVAE_LOCK_DESC = "学习4个熔岩虫技能解锁。",

	WRAGONFLY_RAGE_LAVAE_1_TITLE = "英勇的士兵 I",
	WRAGONFLY_RAGE_LAVAE_1_DESC = "对熔岩虫的目标造成额外 15% 的伤害。",

	WRAGONFLY_RAGE_LAVAE_2_TITLE = "英勇的士兵 II",
	WRAGONFLY_RAGE_LAVAE_2_DESC = "获得消耗你的熔岩虫的能力，以理智为代价，将当前的部分生命值和饥饿值返还给你。",

	----------------------

	WRAGONFLY_ASH_LOCK_DESC = "吃掉8个灰烬，然后暴怒才能解锁。",

	WRAGONFLY_ASH_TITLE = "灰烬 I",
	WRAGONFLY_ASH_DESC = "获得向某些可燃火种吐口水的能力，以快速将其转化为灰烬。",

	----------------------

	WRAGONFLY_LAVAEHEALTH_1_TITLE = "幼虫之爱 I",
	WRAGONFLY_LAVAEHEALTH_1_DESC = "吃灰烬和木炭可以治愈熔岩虫",

	WRAGONFLY_LAVAEHEALTH_2_TITLE = "幼虫之爱 II",
	WRAGONFLY_LAVAEHEALTH_2_DESC = "如果不饿，熔岩虫会慢慢恢复健康。",

	WRAGONFLY_LAVAEHUNGER_1_TITLE = "非常饥饿的熔岩虫 I",
	WRAGONFLY_LAVAEHUNGER_1_DESC = "熔岩虫的饥饿感稍弱，食物也更容易填饱肚子。",

	WRAGONFLY_LAVAEHUNGER_2_TITLE = "非常饥饿的熔岩虫 II",
	WRAGONFLY_LAVAEHUNGER_2_DESC = "熔岩虫会吸取敌人的生命力，它所造成的伤害的一半会以饥饿值的形式返回。",

	WRAGONFLY_LAVAEDEATH_1_TITLE = "永恒的熔岩虫 I",
	WRAGONFLY_LAVAEDEATH_1_DESC = "熔岩虫死亡时会向敌人造成溅射伤害。- 死亡时造成 200 范围伤害。",

	WRAGONFLY_LAVAEDEATH_2_TITLE = "永恒的熔岩虫 II",
	WRAGONFLY_LAVAEDEATH_2_DESC = "当你死去时，熔岩虫不再死亡，并且会像幽灵一样跟随你。",

	WRAGONFLY_HOT_TITLE = "熔火熔岩虫",
	WRAGONFLY_HOT_DESC = "熔岩虫对燃烧目标的伤害将增加 30%。",

	WRAGONFLY_LAVAE_RAGE_LOCK_DESC = "学习4个暴怒技能解锁。",

	WRAGONFLY_LAVAE_RAGE_1_TITLE = "育雏羁绊 I",
	WRAGONFLY_LAVAE_RAGE_1_DESC = "当你被激怒时，你的熔岩虫受到的伤害减少25%。",

	WRAGONFLY_LAVAE_RAGE_2_TITLE = "育雏羁绊 II",
	WRAGONFLY_LAVAE_RAGE_2_DESC = "当你被激怒时，你的熔岩会更快地攻击和爬行。\n速度提高 33%，攻击速度从 4 秒降低到 1 秒",

	----------------------
	WRAGONFLY_ALLEGIANCE_LOCK_1_DESC = "学习12种技能解锁。",

	WRAGONFLY_ALLEGIANCE_SHADOW_TITLE = "暗影延臣",
	WRAGONFLY_ALLEGIANCE_SHADOW_DESC = "女王会通过将你的炽热爆发与暗影火焰相结合来为你的忠心添彩。-在被激怒时，召唤黑色火焰的卷须来寻找你的敌人。\n(你和你的熔岩虫受到暗影阵营的生物伤害减少10%，对月亮阵营的生物造成的伤害增加10%)",

	WRAGONFLY_ALLEGIANCE_LUNAR_TITLE = "月光创新者",
	WRAGONFLY_ALLEGIANCE_LUNAR_DESC = "神秘创始人将通过提供熔岩虫复活的秘密来奖励你的好奇心。-你的熔岩虫会在死亡时变成冷冻虫卵，并可以从中重新召唤出来。\n(你和你的熔岩虫受到月亮阵营的生物伤害减少10%，对暗影阵营的生物造成的伤害增加10%)",
}
STRINGS.SKILLTREE.PANELS.RAGE = "暴怒"
STRINGS.SKILLTREE.PANELS.LAVAE = "熔岩虫"
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

if STRINGS.CHARACTERS.WOODLEGS then

STRINGS.CHARACTERS.WOODLEGS.ACTIONFAIL.GIVE = { NOTMOTHER = "啊！这不是乌鸦巢！", }

end

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
----------------------------------------------重新加载龙蝇技能树相关代码（为了汉化！）-------------------------------------------------------------------------
if GLOBAL.GetModConfigData("enable_wragonfly_skills","workshop-2010472942") == true and GLOBAL.GetModConfigData("enable_wragonfly","workshop-2010472942") == true then
	local ALLEGIANCE_POS_Y_1 = 172
	local ALLEGIANCE_POS_Y_2 = 128
	local ALLEGIANCE_POS_Y_3 = 84
	local ALLEGIANCE_POS_Y_4 = 38

	local ALLEGIANCE_LOCK_X = 202
	local ALLEGIANCE_SHADOW_X = ALLEGIANCE_LOCK_X - 23
	local ALLEGIANCE_LUNAR_X  = ALLEGIANCE_LOCK_X + 24

	--------------------------------------------------------------------------------------------------

	local WRAGONFLY_SKILL_STRINGS = STRINGS.SKILLTREE.WRAGONFLY

	--------------------------------------------------------------------------------------------------

	local function CreateAccomplishmentLockFn(key)
		return
			function(prefabname, activatedskills, readonly)
				return readonly and "question" or TheGenericKV:GetKV(key) == "1"
			end
	end

	--------------------------------------------------------------------------------------------------

	local ORDERS =
	{
		{"rage",       {-135,                   202}},
		{"lavae",       {60,                  202}},
		{"ash",     { -196,     46 }},
		{"allegiance",  {202,                   202}},
	}

	--------------------------------------------------------------------------------------------------

	local function BuildSkillsData(SkillTreeFns)
		local skills =
		{
			-- On enrage, regain health based on your current sanity
			wragonfly_vigor_1 = {
				title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_VIGOR_1_TITLE,
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_VIGOR_1_DESC,
				icon = "wragonfly_vigor_1",
				pos = {-182, 165},
				root = true,
				connects = { "wragonfly_vigor_2" },
				group = "rage",
				tags = {"rage"},
			},

			-- Speed and Damage ramp up the closer you are to rage ending
			wragonfly_vigor_2 = {
				title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_VIGOR_2_TITLE,
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_VIGOR_2_DESC,
				icon = "wragonfly_vigor_2",
				pos = {-182, 127},
				group = "rage",
				tags = {"rage"},
			},

			-- Your additional damage bursts will be consistent, every other hit instead of RNG
			wragonfly_damage_1 = {
				title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_DAMAGE_1_TITLE,
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_DAMAGE_1_DESC,
				icon = "wragonfly_damage_1",
				pos = {-134, 165},
				root = true,
				connects = { "wragonfly_damage_2" },
				group = "rage",
				tags = {"rage"},
			},

			-- While enraged, enemies attacking you will take fire damage from doing so
			wragonfly_damage_2 = {
				title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_DAMAGE_2_TITLE,
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_DAMAGE_2_DESC,
				icon = "wragonfly_damage_2",
				pos = {-134, 127},
				connects = { "wragonfly_damage_3" },
				group = "rage",
				tags = {"rage"},
			},

			-- While enraged, mark your enemies with a debuff that causes rage's damage bursts for 15 seconds on hit
			wragonfly_damage_3 = {
				title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_DAMAGE_3_TITLE,
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_DAMAGE_3_DESC,
				icon = "wragonfly_damage_3",
				pos = {-134, 89},
				connects = { "wragonfly_damage_4" },
				group = "rage",
				tags = {"rage"},
			},

			-- While enraged, gain the ability to hock a hot loogie
			wragonfly_damage_4 = {
				title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_DAMAGE_4_TITLE,
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_DAMAGE_4_DESC,
				icon = "wragonfly_damage_4",
				pos = {-134, 51},
				group = "rage",
				tags = {"rage"},
			},

			wragonfly_hunger_lock = {
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_RAGE_HUNGER_LOCK_DESC,
				pos = {-86, 165},
				group = "rage",
				tags = {"lock"},
				root = true,
				lock_open = function(prefabname, activatedskills, readonly) 
					if readonly then
						return "question"
					end

					local dfly_skills = SkillTreeFns.CountTags(prefabname, "rage", activatedskills)
					return dfly_skills >= 3

				end,
				connects = {
					"wragonfly_hunger",
				},
			},

			-- Lose less sanity while enraged, charcoal eaten will increase your enraged timer by 10 seconds 
			wragonfly_hunger = {
				title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_HUNGER_TITLE,
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_HUNGER_DESC,
				icon = "wragonfly_hunger",
				pos = {-86, 127},
				group = "rage",
				tags = {"rage"},
			},

			--------------------------------------------------------------------------

			wragonfly_rage_lavae_lock = {
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_RAGE_LAVAE_LOCK_DESC,
				pos = {-60, 89},
				group = "rage",
				tags = {"lock"},
				root = true,
				lock_open = function(prefabname, activatedskills, readonly) 
					if readonly then
						return "question"
					end

					local lavae_skills = SkillTreeFns.CountTags(prefabname, "lavae", activatedskills)
					return lavae_skills >= 4

				end,
				connects = {
					"wragonfly_rage_lavae_1",
				},
			},

			-- While enraged, deal more damage to targets of your Lavae
			wragonfly_rage_lavae_1 = {
				title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_RAGE_LAVAE_1_TITLE,
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_RAGE_LAVAE_1_DESC,
				icon = "wragonfly_rage_lavae_1",
				pos = {-60, 51},
				connects = { "wragonfly_rage_lavae_2" },
				group = "rage",
				tags = {"rage"},
			},

			-- Gain the ability to consume your Lavae, returning 30% of its current hp to yours, its current hunger to yours, and at a sanity cost of 10% its current hp
			wragonfly_rage_lavae_2 = {
				title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_RAGE_LAVAE_2_TITLE,
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_RAGE_LAVAE_2_DESC,
				icon = "wragonfly_rage_lavae_2",
				pos = {-60, 13},
				group = "rage",
				tags = {"rage"},
			},

			--------------------------------------------------------------------------

			-- Lavae will heal significantly more from food
			wragonfly_lavaehealth_1 = {
				title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEHEALTH_1_TITLE,
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEHEALTH_1_DESC,
				icon = "wragonfly_lavaehunger_1",
				pos = {20, 165},
				root = true,
				connects = { "wragonfly_lavaehealth_2" },
				group = "lavae",
				tags = {"lavae"},
			},

			-- When not starving, Lavae will regenerate health
			wragonfly_lavaehealth_2 = {
				title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEHEALTH_2_TITLE,
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEHEALTH_2_DESC,
				icon = "wragonfly_lavaehealth_2",
				pos = {20, 127},
				group = "lavae",
				tags = {"lavae"},
			},

			-- Lavae are a little less hungry and food a little more filling
			wragonfly_lavaehunger_1 = {
				title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEHUNGER_1_TITLE,
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEHUNGER_1_DESC,
				icon = "wragonfly_lavaehealth_1",
				pos = {58, 165},
				root = true,
				connects = { "wragonfly_lavaehunger_2" },
				group = "lavae",
				tags = {"lavae"},
			},

			-- Lavae will feed off the life-force of their enemies, damage dealt returned as hunger
			wragonfly_lavaehunger_2 = {
				title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEHUNGER_2_TITLE,
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEHUNGER_2_DESC,
				icon = "wragonfly_lavaehunger_2",
				pos = {58, 127},
				group = "lavae",
				tags = {"lavae"},
			},

			-- Lavae will pop on death, causing splash damage
			wragonfly_lavaedeath_1 = {
				title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEDEATH_1_TITLE,
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEDEATH_1_DESC,
				icon = "wragonfly_lavaedeath_1",
				pos = {96, 165},
				root = true,
				connects = { "wragonfly_lavaedeath_2" },
				group = "lavae",
				tags = {"lavae"},
			},

			-- Lavae will no longer die when you do and will still follow you as a ghost
			wragonfly_lavaedeath_2 = {
				title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEDEATH_2_TITLE,
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAEDEATH_2_DESC,
				icon = "wragonfly_lavaedeath_2",
				pos = {96, 127},
				group = "lavae",
				tags = {"lavae"},
			},

			-- Lavae will deal 25% more damage to burning targets
			wragonfly_lavae_hot = {
				title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_HOT_TITLE,
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_HOT_DESC,
				icon = "wragonfly_lavae_hot",
				pos = {58, 51},
				root = true,
				group = "lavae",
				tags = {"lavae"},
			},

			--------------------------------------------------------------------------

			wragonfly_lavae_rage_lock = {
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAE_RAGE_LOCK_DESC,
				pos = {1, 89},
				group = "rage",
				tags = {"lock"},
				root = true,
				lock_open = function(prefabname, activatedskills, readonly) 
					if readonly then
						return "question"
					end

					local rage_skills = SkillTreeFns.CountTags(prefabname, "rage", activatedskills)
					return rage_skills >= 4

				end,
				connects = {
					"wragonfly_lavae_rage_1",
				},
			},

			-- Lavae will take less damage while you're enraged
			wragonfly_lavae_rage_1 = {
				title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAE_RAGE_1_TITLE,
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAE_RAGE_1_DESC,
				icon = "wragonfly_lavae_rage_1",
				pos = {1, 51},
				connects = { "wragonfly_lavae_rage_2" },
				group = "lavae",
				tags = {"lavae"},
			},

			-- Lavae will be quicker to attack while you're enraged
			wragonfly_lavae_rage_2 = {
				title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAE_RAGE_2_TITLE,
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_LAVAE_RAGE_2_DESC,
				icon = "wragonfly_lavae_rage_2",
				pos = {1, 13},
				group = "lavae",
				tags = {"lavae"},
			},

			--------------------------------------------------------------------------

			-- Eat 8 Ash and Enrage to unlock
			wragonfly_ash_lock = {
				group = "ash",
				tags = {"ash","lock"},
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_ASH_LOCK_DESC,
				pos = {-218, 25},
				root = true,
				connects = { "wragonfly_ash" },

				lock_open = CreateAccomplishmentLockFn("wragonfly_enraged"),
			},

			-- Gain the ability to spit on certain burnables to immediately convert to ash
			wragonfly_ash = {
				title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_ASH_TITLE,
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_ASH_DESC,
				icon = "wragonfly_ash",
				pos = {-180, 25},
				group = "ash",
				tags = {"ash"},
			},

			--------------------------------------------------------------------------

			wragonfly_allegiance_lock_1 = {
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_ALLEGIANCE_LOCK_1_DESC,
				pos = {ALLEGIANCE_LOCK_X, ALLEGIANCE_POS_Y_1},
				group = "allegiance",
				tags = {"allegiance","lock"},
				root = true,
				lock_open = function(prefabname, activatedskills, readonly)
					return SkillTreeFns.CountSkills(prefabname, activatedskills) >= 12
				end,
			},

			wragonfly_allegiance_lock_2 = SkillTreeFns.MakeFuelWeaverLock(
				{ pos = {ALLEGIANCE_SHADOW_X, ALLEGIANCE_POS_Y_2} }
			),


			wragonfly_allegiance_lock_4 = SkillTreeFns.MakeNoLunarLock(
				{ pos = {ALLEGIANCE_SHADOW_X, ALLEGIANCE_POS_Y_3} }
			),

			wragonfly_allegiance_shadow = {
				title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_ALLEGIANCE_SHADOW_TITLE,
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_ALLEGIANCE_SHADOW_DESC,
				icon = "wilson_favor_shadow",
				pos = {ALLEGIANCE_SHADOW_X , ALLEGIANCE_POS_Y_4},
				group = "allegiance",
				tags = {"allegiance","shadow","shadow_favor"},
				locks = {"wragonfly_allegiance_lock_1", "wragonfly_allegiance_lock_2", "wragonfly_allegiance_lock_4"},

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

			wragonfly_allegiance_lock_3 = SkillTreeFns.MakeCelestialChampionLock(
				{ pos = {ALLEGIANCE_LUNAR_X, ALLEGIANCE_POS_Y_2} }
			),

			wragonfly_allegiance_lock_5 = SkillTreeFns.MakeNoShadowLock(
				{ pos = {ALLEGIANCE_LUNAR_X, ALLEGIANCE_POS_Y_3} }
			),

			wragonfly_allegiance_lunar = {
				title = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_ALLEGIANCE_LUNAR_TITLE,
				desc = WRAGONFLY_SKILL_STRINGS.WRAGONFLY_ALLEGIANCE_LUNAR_DESC,
				icon = "wilson_favor_lunar",
				pos = {ALLEGIANCE_LUNAR_X , ALLEGIANCE_POS_Y_4},
				group = "allegiance",
				tags = {"allegiance","lunar","lunar_favor"},
				locks = {"wragonfly_allegiance_lock_1", "wragonfly_allegiance_lock_3", "wragonfly_allegiance_lock_5"},

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
			skilltree_defs.CreateSkillTreeFor("wragonfly", data.SKILLS)
			skilltree_defs.SKILLTREE_ORDERS["wragonfly"] = data.ORDERS
		end
	end
end