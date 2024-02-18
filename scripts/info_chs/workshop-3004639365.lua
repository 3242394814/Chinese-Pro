if KnownModIndex:GetModInfo("workshop-3004639365").name == "Don't Starve: Dehydrated" then
	modname = "Don't Starve: Dehydrated(饥荒:脱水)"
else
	modname = KnownModIndex:GetModInfo("workshop-3004639365").name
end

local description = KnownModIndex:GetModInfo("workshop-3004639365").description
description = string.gsub(description,"Version ","版本: ")
description = string.gsub(description,"With Don't Starve: Dehydrated hunger is not the only threat coming for you.","就像饥荒: 口渴并不是你面临的唯一威胁。")
description = string.gsub(description,"You will have to explore the Constant and gather materials to quench your thirst if you want to survive. ","如果你想生存下去，你必须不断探索并收集材料来解渴。")
description = string.gsub(description,"You can and should concoct your beverages in a teapot or a brewing stand instead of drinking unrefined sea water.","你可以也应该在茶壶或冲泡台上调制饮料，而不是饮用未经处理的海水。")
description = string.gsub(description,"Another tool for survival is a book that you could accumulate information in about a variety of plants and edible food, even favorites!","另一个生存工具是一本书，你可以在书中积累各种植物和可食用食物的信息，甚至是最喜欢的！")

local opt_Empty = {{description = "", data = 0}}
local function Title(title,label,hover)
	return {
		name=title,
		label=label,
		hover=hover,
		options=opt_Empty,
		default=0,
	}
end

local SEPARATOR = Title("")

