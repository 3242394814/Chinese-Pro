local scales = {
}

for i = 1, 20 do
	scales[i] = {description = "x"..i/10, data = i/10}
end

local pos = {
	[1] = {description = "默认", data = 0}
}

for i = 2, 15 do
	pos[i] = {description = "+"..i.."0", data = i*10}
end

local KEYS = {
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
	
	{description = "0", data = 48},
	{description = "1", data = 49},
	{description = "2", data = 50},
	{description = "3", data = 51},
	{description = "4", data = 52},
	{description = "5", data = 53},
	{description = "6", data = 54},
	{description = "7", data = 55},
	{description = "8", data = 56},
	{description = "9", data = 57},
}

local opt_YesNo = {
	{description = "是", data = true},
	{description = "否", data = false},
}

local opt_Empty = {{description = "", data = 0}}

local function Title(title,label)
	return {
		name=title,
		label=label,
		-- hover=hover,
		options=opt_Empty,
		default=0,
	}
end
local version = KnownModIndex:GetModInfo("workshop-1416911938").version or "未知"
local info =
{
	name = "Gorge extender(暴食扩展)",
	description = "添加计时器、餐具计数器、对话小部件和用餐提醒等！ \n版本： "..version,
	configuration_options = {
		Title("Main","主设置"),
		{
			name = "tournament",
			label = "启用锦标赛记分器",
			hover = "就是那个奖杯的图标..显示你的游戏分数，没啥用",
			options = opt_YesNo,
			default = 3,
		},
		
		{
			name = "billy",
			label = "启用比利指示器",
			hover= "启用后屏幕边缘会提示比利的位置",
			options = opt_YesNo,
			default = 3,
		},
		
		{
			name = "counter_mode",
			label = "饕餮的死亡倒计时",
			hover = "设置倒计时显示方式",
			options = {
				{description = "百分比 & 秒数", data = 3},
				{description = "秒数", data = 2},
				{description = "百分比", data = 1},
			},
			default = 3,
		},
		
		{
			name = "mumsy",
			label = "添加山羊玛姆茜说话小部件？",
			hover = "启用后会在屏幕底部显示玛姆茜说的话",
			options = opt_YesNo,
			default = true,
		},
		
		{
			name = "rename_seeds",
			label = "重命名种子？",
			options = opt_YesNo,
			default = true,
		},
		
		Title("Sap timer","树液计时器"),
		
		{
			name = "sap_start_key",
			label = "计时器启动键",
			options = KEYS,
			default = 282,
		},
		
		{
			name = "sap_stop_key",
			label = "计时器停止键",
			options = KEYS,
			default = 283,
		},
		
		{
			name = "use_ctrl",
			label = "使用需要按住ctrl？",
			options = opt_YesNo,
			default = false,
		},
		
		Title("Gorge counter","暴食计数器"),
		
		{
			name = "counter_leftright",
			label = "计数器在哪边？",
			options = {
				{description = "左边", data = 1},
				{description = "右边", data = 2},
			},
			default = 1,
		},
		
		{
			name = "counter_scale",
			label = "计数器大小",
			options = scales,
			default = 1,
		},
		
		{
			name = "counter_pos",
			label = "计数器位置",
			options = pos,
			default = 0,
		},
		
		Title("Other","其它"),
		
		{
			name = "rounding",
			label = "死亡倒计时取整",
			options = {
				{description = "向上取整", data = 1},
				{description = "向下取整", data = 2},
				{description = "至十分之一", data = 3},
				{description = "至百分之一", data = 4},
			},
			default = 2,
		},
	}
}
return info