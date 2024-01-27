local Keys = {
	{description = "无 --", data = -1}, -- 如果玩家找不到"None"选项
	{description = "小键盘 0", data = 256},
	{description = "小键盘 1", data = 257},
	{description = "小键盘 2", data = 258},
	{description = "小键盘 3", data = 259},
	{description = "小键盘 4", data = 260},
	{description = "小键盘 5", data = 261},
	{description = "小键盘 6", data = 262},
	{description = "小键盘 7", data = 263},
	{description = "小键盘 8", data = 264},
	{description = "小键盘 9", data = 265},
	{description = "小键盘 .", data = 266},
	{description = "小键盘 /", data = 267},
	{description = "小键盘 *", data = 268},
	{description = "小键盘 -", data = 269},
	{description = "小键盘 +", data = 270},
--	{description = "小键盘 Enter", data = 271},
--	{description = "小键盘 =", data = 272},
	{description = "↑", data = 273},
	{description = "↓", data = 274},
	{description = "←", data = 276},
	{description = "→", data = 275},
	{description = "-", data = 45},
	{description = "+", data = 43},
	{description = "(", data = 91},
	{description = ")", data = 93},
	{description = ";", data = 59},
	{description = "\'", data = 39},
	{description = ",", data = 44},
	{description = ".", data = 46},
	{description = "/", data = 47},
	{description = "PageUp", data = 280},
	{description = "PageDown", data = 281},
	{description = "Home", data = 278},
	{description = "End", data = 279},
	{description = "Insert", data = 277},
	{description = "Delete", data = 127},
	{description = "-- 无 --", data = 0}, -- 在这里不放任何东西可以帮助其他人设置按键
	{description = "A", data = 97},
	{description = "B", data = 98},
	{description = "C", data = 99},
	{description = "D", data = 100},
	{description = "E", data = 101},
	{description = "F", data = 102},
	{description = "G", data = 103},
	{description = "H", data = 104},
	{description = "I", data = 105},
	{description = "J", data = 106},
	{description = "K", data = 107},
	{description = "L", data = 108},
	{description = "M", data = 109},
	{description = "N", data = 110},
	{description = "O", data = 111},
	{description = "P", data = 112},
	{description = "Q", data = 113},
	{description = "R", data = 114},
	{description = "S", data = 115},
	{description = "T", data = 116},
	{description = "U", data = 117},
	{description = "V", data = 118},
	{description = "W", data = 119},
	{description = "X", data = 120},
	{description = "Y", data = 121},
	{description = "Z", data = 122},
	{description = "F1", data = 282},
	{description = "F2", data = 283},
	{description = "F3", data = 284},
	{description = "F4", data = 285},
	{description = "F5", data = 286},
	{description = "F6", data = 287},
	{description = "F7", data = 288},
	{description = "F8", data = 289},
	{description = "F9", data = 290},
	{description = "F10", data = 291},
	{description = "F11", data = 292},
	{description = "F12", data = 293},
	{description = "-- 无", data = -1}, -- 为了避免强迫玩家一路点击回到开头
}
local Boolean = {
	{description = "关闭", data = false},
	{description = "开启", data = true},
}
local BooleanHidden = {
	{description = "关闭", data = false},
	{description = "隐藏", data = "hidden", hover = "只有当您将光标悬停在计时器上方时，计时器才会显示。"},
	{description = "开启", data = true},
}

local info=
{
	name="Burning Timer(燃烧计时器)",
	description="在燃烧的物体或任何营火上方显示一个计时器，告诉您直到火熄灭的时间。",
	configuration_options = {
	{
		name = "hideButton",
		label = "显示/隐藏计时器",
		hover = "按下时切换燃烧计时器的可见性。",
		options = Keys,
		default = 0,
	},
	{
		name = "enabledByDefault",
		label = "默认情况下启用",
		hover = "在游戏开始时启用/禁用燃烧计时器的可见性。",
		options = Boolean,
		default = true,
	},
	{
		name = "",
		label = "",
		hover = "",
		options = {{description = "", data = 0}},
		default = 0,
	},
	{
		name = "showBurningTimer",
		label = "显示燃烧定时器",
		hover = "燃烧的物体将显示剩余时间，直到它们燃烧成灰烬。",
		options = Boolean,
		default = true,
	},
	{
		name = "showCampfireTimer",
		label = "显示营火计时器",
		hover = "火坑、营火、夜灯等将显示它们的燃料和剩余时间，直到熄灭。(Fire Pits, Campfires, Night Lights, etc.\nwill show their fuel and the remaining time until the fire goes out.)",
		options = BooleanHidden,
		default = true,
	},
	{
		name = "showLanternTimer",
		label = "显示 灯计时器",
		hover = "灯笼将显示燃料和剩余时间，直到熄灭。",
		options = BooleanHidden,
		default = true,
	},
	{
		name = "showStarTimer",
		label = "显示唤星法杖计时器",
		hover = "矮星和极光将以天和分钟为单位显示它们消失前的剩余时间。",
		options = BooleanHidden,
		default = true,
	},
	{
		name = "showHiddenDuration",
		label = "取消隐藏持续时间",
		hover = "如果设置为“隐藏”，计时器将显示多长时间。",
		options = {
			{description = "0.5s", data = 0.5},
			{description =  "1s", data = 1.0},
			{description =  "2s", data = 2.0},
			{description =  "3s", data = 3.0},
			{description =  "4s", data = 4.0},
			{description =  "5s", data = 5.0},
			{description =  "6s", data = 6.0},
			{description =  "7s", data = 7.0},
			{description =  "8s", data = 8.0},
			{description =  "9s", data = 9.0},
			{description = "10s", data = 10.0},
			{description = "15s", data = 15.0},
			{description = "20s", data = 20.0},
			{description = "25s", data = 25.0},
			{description = "30s", data = 30.0},
			{description = "45s", data = 45.0},
			{description =  "1m", data = 60.0},
			{description =  "2m", data = 120.0},
			{description =  "5m", data = 300.0},
			{description = "10m", data = 600.0},
			{description = "15m", data = 900.0},
			{description = "20m", data = 1200.0},
			{description = "30m", data = 1800.0},
			{description =  "1h", data = 3600.0},
			{description = "3.14h", data = 11309.74, hover = "我怀疑你能把火烧那么久却不盘旋在上面。"},
		},
		default = 5.0,
	},
	} -- The End
}
return info