local info=
{
	name = modname,
	description = description,
	configuration_options =
	{
		Title("Select Language","选择语言"),
		{
			name = "locale",
			label = "语言",
			options =
			{
				{description = "自动", data = false},
				{description = "英语(English)", data = "en"},
				{description = "韩语(한국어)", data = "ko"},
				{description = "越南语(Tiếng Việt)", data = "vi"},
				{description = "西班牙语(Español)", data="es"},
			},
			default = false,
		},
		SEPARATOR,
		Title("WorldGen options","世界选项"),
		{
			name = "gen_tea_tree",
			label = "茶树",
			hover = "你想生成多少棵茶树？",
			options =
			{
				{description = "无", data = 0},
				{description = "较少", data = 0.7},
				{description = "默认", data = 1.2},
				{description = "更多", data = 1.7},
				{description = "很多", data = 1.9},
			},
			default = 1.2,
		},
		{
			name = "gen_caffeinberry",
			label = "咖啡植物",
			hover = "你想生成多少咖啡植物？",
			options =
			{
				{description = "无", data = 0},
				{description = "较少", data = 0.7},
				{description = "默认", data = 1.2},
				{description = "更多", data = 1.7},
				{description = "很多", data = 1.9},
			},
			default = 1.2,
		},
		{
			name = "gen_ruincacao_tree",
			label = "可可植物",
			hover = "你想生成多少可可植物？",
			options =
			{
				{description = "无", data = 0},
				{description = "较少", data = 0.7},
				{description = "默认", data = 1.2},
				{description = "更多", data = 1.7},
				{description = "很多", data = 1.9},
			},
			default = 1.2,
		},
		SEPARATOR,
		Title("Thirst options","口渴 选项"),
		{
			name = "enable_thirst",
			label = "启用口渴？",
			options =
			{
				{description = "开启", data = true},
				{description = "关闭", data = false},
			},
			default = true,
		},
		{
			name = "enable_waterborne",
			label = "启用水传播疾病？",
			options =
			{
				{description = "开启", data = true},
				{description = "关闭", data = false},
			},
			default = true,
		},
		{
			name = "thirst_max",
			label = "最大口渴值",
			options =
			{
				{description = "70", data = 70},
				{description = "100", data = 100},
				{description = "150(默认)", data = 150},
				{description = "200", data = 200},
				{description = "250", data = 250},
			},
			default = 150,
		},
		{
			name = "thirst_decrease_speed",
			label = "每日口渴消耗量",
			options =
			{
				{description = "30", data = .2},
				{description = "60", data = .4},
				{description = "75", data = .5},
				{description = "90(默认)", data = .6},
				{description = "105", data = .7},
				{description = "135", data = .9},
			},
			default = .6,
		},
		{
			name = "waterborne_time",
			label = "水传播疾病持续时间",
			options =
			{
				{description = "更短", data = .125},
				{description = "短", data = .25},
				{description = "默认", data = .5},
				{description = "长", data = .625},
				{description = "更长", data = .75},
			},
			default = .5
		},
		SEPARATOR,
		Title("Brewery options","啤酒厂 选项"),
		Title("Alcohol Drinks Brewing","酒精饮料酿造"),
		{
			name = "beer_wait",
			label = "额外时间",
			hover = "你想让酒精发酵多长时间？",
			options =
			{
				{description = "无", data = 0},
				{description = "更短", data = .1875},
				{description = "短", data = .375},
				{description = "默认", data = .75},
				{description = "长", data = 1.5},
				{description = "更长", data = 3},
			},
			default = .75
		},
		Title("Soda Brewing","苏打水酿造"),
		{
			name = "soda_wait",
			label = "额外时间",
			hover = "你想让苏打水冲泡多长时间？",
			options =
			{
				{description = "无", data = 0},
				{description = "更短", data = .1875},
				{description = "短", data = .375},
				{description = "默认", data = .75},
				{description = "长", data = 1.5},
				{description = "更长", data = 3},
			},
			default = .75
		},
		SEPARATOR,
		Title("Effect options","效果 选项"),
		Title("Coffee Speed Boost","咖啡速度提升"),
		{
			name = "caffein_speed",
			label = "提升速率",
			options =
			{
				{description = "更慢", data = 1.05},
				{description = "慢", data = 1.10},
				{description = "默认", data = 1.25},
				{description = "快", data = 1.40},
				{description = "更快", data = 1.83},
			},
			default = 1.25
		},
		{
			name = "caffein_time",
			label = "持续时间",
			options =
			{
				{description = "更短", data = .5},
				{description = "短", data = .7},
				{description = "默认", data = 1},
				{description = "长", data = 2},
				{description = "更长", data = 4},
			},
			default = 1
		},
		SEPARATOR,
		Title("Drink Sleep Effect","饮料睡眠效果"),
		{
			name = "sleeping_time",
			label = "持续时间",
			options =
			{
				{description = "更短", data = 3.75},
				{description = "短", data = 7.5},
				{description = "默认", data = 15},
				{description = "长", data = 18.75},
				{description = "更长", data = 22.5},
			},
			default = 15
		},
		SEPARATOR,
		Title("Drink Alcohol Effect","饮酒影响"),
		{
			name = "child_safety",
			label = "儿童保护",
			options =
			{
				{description = "开启", data = true},
				{description = "关闭", data = false},
			},
			default = true
		},
		{
			name = "alcohol_time",
			label = "中毒持续时间",
			options =
			{
				{description = "更短", data = .125},
				{description = "短", data = .25},
				{description = "默认", data = .5},
				{description = "长", data = .625},
				{description = "更长", data = .75},
			},
			default = .5
		},
		{
			name = "drunkard_time",
			label = "醉酒持续时间",
			options =
			{
				{description = "更短", data = .125},
				{description = "短", data = .25},
				{description = "默认", data = .5},
				{description = "长", data = .625},
				{description = "更长", data = .75},
			},
			default = .5
		},
		{
			name = "resistance_time",
			label = "Sanity Depression Arua Resistance",
			hover = "Chinese++ Pro: 我也看不懂这是什么意思",
			options =
			{
				{description = "更短", data = .125},
				{description = "短", data = .25},
				{description = "默认", data = .5},
				{description = "长", data = .625},
				{description = "更长", data = .75},
			},
			default = .5
		},
		{
			name = "immune_time",
			label = "疼痛缓解持续时间",
			options =
			{
				{description = "更短", data = .125},
				{description = "短", data = .25},
				{description = "默认", data = .5},
				{description = "长", data = .625},
				{description = "更长", data = .75},
			},
			default = .5
		},
		SEPARATOR,
		Title("Drink Alcohol Capacity","饮酒能力"),
		{
			name = "max_capacity",
			label = "醉酒阈值",
			options =
			{
				{description = "只要一口", data = 0},
				{description = "3杯", data = 3},
				{description = "1 瓶", data = 5},
				{description = "2 瓶", data = 10},
				{description = "3 瓶", data = 15},
				{description = "4 瓶", data = 20},
				{description = "5 瓶", data = 25},
				{description = "6 瓶", data = 30},
			},
			default = 5
		},
		{
			name = "capacity_time",
			label = "中毒减低率",
			options =
			{
				{description = "更慢", data = .75},
				{description = "慢", data = .625},
				{description = "默认", data = .5},
				{description = "快", data = .25},
				{description = "更快", data = .125},
			},
			default = .5
		},
		SEPARATOR,
		Title("Drink O.B.E. Effect","饮用O.B.E.效果"),
		{
			name = "ghost_time",
			label = "持续时间",
			options =
			{
				{description = "更短", data = .0625},
				{description = "短", data = .125},
				{description = "默认", data = .25},
				{description = "长", data = .5},
				{description = "更长", data = 1},
			},
			default = .25
		},
		SEPARATOR,
		Title("Drink Butterhunter Effect","饮用Butterhunter效果"),
		{
			name = "butterhunter_time",
			label = "持续时间",
			options =
			{
				{description = "更短", data = .0625},
				{description = "短", data = .125},
				{description = "默认", data = .25},
				{description = "长", data = .5},
				{description = "更长", data = 1},
			},
			default = .25
		},
	}
}
return info