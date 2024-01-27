if KnownModIndex:GetModInfo("workshop-2428854303").name == "The Architect Pack" then
	modname = "The Architect Pack(建筑师)"
else
	modname = KnownModIndex:GetModInfo("workshop-2428854303").name
end

local description = KnownModIndex:GetModInfo("workshop-2428854303").description
description = string.gsub(description,"This mod contains huge amount of decorative structures for Base Building. Design and shape the world as you please!","此模组包含大量用于基础建筑的装饰结构。您可以随意设计和塑造世界！")
description = string.gsub(description,"Also includes tons of special structures, items and easter eggs, go find em' all. They might be right under your nose!","还包括大量的特殊结构、物品和复活节彩蛋，去把它们都找出来吧。\n它们可能就在你的眼皮底下！")
description = string.gsub(description,"Includes contents from: Shipwrecked, Hamlet, The Forge, The Gorge and exclusive contents!","包括以下内容：海难、哈姆雷特、熔炉、暴食和独家内容！")
description = string.gsub(description,"Credits on the mod page!","在mod的创意工坊页面上送出奖励！")
description = string.gsub(description,"Mod Version:","Mod 版本:")
description = string.gsub(description,"Update:","更新:")
description = string.gsub(description,"Buildings From Beyond","来自远方的建筑")

local function Title(title, hover)
	return
	{
		name = title,
		hover = hover,
		options = {{description = "", data = 0}},
		default = 0,
	}
