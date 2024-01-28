local info = {
	name = "Combined Status(综合状态显示)",
	description = "显示血量、饥饿值、精神值、温度、季节、月相和天数。",
	configuration_options = {
		{
			name = "SHOWTEMPERATURE",
			label = "温度",
			hover = "显示玩家温度",
			options =	{
							{description = "显示", data = true},
							{description = "隐藏", data = false},
						},
			default = true,
		},
		{
			name = "SHOWWORLDTEMP",
			label = "显示世界温度",
			hover = "显示世界温度（这不考虑热源，如火灾）",
			options =	{
							{description = "显示", data = true},
							{description = "隐藏", data = false},
						},
			default = false,
		},
		{
			name = "SHOWTEMPBADGES",
			label = "显示小图标",
			hover = "在体温和气温指数的左边标上小图标来方便辨认。预设是显示。",
			options =	{
							{description = "显示", data = true, hover = "只有当两个温度都显示时，才会显示图标。"},
							{description = "隐藏", data = false, hover = "永远不会显示图标"},
						},
			default = true,
		},
		{
			name = "UNIT",
			label = "温度单位",
			hover = "做正确的事，让游戏继续",
			options =	{
							{description = "游戏单位", data = "T",
								hover = "游戏溫度："
									.."\n在0度冻结，在70度过热，每5度得到警示。"},
							{description = "摄氏", data = "C",
								hover = "游戏使用的温度数字，但减半以更合理。"
									.."\n在0度冻结，在35度过热，每2.5度得到警示。"},
							{description = "华氏", data = "F",
								hover = "你最喜欢的没有意义的温度单位。"
									.."\n在32度冻结，在95度过热，每4.5度得到警示。"},
						},
			default = "T",
		},
		{
			name = "SHOWWANINGMOON",
			label = "显示月相",
			hover = "设定是否显示月相的变化"
				.. "\n在多人版，这已经是内置的功能。",
			options =	{
							{description = "显示", data = true},
							{description = "不显示", data = false},
						},
			default = true,
		},
		{
			name = "SHOWMOON",
			label = "显示月相状态",
			hover = "设定要在哪个时段显示月相状态",
			options =	{
							{description = "只有晚上", data = 0, hover = "只在夜晚显示，这是预设的设定"},
							{description = "黄昏", data = 1, hover = "在黄昏和夜晚时显示"},
							{description = "永远显示", data = 2, hover = "全天候显示"},
						},
			default = 1,
		},
		{
			name = "SHOWNEXTFULLMOON",
			label = "预测满月",
			hover = "预测下一个满月的天数,"
				.. "\n当鼠标移到标示上面时显示",
			options =	{
							{description = "是", data = true},
							{description = "否", data = false},
						},
			default = true,
		},
		{
			name = "FLIPMOON",
			label = "翻转月亮",
			hover = "翻转月相（预设是北半球的月相）."
				.. "\n如果许选是，则会显示南半球的月相。",
			options =	{
							{description = "是", data = true, hover = "展现南半球的月相"},
							{description = "否", data = false, hover = "展现北半球的月相"},
						},
			default = false,
		},
		{
			name = "SEASONOPTIONS",
			label = "季节时钟",
			hover = "增加显示季节的时钟，并且重新排列状态标志"
			.."\n或者增加一个标示显示季节，并且当鼠标移过去会显示当前季节剩余天数",
			options =	{
							{description = "最简易", data = "Micro"},
							{description = "紧凑型", data = "Compact"},
							{description = "时钟型", data = "Clock"},
							{description = "否", data = ""},
						},
			default = "Clock",
		},
		{
			name = "SHOWNAUGHTINESS",
			label = "淘气值",
			hover = "设定是否显示玩家的淘气值。此功能无法在联机版使用。\n除非你开启了Insight模组",
			options =	{
							{description = "显示", data = true},
							{description = "隐藏", data = false},
						},
			default = true,
		},
		{
			name = "SHOWBEAVERNESS",
			label = "海狸值",
			hover = "当伍迪还是人类状态的时候显示海狸值。在联机版，这已经是内置的功能",
			options =	{
							{description = "永远显示", data = true},
							{description = "变身时显示", data = false},
						},
			default = true,
		},
		{
			name = "HIDECAVECLOCK",
			label = "洞穴时钟",
			hover = "展示洞穴中的时钟。仅适用于巨人国单人游戏.",
			options =	{
							{description = "显示", data = false},
							{description = "隐藏", data = true},
						},
			default = false,
		},
		{
			name = "SHOWSTATNUMBERS",
			label = "状态值",
			hover = "显示当前的健康、饥饿度和血量的数字",
			options =	{
							{description = "当前/最大值", data = "Detailed"},
							{description = "总是显示", data = true},
							{description = "被动显示", data = false},
						},
			default = true,
		},
		{
			name = "SHOWMAXONNUMBERS",
			label = "显示状态最大值",
			hover = "显示状态“最大值：”的数字，变得更显眼",
			options =	{
							{description = "显示", data = true},
							{description = "隐藏", data = false},
						},
			default = true,
		},
		{
			name = "SHOWCLOCKTEXT",
			label = "显示时钟上的文字",
			hover = "在时钟（天数）和季节时钟（当前季节）上显示文字。\n如果隐藏，则只会在鼠标移过时才会显示。",
			options =	{
							{description = "显示", data = true},
							{description = "隐藏", data = false},
						},
			default = true,
		},
		{
			name = "HUDSCALEFACTOR",
			label = "HUD比例",
			hover = "让你可以自由调整整个状态界面的整体大小。预设值为1",
			default = 100,
		},
	}
}
return info