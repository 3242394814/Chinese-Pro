local placer_color_options = {
	{description = "绿", data = "green", hover = "游戏使用的正常绿色。"},
	{description = "蓝", data = "blue", hover = "蓝色，如果你是红/绿色盲，则很有用。"},
	{description = "红", data = "red", hover = "游戏使用的正常红色。"},
	{description = "白", data = "white", hover = "明亮的白色，有更好的可见度。"},
	{description = "黑", data = "black", hover = "黑色，与较亮的颜色形成对比。"},
}
local color_options = {}
for i = 1, #placer_color_options do
	color_options[i] = placer_color_options[i]
end
color_options[#color_options+1] = {description = "描边白", data = "whiteoutline", hover = "白色带黑色轮廓，以获得最佳辨识度"}
color_options[#color_options+1] = {description = "描边黑", data = "blackoutline", hover = "黑色带白色轮廓，以获得最佳辨识度"}
local hidden_option = {description = "隐藏", data = "hidden", hover = "完全隐藏起来，因为你根本不需要看到它，对吧？"}
placer_color_options[#placer_color_options+1] = hidden_option
color_options[#color_options+1] = hidden_option

local KEY_A = 65
local keyslist = {}
local string = "" -- can't believe I have to do this... -____-
for i = 1, 26 do
	local ch = string.char(KEY_A + i - 1)
	keyslist[i] = {description = ch, data = ch}
end
keyslist[27] = {description = "无", data = ""}

local percent_options = {}
for i = 1, 10 do
	percent_options[i] = {description = i.."0%", data = i/10}
end
percent_options[11] = {description = "无限", data = false}

local info={
	name="Geometric Placement(几何放置)",
	description = "在放置物品时将其吸附到网格上，并在周围显示网格线（除非你按住Ctrl）",
	configuration_options =
	{
		{
			name = "CTRL",
			label = "CTRL功能翻转",
			options =	{
							{description = "开启", data = true},
							{description = "关闭", data = false},
						},
			default = false,
			hover = "当按住CTRL时开启或关闭MOD",
		},
		{
			name = "KEYBOARDTOGGLEKEY",
			label = "设置键",
			default = "B",
			options = keyslist,
			-- hover = "A key to open the mod's options. On controllers, open\nthe scoreboard and then use Menu Misc 3 (left stick click).\nI recommend setting this with the Settings menu in DST.",
			hover = "打开MOD设置的按键。使用手柄时，打开计分板并使用菜单杂项3键（点击左侧摇杆）",
		},
		{
			name = "GEOMETRYTOGGLEKEY",
			label = "切换布局键",
			default = "V",
			options = keyslist,
			-- hover = "A key to toggle to the most recently used geometry\n(for example, switching between Square and X-Hexagon)\nI recommend setting this with the Settings menu in DST.",
			hover = "切换到最近使用布局的按键（例如，在矩形和X轴六边形间切换）",
		},
		{
			name = "SNAPGRIDKEY",
			label = "捕捉网格按钮",
			default = "",
			options = keyslist,
			hover = "绑定一个键，使网格有一个点以悬停物体或点为中心。不绑定键鼠。",
		},
		{
			name = "SHOWMENU",
			label = "游戏内菜单",
			options =	{
							{description = "开启", data = true},
							{description = "关闭", data = false},
						},
			default = true,
			hover = "如果启用，设置键将打开菜单。\n如果关闭，则它将开启或关闭该MOD。",
		},
		{
			name = "BUILDGRID",
			label = "显示建造网格",
			options =	{
							{description = "开启", data = true},
							{description = "关闭", data = false},
						},
			default = true,
			hover = "是否显示建造网格。",
		},
		{
			name = "GEOMETRY",
			label = "网格布局",
			options =	{
							{description = "矩形", data = "SQUARE", hover = "与世界X-Z坐标系对齐。墙和地皮始终使用该布局。"},
							{description = "菱形", data = "DIAMOND", hover = "旋转45\176的矩形.默认视角下看起来是矩形。"},
							{description = "X轴六边形", data = "X_HEXAGON", hover = "顶边平行于X轴的正六边形"},
							{description = "Z轴六边形", data = "Z_HEXAGON", hover = "顶边平行于Z轴的正六边形"},
							{description = "扁六边形", data = "FLAT_HEXAGON", hover = "默认视角下顶部为边的正六边形"},
							{description = "尖六边形", data = "POINTY_HEXAGON", hover = "默认视角下顶部为角的正六边形"},
						},
			default = "SQUARE",
			hover = "所使用的网格布局",
		},
		{
			name = "TIMEBUDGET",
			label = "刷新频率",
			default = 0.1,
			options = percent_options,
			hover = "将多少可用时间用于刷新网格。不限或者设置得太高很可能导致卡顿。",
		},
		{
			name = "HIDEPLACER",
			label = "隐藏占位标记",
			options =	{
							{description = "开启", data = true},
							{description = "关闭", data = false},
						},
			default = false,
			hover = "是否隐藏占位标记（你所要防止物品的虚影）。隐藏它可以让网格看得更清楚。",
		},
		{
			name = "HIDECURSOR",
			label = "隐藏光标物品",
			options =	{
							{description = "全部隐藏", data = 1},
							{description = "仅显示数量", data = true},
							{description = "全部显示", data = false},
						},
			default = false,
			hover = "是否隐藏鼠标所点选的物品，让网格看得更清楚。",
		},
		{
			name = "SMARTSPACING",
			label = "智能间距",
			options =	{
							{description = "开启", data = true},
							{description = "关闭", data = false},
						},
			default = false,
			hover = "是否根据放置的对象调整网格的间距。\n允许优化网格，但可能会使其很难放置在您想要的位置。",
		},
		{
			name = "ACTION_TILL",
			label = "到网格",
			options =	{
							{description = "开启", data = true},
							{description = "关闭", data = false},
						},
			default = true,
			hover = "是否使用网格耕作农田土壤。\n使用Snapping Tills模式时自动关闭。",
		},
		{
			name = "SMALLGRIDSIZE",
			label = "小网格尺寸",
			default = 10,
			hover = "使用小网格的物品（建筑，植物等）显示多大的网格。",
		},
		{
			name = "MEDGRIDSIZE",
			label = "墙体网格尺寸",
			default = 6,
			hover = "墙体显示多大的网格。",
		},
		{
			name = "FLOODGRIDSIZE",
			label = "沙袋网格尺寸",
			default = 5,
			hover = "沙袋显示多大的网格。",
		},
		{
			name = "BIGGRIDSIZE",
			label = "地皮网格尺寸",
			default = 2,
			hover = "地皮/草叉显示多大的网格。",
		},
		{
			name = "GOODCOLOR",
			label = "可放置的颜色",
			options = color_options,
			default = "whiteoutline",
			hover = "可放置物品区域网格的颜色，在那里可以放置东西。",
		},
		{
			name = "BADCOLOR",
			label = "被阻挡的颜色",
			options = color_options,
			default = "blackoutline",
			hover = "用于不可放置区域网格的颜色。你不能在那里放置物体",
		},
		{
			name = "NEARTILECOLOR",
			label = "最近的地皮颜色：",
			options = color_options,
			default = "white",
			hover = "用于最近的地皮网格的颜色",
		},
		{
			name = "GOODTILECOLOR",
			label = "可放置区域地皮颜色：",
			options = color_options,
			default = "whiteoutline",
			hover = "用于可放置区域地皮网格的颜色，你可以在那里放置地皮",
		},
		{
			name = "BADTILECOLOR",
			label = "不可放置区域地皮颜色：",
			options = color_options,
			default = "blackoutline",
			hover = "用于不可放置区域地皮网格的颜色，你不能在那里放置地皮",
		},
		{
			name = "GOODPLACERCOLOR",
			label = "可放置区域放置器颜色：",
			options = placer_color_options,
			default = "white",
			hover = "用于可放置物品点的颜色（你正在放置的物品的模拟位置）。",
		},
		{
			name = "BADPLACERCOLOR",
			label = "不可放置区域放置器颜色：",
			options = placer_color_options,
			default = "black",
			hover = "用于不可放置物品点的颜色（你正在放置的物品的模拟位置）。",
		},
		{
			name = "COLORS",
			label = "网格颜色",
			options =	{
							{description = "红/绿", data = "redgreen", hover = "正常游戏使用的标准红/绿色。"},
							{description = "红/蓝", data = "redblue", hover = "将绿色替换成蓝色，适合红绿色盲使用。"},
							{description = "黑/白", data = "blackwhite", hover = "被阻挡显示为黑色，可放置则为白色。一般来说看得更清楚。"},
							{description = "描边", data = "blackwhiteoutline", hover = "黑色和白色，但为了看得更清楚而加了描边。"},
						},
			default = "blackwhiteoutline",
			hover = "网格和占位符的替代配色方案，使它们看起来更清晰。",
		},
		{
			name = "REDUCECHESTSPACING",
			label = "缩小箱子间距",
			options =	{
							{description = "是", data = true},
							{description = "否", data = false},
						},
			default = true,
			hover = "是否允许箱子比正常放置得更紧密。这在联机版中可能无效。",
		},
		{
			name = "CONTROLLEROFFSET",
			label = "手柄偏移",
			options =	{
							{description = "开启", data = true},
							{description = "关闭", data = false},
						},
			default = false,
			hover = "使用手柄时，物品正好被放在你脚下还是偏移一些。",
		},
		{
			name = "HIDEBLOCKED",
			label = "隐藏受阻点",
			options =	{
							{description = "开启", data = true},
							{description = "关闭", data = false},
						},
			default = false,
			hover = "直接隐藏受到阻碍的点，而不是显示为红/黑色。",
		},
		{
			name = "SHOWTILE",
			label = "显示最近地皮",
			options =	{
							{description = "开启", data = true},
							{description = "关闭", data = false},
						},
			default = false,
			hover = "当放置任何东西时，显示最近地皮的轮廓。",
		},
	}
}
return info