end
local info=
{
	name = modname,
	description = description,
	configuration_options =
	{
		Title("Modes", "选择mod将工作的模式"),
		{
			name = "TAP_BUILDING_MIGRATOR",
			label = "多层世界模式",
			hover = "选择mod是否可以使用多层世界链接",
			options =
			{
				{description = "否",
				hover = "某些建筑将不支持多层世界",
				data = 0},
				{description = "是",
				hover = "某些建筑将支持多层世界",
				data = 1},
			},
			default = 0,
		},
		{
			name = "TAP_PLACING_METHOD",
			label = "放置模式",
			hover = "选择建筑物的放置方法",
			options =
			{
				{description = "经典",
				hover = "原始的方法，没有改变",
				data = 0},
				{description = "更接近",
				hover = "建筑物可以非常靠近地放置",
				data = 1},
			},
			default = 0,
		},
		{
			name = "TAP_STATUES_PLACER",
			label = "雕像放置模式",
			hover = "选择放置雕像的方法(可能与类似的mod冲突)",
			options =
			{
				{description = "经典",
				hover = "原始的方法，没有改变",
				data = 0},
				{description = "在网格上",
				hover = "雕像将被放置在网格上",
				data = 1},
			},
			default = 0,
		},
		Title("Tweaks", "注意：如果启用以下某些选项，可能会影响您的游戏性"),
		{
			name = "TAP_FOOD_FRESH",
			label = "用烹饪锅保存食物",
			hover = "从烹饪锅收获食物之前，煮熟的食物不会变成变质的食物",
			options =
			{
				{description = "否",
				hover = "如果你把食物放在烹饪锅上，它们就会变质",
				data = 0},
				{description = "是",
				hover = "如果你把食物放在烹饪锅里，它们就不会变质",
				data = 1},
			},
			default = 0,
		},
		{
			name = "TAP_TWEAK_RECIPES",
			label = "调整制作配方",
			hover = "游戏中的一些配方将针对制作方法进行调整",
			options =
			{
				{description = "否",
				hover = "饥荒联机版的默认配方",
				data = 0},
				{description = "Yes",
				hover = "调整草皮、大门、围栏和墙壁配方",
				data = 1},
			},
			default = 0,
		},
		{
			name = "TAP_HAMLET_YOTP",
			label = "猪王之年装饰品",
			hover = "一些哈姆雷特建筑将有猪年庆典装饰！",
			options =
			{
				{description = "否",
				hover = "《哈姆雷特》中的建筑将不会出现猪王之年装饰",
				data = 0},
				{description = "是",
				hover = "《哈姆雷特》中的建筑将有猪王之年的装饰",
				data = 1},
			},
			default = 0,
		},
		{
			name = "TAP_TREE_CYCLE",
			label = "树循环",
			hover = "选择树木在到达最后阶段时是否可以再次循环",
			options =
			{
				{description = "否",
				hover = "树木在到达最后阶段时不会再次循环",
				data = 0},
				{description = "是",
				hover = "当到达最后阶段时，树木将再次循环",
				data = 1},
			},
			default = 1,
		},
		{
			name = "TAP_BIRD_PERISH",
			label = "不死鸟",
			hover = "选择鸟类是否能永远活下去",
			options =
			{
				{description = "否",
				hover = "鸟会死(快乐的伍迪叫声！)",
				data = 0},
				{description = "是",
				hover = "鸟类会永远活下去(愤怒的伍迪的叫声)",
				data = 1},
			},
			default = 0,
		},
		Title("End Table", "茶几的选项"),
		{
			name = "TAP_ENDTABLE_LIGHT",
			label = "无限光",
			hover = "选择是否可以为茶几提供无限灯光",
			options =
			{
				{description = "否",
				hover = "荧光果和发光浆果不会永远持续下去",
				data = 0},
				{description = "是",
				hover = "荧光果和发光浆果将永远存在",
				data = 1},
			},
			default = 0,
		},
		{
			name = "TAP_ENDTABLE_DECOR",
			label = "不会腐烂的花",
			hover = "选择茶几上的花朵是否永久存在",
			options =
			{
				{description = "否",
				hover = "花不会永远存在",
				data = 0},
				{description = "是",
				hover = "花将永远存在",
				data = 1},
			},
			default = 0,
		},
		Title("Infinite Light", "菌伞灯、蘑菇灯和冬季盛宴树的选项"),
		{
			name = "TAP_WINTER_TREE",
			label = "冬季盛宴树",
			hover = "选择冬季盛宴树是否可以拥有无限的光线",
			options =
			{
				{description = "否",
				hover = "冬季盛宴树上的节日灯不会永远亮着",
				data = 0},
				{description = "是",
				hover = "节日之光将永远照耀在冬季盛宴之树上",
				data = 1},
			},
			default = 0,
		},
		{
			name = "TAP_GLOWCAP",
			label = "菌伞灯",
			hover = "选择菌伞灯是否可以具有无限的光线",
			options =
			{
				{description = "否",
				hover = "荧光果、节日灯等在菌伞灯内不会永远持续发光",
				data = 0},
				{description = "是",
				hover = "荧光果、节日灯等将在菌伞灯内会永久发光",
				data = 1},
			},
			default = 0,
		},
		{
			name = "TAP_MUSHLIGHT",
			label = "蘑菇灯",
			hover = "选择蘑菇灯是否可以具有无限的光线",
			options =
			{
				{description = "否",
				hover = "荧光果、节日灯等在蘑菇灯内不会永远持续发光",
				data = 0},
				{description = "是",
				hover = "荧光果、节日灯等在蘑菇灯内会永久发光",
				data = 1},
			},
			default = 0,
		},
		Title("Extras", "注意：如果启用以下某些选项，可能会影响您的游戏体验"),
		{
			name = "TAP_VANITY",
			label = "虚荣物品",
			hover = "启用虚荣的物品来增加你的装饰力！",
			options =
			{
				{description = "否",
				hover = "禁用虚荣物品，如呼噜币、遗物复制品等",
				data = 0},
				{description = "是",
				hover = "启用虚荣物品，如呼噜币、遗物复制品等",
				data = 1},
			},
			default = 0,
		},
		{
			name = "TAP_PACKIM",
			label = "鹈鹕",
			hover = "使鹈鹕成为邪天翁的特殊掉落物",
			options =
			{
				{description = "否（0% 概率）",
				hover = "默认邪天翁掉落物",
				data = 0.00},
				{description = "10% 概率",
				hover = "10% 概率掉落",
				data = 0.10},
				{description = "20% 概率",
				hover = "20% 概率掉落",
				data = 0.20},
				{description = "30% 概率",
				hover = "30% 概率掉落",
				data = 0.30},
				{description = "40% 概率",
				hover = "40% 概率掉落",
				data = 0.40},
				{description = "50% 概率",
				hover = "50% 概率掉落",
				data = 0.50},
				{description = "60% 概率",
				hover = "60% 概率掉落",
				data = 0.60},
				{description = "70% 概率",
				hover = "70% 概率掉落",
				data = 0.70},
				{description = "80% 概率",
				hover = "80% 概率掉落",
				data = 0.80},
				{description = "90% 概率",
				hover = "90% 概率掉落",
				data = 0.90},
				{description = "Yes (100% 概率)",
				hover = "100% 概率掉落",
				data = 1.00},
			},
			default = 0.00,
		},
		{
			name = "TAP_ROBIN",
			label = "罗宾",
			hover = "使罗宾成为远古守护者的特殊掉落",
			options =
			{
				{description = "否 (0% 概率)",
				hover = "默认远古守护者掉落物",
				data = 0.00},
				{description = "10% 概率",
				hover = "10% 概率掉落",
				data = 0.10},
				{description = "20% 概率",
				hover = "20% 概率掉落",
				data = 0.20},
				{description = "30% 概率",
				hover = "30% 概率掉落",
				data = 0.30},
				{description = "40% 概率",
				hover = "40% 概率掉落",
				data = 0.40},
				{description = "50% 概率",
				hover = "50% 概率掉落",
				data = 0.50},
				{description = "60% 概率",
				hover = "60% 概率掉落",
				data = 0.60},
				{description = "70% 概率",
				hover = "70% 概率掉落",
				data = 0.70},
				{description = "80% 概率",
				hover = "80% 概率掉落",
				data = 0.80},
				{description = "90% 概率",
				hover = "90% 概率掉落",
				data = 0.90},
				{description = "Yes (100% 概率)",
				hover = "100% 概率掉落",
				data = 1.00},
			},
			default = 0.00,
		},
		--[[
		{
			name = "TAP_OXFLUTE",
			label = "Dripple Pipes",
			hover = "Enables Dripple Pipes as special drop of Crab King.",
			options =
			{
				{description = "否 (0% 概率)", 
				hover = "默认帝王蟹掉落物",
				data = 0.00},
				{description = "10% 概率", 
				hover = "10% 概率掉落",
				data = 0.10},
				{description = "20% 概率", 
				hover = "20% 概率掉落",
				data = 0.20},
				{description = "30% 概率", 
				hover = "30% 概率掉落",
				data = 0.30},
				{description = "40% 概率", 
				hover = "40% 概率掉落",
				data = 0.40},
				{description = "50% 概率", 
				hover = "50% 概率掉落",
				data = 0.50},
				{description = "60% 概率", 
				hover = "60% 概率掉落",
				data = 0.60},
				{description = "70% 概率", 
				hover = "70% 概率掉落",
				data = 0.70},
				{description = "80% 概率", 
				hover = "80% 概率掉落",
				data = 0.80},
				{description = "90% 概率", 
				hover = "90% 概率掉落",
				data = 0.90},
				{description = "Yes (100% 概率)", 	
				hover = "100% 概率掉落",
				data = 1.00},
			},
			default = 0.00,
		},
		]]--
		{
			name = "TAP_CC",
			label = "彩色滤镜",
			hover = "启用每个季节的滤镜",
			options =
			{
				{description = "否",
				hover = "“饥荒联机版”的默认滤镜",
				data =   0},
				{description = "哈姆雷特",
				hover = "来自《哈姆雷特》DLC的滤镜 |温和 | 潮湿 | 繁茂 | Barren",
				data =   1},
				{description = "海难",
				hover = "来自海难DLC的滤镜 |温和 | 飓风 | 季风 | 旱季",
				data =   2},
				{description = "Glermz 版本",
				hover = "来自 Glermz 选择的滤镜|温和 | 冬季 | 春季 | 繁茂",
				data = 3},
				{description = "Thalz 版本",
				hover=  "来自 Thalz 选择的滤镜 | 秋季 | 潮湿 | 繁茂 | 干燥",
				data = 4},
				{description = "Soko 版本",
				hover=  "来自 Sokoteur 选择的滤镜 | 温和 | 飓风 | 繁茂 | Barren",
				data = 5},
				{description = "熔炉",
				hover = "熔炉活动中的滤镜|熔岩竞技场",
				data = 6},
				{description = "暴食",
				hover = "暴食活动的滤镜|泥潭",
				data = 7},
			},
			default = 0,
		},
	}
}
return info