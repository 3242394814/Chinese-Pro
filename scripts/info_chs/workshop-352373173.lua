local KEY_A = 65
local keyslist = {}
local string = "" -- can't believe I have to do this... -____-
for i = 1, 26 do
	local ch = string.char(KEY_A + i - 1)
	keyslist[i] = {description = ch, data = ch}
end
local scalefactors = {}
for i = 1, 20 do
	scalefactors[i] = {description = i/10, data = i/10}
end

--TODO: Make sure this stays in sync with the modmain and emote file
local eight_options =
{
	-- Default emotes
	{description = "挥手",		data = "wave"},
	{description = "粗鲁",		data = "rude"},
	{description = "开心",	data = "happy"},
	{description = "生气",	data = "angry"},
	{description = "伤心",		data = "sad"},
	{description = "恼怒",	data = "annoyed"},
	{description = "愉悦",		data = "joy"},
	{description = "跳舞",	data = "dance"},
	{description = "锯骨",	data = "bonesaw"},
	{description = "捂脸",	data = "facepalm"},
	{description = "亲吻",		data = "kiss"},
	{description = "摆姿势",		data = "pose"},
	{description = "坐下",		data = "sit"},
	{description = "蹲下",	data = "squat"},
	{description = "干杯",	data = "toast"},

	-- Unlockable emotes
	{description = "困倦",	data = "sleepy"},
	{description = "打哈欠",		data = "yawn"},
	{description = "晕倒",	data = "swoon"},
	{description = "火鸡舞",	data = "chicken"},
	{description = "机器舞",	data = "robot"},
	{description = "踢踏舞",		data = "step"},
	{description = "握拳",data = "fistshake"},
	{description = "秀肌肉",		data = "flex"},
	{description = "不耐烦",data = "impatient"},
	{description = "欢呼",	data = "cheer"},
	{description = "大笑",	data = "laugh"},
	{description = "耸肩",	data = "shrug"},
	{description = "缓慢拍手",	data = "slowclap"},
	{description = "歌颂",	data = "carol"},
}
local info ={
	name = "Gesture Wheel(动作表情轮盘)",
	description = "为表情添加一个轮盘选择界面，便于发送表情。",
	configuration_options =
	{
		{
			name = "KEYBOARDTOGGLEKEY",
			label = "调出键",
			hover = "打开表情轮盘所需要按住的键。",
			options = keyslist,
			default = "G", --G
		},
		{
			name = "SCALEFACTOR",
			label = "轮盘大小",
			hover = "你需要多大的轮盘。",
			options = scalefactors,
			default = 1,
		},
		{
			name = "IMAGETEXT",
			label = "显示图片/文本",
			options = {
				{description = "全部", data = 3},
				{description = "仅图片", data = 2},
				{description = "仅文本", data = 1},
			},
			default = 3,
		},
		{
			name = "CENTERWHEEL",
			label = "轮盘置中",
			options = {
				{description = "开启", data = true},
				{description = "关闭", data = false},
			},
			default = true,
		},
		{
			name = "RESTORECURSOR",
			label = "回复鼠标位置",
			hover = "当轮盘置中时，在选择表情前后鼠标移动到何处。",
			options = {
				{description = "相对", data = 3,
					hover = "将鼠标移动到轮盘未置中时相对轮盘的位置。"},
				{description = "绝对", data = 2,
					hover = "移动鼠标到打开轮盘前的位置，忽略选择表情的位移。"},
				{description = "置中", data = 1,
					hover = "仅打开轮盘时移动鼠标到中央，选择后不再移动。"},
				{description = "关闭", data = 0,
					hover = "始终不移动鼠标。根据鼠标之前的位置，可能有表情已经被选中。"},
			},
			default = 3,
		},
		{
			name = "RIGHTSTICK",
			label = "手柄摇杆",
			hover = "使用手柄的哪个摇杆选择轮盘上的表情。",
			options = {
				{description = "左侧", data = false},
				{description = "右侧", data = true},
			},
			default = false,
		},
		{
			name = "ONLYEIGHT",
			label = "限制为8个",
			hover = "限制轮盘的表情为8个，由以下选项决定。\n注意，蹲下之后的表情需要玩家解锁。",
			options = {
				{description = "开启", data = true},
				{description = "关闭", data = false},
			},
			default = false,
		},
		{
			name = "EIGHT1",
			label = "右侧表情",
			hover = "这将显示在正右侧",
			options = eight_options,
			default = "wave",
		},
		{
			name = "EIGHT2",
			label = "右上表情",
			hover = "这将显示在右上方",
			options = eight_options,
			default = "dance",
		},
		{
			name = "EIGHT3",
			label = "上方表情",
			hover = "这将显示在正上方",
			options = eight_options,
			default = "happy",
		},
		{
			name = "EIGHT4",
			label = "左上表情",
			hover = "这将显示在左上方",
			options = eight_options,
			default = "bonesaw",
		},
		{
			name = "EIGHT5",
			label = "左侧表情",
			hover = "这将显示在正左侧",
			options = eight_options,
			default = "rude",
		},
		{
			name = "EIGHT6",
			label = "左下表情",
			hover = "这将显示在左下方",
			options = eight_options,
			default = "facepalm",
		},
		{
			name = "EIGHT7",
			label = "下方表情",
			hover = "这将显示在正下方",
			options = eight_options,
			default = "sad",
		},
		{
			name = "EIGHT8",
			label = "右下表情",
			hover = "这将显示在右下方",
			options = eight_options,
			default = "kiss",
		},
	}
}
return info