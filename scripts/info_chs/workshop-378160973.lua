local info={
	name = "Global Positions(全图定位)",
	description = "默认情况下，玩家指示箭头将会在打开计分板的时候显示。全图的玩家、营火或者添加木炭的篝火图标都将显示在地图上。",
	configuration_options =
	{
		{
			name = "SHOWPLAYERSOPTIONS",
			label = "玩家指示器",
			hover = "当玩家走过屏幕边缘时指示他们的箭头。",
			options =	{
							{description = "总是", data = 3},
							{description = "计分板", data = 2},
							{description = "从不", data = 1},
						},
			default = 2,
		},
		{
			name = "SHOWPLAYERICONS",
			label = "玩家图标",
			hover = "在地图上的玩家图标。",
			options =	{
							{description = "显示", data = true},
							{description = "隐藏", data = false},
						},
			default = true,
		},
		{
			name = "FIREOPTIONS",
			label = "显示火堆",
			hover = "像玩家一样用指示器指示火堆，如果它们在指示器上可见的话将会冒烟。",
			options =	{
							{description = "总是", data = 1},
							{description = "木炭", data = 2},
							{description = "禁用", data = 3},
						},
			default = 2,
		},
		{
			name = "SHOWFIREICONS",
			label = "火堆图标",
			hover = "在全地图显示火堆（在设置火堆可见时有效），如果它们在地图上可见的话将会冒烟。",
			options =	{
							{description = "显示", data = true},
							{description = "隐藏", data = false},
						},
			default = true,
		},
		{
			name = "SHAREMINIMAPPROGRESS",
			label = "共享地图",
			hover = "在玩家间共享探索的地图，仅在玩家指示和玩家图标没有同时禁用的情况下有效。",
			options =	{
							{description = "启用", data = true},
							{description = "禁用", data = false},
						},
			default = true,
		},
		{
			name = "OVERRIDEMODE",
			label = "荒野模式覆盖",
			hover = "如果启用，在荒野模式中将使用你所设置的选项。否则所有玩家将不会显示，但所有火堆都可见。",
			options =	{
							{description = "启用", data = true},
							{description = "禁用", data = false},
						},
			default = false,
		},
		{
			name = "ENABLEPINGS",
			label = "标记",
			hover = "是否允许玩家在地图上标记（Alt+鼠标点击）",
			options =	{
							{description = "启用", data = true},
							{description = "禁用", data = false},
						},
			default = true,
		},
	}
}
return info