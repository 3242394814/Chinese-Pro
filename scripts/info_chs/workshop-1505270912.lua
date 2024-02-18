local info={
	name="热带体验|它们的回归(三合一)",
	description=[[
注意：我们为此模组添加了一些内容补充。
其中包含了多项改进游戏体验的玩法变化，请访问此模组创意工坊进行下载。
多种生物群落体验 | 补充内容
添加单机的海难DLC、哈姆雷特DLC内容

集成多种模组生物群落：
冰岛与冰霜洞穴 - 灵感来源永不妥协(Uncompromising Mode)
集成我另一个模组海底世界(Creeps in the Deeps)
集成：
绿色世界(Green World)
大风平原(Windy Plains)

兼容樱花林(Cherry Forest)

󰀅 此翻译来自 󰀅 ：󰀭 冰冰羊的Chinese++ Pro模组 󰀭]],
	configuration_options =
	{

		{
			name = "set_idioma",
			label = "选择语言",
			hover = "请变更你的语言...",
			options =
			{
				{ description = "English", data = "stringsEU" },
				{ description = "Português", data = "stringsPT" },
				{ description = "中文", data = "stringsCh" },
				{ description = "Italian", data = "stringsIT" },
				{ description = "Russian", data = "stringsRU" },
				{ description = "Spanish", data = "stringsSP" },
				{ description = "한국어", data = "stringsKO" },
				{ description = "Magyar", data = "stringsHUN" },
				{ description = "Français", data = "stringsFR" },
			},
			default = "stringsEU",
		},

		{
			name = "KIND OF WORLD",
			label = "世界类型",
			hover = "",
			options =	{
							{description = "", data = 0},
						},
			default = 0,
		},

		{
			name = "kindofworld",
			label = "设置世界",
			hover = "",
			default = 15,
			options = {
				{ description = "哈姆雷特", data = 5, hover = "将基于哈姆雷特DLC生成一个世界，请使用哈姆雷特的设置." },
				{ description = "海难世界", data = 10, hover = "将生成一个基于海难DLC的世界，使用海难的设置." },
				{ description = "自定义(三合一)", data = 15, hover = "将生成自定义世界，使用自定义世界的设置." },
				{ description = "海洋世界", data = 20, hover = "将生成陆地稀少海洋世界，在茫茫大海中探索生存吧" }, },
		},

		{
			name = "for hamlet world",
			label = "哈姆雷特世界设置",
			hover = "生成一个仅包含整个哈姆雷特的世界，包括所有废墟、池塘、BFB+巢穴）",
			options =	{
							{description = "", data = 0},
						},
			default = 0,
		},

		{
			name    = "hamletcaves_hamletworld",
			label   = "哈姆雷特洞穴",
			hover   = "将生成一个新的洞穴区域，不要忘记启用洞穴",
			options =
			{
				{ description = "禁用", data = 0, hover = "不会生成此生物群落" },
				{ description = "启用", data = 1, hover = "将生成新的洞穴区域" },
			},
			default = 1,
		},

		{
			name    = "togethercaves_hamletworld",
			label   = "联机版洞穴",
			hover   = "将生成默认洞穴区域，不要忘记启用洞穴",
			options =
			{
				{ description = "禁用", data = 0, hover = "不会生成此生物群落" },
				{ description = "启用", data = 1, hover = "将生成新的洞穴区域" },
			},
			default = 1,
		},

		{
			name    = "continentsize",
			label   = "大陆大小",
			hover   = "改变大陆的大小",
			options =
			{
				{ description = "小型", data = 1, hover = "将产生更小的大陆 可以减少游戏中的延迟" },
				{ description = "默认", data = 2, hover = "将产生实际大小的大陆" },
				{ description = "大型", data = 3, hover = "将产生更大的大陆 会增加游戏的延迟" },
			},
			default = 2,
		},

		{
			name    = "fillingthebiomes",
			label   = "填充生物群落",
			hover   = "改变生物群落的填充，游戏中的延迟就会越小",
			options =
			{

				{ description = "0%", data = 0, hover = "生物群落的含量将降至最低" },
				{ description = "25%", data = 1, hover = "生物群落将具有正常含量的25%" },
				{ description = "50%", data = 2, hover = "生物群落将具有正常含量的50%" },
				{ description = "75%", data = 3, hover = "生物群落将具有正常含量的75%" },
				{ description = "100%", data = 4, hover = "默认生物内容" },
			},
			default = 4,
		},


		{
			name    = "compactruins",
			label   = "小型猪废墟",
			hover   = "将生成房间更少的猪废墟",
			options =
			{
				{ description = "启用", data = true, hover = "猪废墟上的房间更少" },
				{ description = "禁用", data = false, hover = "标准数量" },
			},
			default = false,
		},

		{
			-- name = "for shipwrecked world",
			-- label = "海难世界设置",
			name = "",
			label = "船难设置",
			CH_label = "海难世界设置",
			hover = "",
			options =	{
							{description = "", data = 0},
						},
			default = 0,
		},

		{
			name    = "howmanyislands",
			label   = "有多少岛屿",
			hover   = "你可以增加或减少游戏中岛屿的数量，但是更多的岛屿需要更多的时间来生成一个世界",
			default = 22,
			options = {
				{ description = "20", data = 12, hover = "增加12个岛屿" },
				{ description = "30", data = 22, hover = "增加22个岛屿" },
				{ description = "40", data = 32, hover = "增加32个岛屿" },
				{ description = "50", data = 42, hover = "增加42个岛屿" },
				{ description = "60", data = 52, hover = "增加52个岛屿" },
				{ description = "70", data = 62, hover = "增加62个岛屿" },
				{ description = "80", data = 72, hover = "增加72个岛屿" },
				{ description = "86", data = 78, hover = "增加78个岛屿" },
			},
		},

		{
			name    = "Shipwreckedworld_plus",
			label   = "海难Plus",
			hover   = "根据Shipwrecked Plus模组生成额外的海难岛",
			options = {
				{ description = "否", data = false, hover = "黄金国度/文明不会被额外生成" },
				{ description = "是", data = true, hover = "黄金国度/文明会被额外生成" },
			},
			default = true,
		},

		{
			name    = "frost_islandworld",
			label   = "冰霜岛屿",
			hover   = "它在海洋中创造了一个终年冬天的雪岛，也创造了冰冻的洞穴.",
			default = 10,
			options = {
				{ description = "否", data = 5, hover = "禁用生成" },
				{ description = "是", data = 10, hover = "在洞穴和海难世界上生成" },
			},
		},

		{
			name    = "Moonshipwrecked",
			label   = "月岛生物群落",
			hover   = "在联机版海难生成月岛",
			options = {
				{ description = "否", data = 0, hover = "月岛不会生成" },
				{ description = "是", data = 1, hover = "月岛将生成" },
			},
			default = 0,
		},

		{
			name    = "hamletcaves_shipwreckedworld",
			label   = "哈姆雷特洞穴",
			hover   = "将生成一个新的洞穴区域，不要忘记启用洞穴",
			options =
			{
				{ description = "关闭", data = 0, hover = "这种生物群落不会产生" },
				{ description = "启用", data = 1, hover = "将生成一个新的洞穴区域" },
			},
			default = 1,
		},

		{
			name    = "togethercaves_shipwreckedworld",
			label   = "联机版洞穴",
			hover   = "将生成默认洞穴区域，不要忘记启用洞穴",
			options =
			{
				{ description = "关闭", data = 0, hover = "这种生物群落不会产生" },
				{ description = "启用", data = 1, hover = "将生成一个新的洞穴区域" },
			},
			default = 1,
		},

		{
			name = "for custom world",
			label = "自定义(三合一)世界设置",
			hover = "",
			options =	{
							{description = "", data = 0},
						},
			default = 0,
		},

		{
			name    = "startlocation",
			label   = "玩家出生点",
			hover   = "这是起点，它代表了出生点周围的生物群落。",
			default = 5,
			options = {
				{ description = "联机版", data = 5, hover = "巨人国生物群系" },
				{ description = "海难", data = 10, hover = "海难生物群系" },
				{ description = "哈姆雷特", data = 15, hover = "哈姆雷特生物群系" },
			},
		},

		{
			name    = "Together",
			label   = "巨人国群落的统治",
			hover   = "巨人国的统治",
			default = 20,
			options = {
				{ description = "禁用", data = 5, hover = "禁用此生物群落" },
				{ description = "主要土地", data = 20, hover = "该生物群落将在玩家开始游戏的主土地上生成" },
				{ description = "大陆", data = 10, hover = "这个生物群落将在另一个大陆上产生。" },
				{ description = "岛屿", data = 15, hover = "这种生物群落将在海洋中的几个独立岛屿上形成" },
			},
		},

		{
			name    = "Moon",
			label   = "月岛群落",
			hover   = "月岛生物群落",
			default = 10,
			options = {
				{ description = "禁用", data = 5, hover = "禁用此生物群落" },
				{ description = "主大陆", data = 20, hover = "该生物群落将在玩家开始游戏的主大陆上生成" },
				{ description = "大陆", data = 10, hover = "这个生物群落将在另一个大陆上产生。" },
				{ description = "岛屿", data = 15, hover = "这种生物群落将在海洋中的几个独立岛屿上形成" },

			},
		},

		{
			name    = "Shipwrecked",
			label   = "海难生物群落",
			hover   = "海难生物群落",
			default = 25,
			options = {
				{ description = "禁用", data = 5, hover = "禁用此生物群落" },
				{ description = "主要土地", data = 20, hover = "该生物群落将在玩家开始游戏的主大陆上生成" },
				{ description = "大陆", data = 10, hover = "这个生物群落将在另一个大陆上产生。" },
				{ description = "岛屿", data = 15, hover = "这种生物群落将在海洋中的几个独立岛屿上形成" },
				{ description = "群岛", data = 25, hover = "该生物群落将形成一个小型的群岛群" },

			},
		},

		{
			name    = "Shipwrecked_plus",
			label   = "海难Plus",
			hover   = "根据Shipwrecked Plus模组生成额外的海难岛",
			options = {
				{ description = "否", data = false, hover = "黄金国度/文明不会被额外生成" },
				{ description = "是", data = true, hover = "黄金国度/文明会被额外生成" },
			},
		},

		{
			name    = "Hamlet",
			label   = "哈姆雷特生物群落",
			hover   = "哈姆雷特生物群落",
			options =
			{


				{ description = "禁用", data = 5, hover = "禁用此生物群落" },
				{ description = "主要土地", data = 20, hover = "该生物群落将在玩家开始游戏的主大陆上生成" },
				{ description = "陆地", data = 10, hover = "这个生物群落将在另一个大陆上产生." },
				{ description = "岛屿", data = 15, hover = "这种生物群落将在海洋中的几个独立岛屿上形成" },
			},
			default = 10,
		},

		{
			name    = "pigcity1",
			label   = "猪伯利矿石交易所",
			hover   = "猪城市 1",
			options =
			{
				{ description = "禁用", data = 5, hover = "这座猪城将不会产生" },
				{ description = "主要土地", data = 10, hover = "这座猪城将在玩家开始游戏的主要大陆上生成" },
				{ description = "陆地", data = 15, hover = "这个猪城将在另一个大陆上诞生." },
				{ description = "岛屿", data = 20, hover = "这座猪城将在海洋中的岛屿上产生" },
			},
			default = 15,
		},

		{
			name    = "pigcity2",
			label   = "皇宫",
			hover   = "猪城市2",
			options =
			{
				{ description = "禁用", data = 5, hover = "这座猪城将不会产生" },
				{ description = "主要土地", data = 10, hover = "这座猪城将在玩家开始游戏的主要大陆上生成" },
				{ description = "陆地", data = 15, hover = "这座猪城将在另一个大陆上诞生。" },
				{ description = "岛屿", data = 20, hover = "这座猪城将在海洋中的岛屿上产生" },
			},
			default = 20,
		},

		{
			name    = "pinacle",
			label   = "峰顶",
			hover   = "生成大鹏鸟巢岛",
			options =
			{
				{ description = "禁用", data = 0, hover = "不会生成此生物群落" },
				{ description = "启用", data = 1, hover = "将在海洋中产生一个小岛，并有一个大鹏巢" },
			},
			default = 1,
		},

		{
			name    = "anthill",
			label   = "蚁丘",
			hover   = "包括：巢穴入口和蚁后区",
			options =
			{
				{ description = "禁用", data = 0, hover = "蚁丘不会被生成" },
				{ description = "启用", data = 1, hover = "蚁丘将被生成" },
			},
			default = 1,
		},

		{
			name    = "pigruins",
			label   = "古代猪人遗迹",
			hover   = "生成包含毁灭季日历的古猪遗址",
			options =
			{
				{ description = "禁用", data = 0, hover = "猪废墟将不会被生成" },
				{ description = "启用", data = 1, hover = "猪废墟将被生成" },
			},
			default = 1,
		},

		{
			name    = "gorgeisland",
			label   = "暴食岛",
			hover   = "生成暴食岛",
			options =
			{
				{ description = "禁用", data = 0, hover = "它不会被生成" },
				{ description = "启用", data = 1, hover = "它将会被生成 " },
			},
			default = 1,
		},

		{
			name    = "frost_island",
			label   = "冰霜岛屿",
			hover   = "它在海洋中创造了一个终年冬天的雪岛，也创造了冰冻的洞穴.",
			default = 10,
			options = {
				{ description = "否", data = 5, hover = "禁用生成" },
				{ description = "是", data = 10, hover = "允许在洞穴和海难世界上生成" },
			},
		},

		{
			name    = "hamlet_caves",
			label   = "哈姆雷特洞穴",
			hover   = "它将在洞穴中形成一个与传统洞穴截然不同的新区域，并在哈姆雷特生物群落中形成新的生物群落",
			options =
			{
				{ description = "禁用", data = 0, hover = "不会生成此生物群落" },
				{ description = "启用", data = 1, hover = "将生成新的洞穴区域" },
			},
			default = 1,
		},

		{
			name    = "monkeyisland",
			label   = "猴子岛",
			hover   = "它将在海洋中产生猴岛",
			options = {
				{ description = "启用", data = 1, hover = "将生成猴岛" },
				{ description = "禁用", data = 0, hover = "猴岛不会生成" },
			},
			default = 1,
		},

		{
			name = "for all worlds",
			label = "所有世界",
			hover = "",
			options =	{
							{description = "", data = 0},
						},
			default = 0,
		},

		{
			name    = "Volcano",
			label   = "火山",
			hover   = "在世界中生成火山，如果你的世界启用了洞穴，请选择洞穴选项(只会影响自定义世界和海难世界）",
			options = {
				{ description = "完整", data = true, hover = "将在内容方面生成一个完整的火山，需要启用洞穴" },
				{ description = "小型", data = false, hover = "将生成不需要启用洞穴的小型火山" },
			},
			default = true,
		},


		{
			name    = "forge",
			label   = "熔炉竞技场",
			hover   = "它将在火山内部形成锻造竞技场。（只会影响自定义世界和海难世界）",
			options = {
				{ description = "启用", data = 1, hover = "将生成锻造竞技场" },
				{ description = "禁用", data = 0, hover = "不会生成锻造竞技场" },
			},
			default = 1,
		},

		{
			name    = "underwater",
			label   = "海底世界",
			hover   = "它将在表面形成通向海底的入口(只会影响自定义、哈姆雷特和海难世界）",
			options = {
				{ description = "启用", data = true, hover = "形成水下生物群落，需要启用洞穴" },
				{ description = "禁用", data = false, hover = "水下生物群落不会繁殖" },
			},
			default = true,
		},

		{
			name    = "windyplains",
			label   = "大风平原群落",
			hover   = "生成来自大风平原(Windy Plains)模组的生物群落",
			options = {
				{ description = "启用", data = true, hover = "启用大风平原生物群落生成" },
				{ description = "禁用", data = false, hover = "禁用大风平原生物群落生成" },
			},
			default = false,
		},

		{
			name    = "greenworld",
			label   = "绿色世界群落",
			hover   = "生成来自绿色世界(Green World)模组的生物群落",
			options = {
				{ description = "启用", data = true, hover = "启用绿色世界生物群落生成" },
				{ description = "禁用", data = false, hover = "禁用绿色世界生物群落生成" },
			},
			default = false,
		},

		{
			name = "OCEAN SETTINGS",
			label = "海洋世界设置",
			hover = "只会影响自定义世界和海难世界",
			options =	{
							{description = "", data = 0},
						},
			default = 0,
		},

		{
			name    = "Waves",
			label   = "海洋-海浪",
			hover   = "大海会产生海浪，海风会使它们变得更危险",
			options =
			{
				{ description = "否", data = false, hover = "" },
				{ description = "是", data = true, hover = "" },
			},
			default = true,
		},

		{
			name    = "whirlpools",
			label   = "漩涡",
			hover   = "海洋产生漩涡",
			options =
			{
				{ description = "否", data = false, hover = "" },
				{ description = "是", data = true, hover = "" },
			},
			default = true,
		},

		{
			name    = "aquaticcreatures",
			label   = "海洋生物",
			hover   = "海洋会随机产生生物",
			options =
			{
				{ description = "否", data = false, hover = "" },
				{ description = "是", data = true, hover = "" },
			},
			default = true,
		},

		{
			name = "kraken",
			label = "海洋-海妖",
			hover = "海难BOSS-海妖",
			default = 1,
			options = {
				{ description = "禁用", data = 0, hover = "" },
				{ description = "启用", data = 1, hover = "" },
			},
		},

		{
			name = "octopusking",
			label = "海洋-章鱼王",
			hover = "Shipwrecked Dubloon Trader",
			default = 1,
			options = {
				{ description = "禁用", data = 0, hover = "" },
				{ description = "启用", data = 1, hover = "" },
			},
		},

		{
			name = "mangrove",
			label = "海洋-红树林",
			hover = "将在海洋上形成红树林生物群落",
			default = 1,
			options = {
				{ description = "禁用", data = 0, hover = "" },
				{ description = "启用", data = 1, hover = "" },
			},
		},

		{
			name = "lilypad",
			label = "海洋-睡莲生态群落",
			hover = "将在海上生成睡莲生态群落，包括河马",
			default = 1,
			options = {
				{ description = "禁用", data = 0, hover = "" },
				{ description = "启用", data = 1, hover = "" },
			},
		},

		{
			name = "shipgraveyard",
			label = "船舶墓地生物群落",
			hover = "将生成船舶墓地生物群落",
			default = 1,
			options = {
				{ description = "禁用", data = 0, hover = "" },
				{ description = "启用", data = 1, hover = "" },
			},
		},

		{
			name = "coralbiome",
			label = "珊瑚生物群落",
			hover = "将产生珊瑚生物群落",
			default = 1,
			options = {
				{ description = "禁用", data = 0, hover = "" },
				{ description = "启用", data = 1, hover = "" },
			},
		},

		{
			name = "GAMEPLAY SETTINGS",
			label = "游戏设置",
			hover = "",
			options =
			{
				{ description = "", data = 0 },
			},
			default = 0,
		},

		{
			name    = "aporkalypse",
			label   = "大灾变",
			hover   = "毁灭季每60天出现一次，如果你不重置废墟内的末日时钟*活动时间:20天*",
			options =
			{
				{ description = "启用", data = true, hover = "" },
				{ description = "禁用", data = false, hover = "" },
			},
			default = true,
		},

		{
			name    = "sealnado",
			label   = "豹卷风",
			hover   = "春天将在海难生物群落生成*豹卷风/旋风*",
			options =
			{
				{ description = "启用", data = true, hover = "" },
				{ description = "禁用", data = false, hover = "" },
			},
			default = true,
		},


		{
			name    = "raftlog",
			label   = "漂流筏和原版相同",
			hover   = "漂流筏和木筏将与海难DLC相同的方式移动",
			options =
			{
				{ description = "是", data = true, hover = "" },
				{ description = "否", data = false, hover = "" },
			},
			default = false,
		},


		{
			name    = "bosslife",
			label   = "BOSS生命值",
			hover   = "决定mod boss的生命值",
			default = 1,
			options = {
				{ description = "25%", data = 0.25, hover = "拥有25%生命值的boss" },
				{ description = "50%", data = 0.50, hover = "拥有50%生命值的boss" },
				{ description = "75%", data = 0.75, hover = "拥有75%生命值的boss" },
				{ description = "100%", data = 1.00, hover = "拥有100%生命值的boss" },
				{ description = "125%", data = 1.25, hover = "拥有125%生命值的boss" },
				{ description = "150%", data = 1.50, hover = "拥有150%生命值的boss" },
				{ description = "200%", data = 2.00, hover = "拥有200%生命值的boss" },
			},
		},

		{
			name = "WEATHER SETTINGS",
			label = "天气设置",
			hover = "可以影响所有的世界",
			options = {
				{ description = "", data = 0 },
			},
			default = 0,
		},

		{
			name    = "flood",
			label   = "雨季：水坑",
			hover   = "春天，水坑会生成并吸引水中的蚊子",
			options =
			{
				{ description = "禁用", data = 5, hover = "关闭" },
				{ description = "海难", data = 10, hover = "只会出现在海难地区" },
				{ description = "全世界", data = 20, hover = "将出现在全世界" },
			},
			default = 10,
		},

		{
			name    = "wind",
			label   = "飓风",
			hover   = "影响速度，使树木和植物倒下，海洋产生更多强大的波浪",
			options =
			{
				{ description = "禁用", data = 5, hover = "禁用" },
				{ description = "海难、哈姆雷特", data = 10, hover = "将只出现在海难和哈姆雷特区域" },
				{ description = "全世界", data = 20, hover = "将出现在全世界" },
			},
			default = 10,
		},

		{
			name    = "hail",
			label   = "冰雹雨",
			hover   = "可以从天空降下冰雹和冰",
			options =
			{
				{ description = "启用", data = true, hover = "" },
				{ description = "禁用", data = false, hover = "" },
			},
			default = true,
		},

		{
			name    = "volcaniceruption",
			label   = "火山喷发",
			hover   = "使火山喷发成为可能",
			options =
			{
				{ description = "禁用", data = 5, hover = "禁用" },
				{ description = "海难", data = 10, hover = "只会出现在海难地区" },
				{ description = "全世界", data = 20, hover = "将影响全世界" },
			},
			default = 10,
		},

		{
			name    = "fog",
			label   = "冬雾",
			hover   = "启用冬季的雾",
			options =
			{
				{ description = "禁用", data = 5, hover = "禁用" },
				{ description = "哈姆雷特地带", data = 10, hover = "只会出现在哈姆雷特区" },
				{ description = "全世界", data = 20, hover = "影响全世界" },
			},
			default = 10,
		},

		{
			name    = "hayfever",
			label   = "花粉病",
			hover   = "在夏天可以预防花粉病",
			options =
			{
				{ description = "禁用", data = 5, hover = "禁用" },
				{ description = "哈姆雷特地带", data = 10, hover = "只会出现在哈姆雷特区" },
				{ description = "全世界", data = 20, hover = "影响全世界" },
			},
			default = 10,
		},

		{
			name = "HUD AJUSTMENT",
			label = "HUD 调整",
			hover = "",
			options = {
				{ description = "", data = 0 },
			},
			default = 0,
		},

		{
			name    = "disable_snow_effectst",
			label   = "禁用雪特效",
			hover   = "禁用雪特效禁用草地上的地面雪特效",
			options =
			{
				{ description = "启用", data = true, hover = "" },
				{ description = "禁用", data = false, hover = "" },
			},
			default = false,
		},

		{
			name    = "removedark",
			label   = "移除黑暗",
			hover   = "移除遗迹里的黑暗效果",
			options =
			{
				{ description = "启用", data = true, hover = "" },
				{ description = "禁用", data = false, hover = "" },
			},
			default = false,
		},

		{
			name    = "automatic_disembarkation",
			label   = "自动下船",
			hover   = "玩家将自动下船",
			options =
			{
				{ description = "否", data = false, hover = "禁用选项卡" },
				{ description = "是", data = true, hover = "自己的额外选项卡(Own Extra TAB)" },
			},
			default = false,
		},

		{
			name = "boatlefthud",
			label = "船HUD（垂直调整）",
			default = 0,
			hover   = "在这里，您可以调整船HUD*表的高度",
			options = {
				{ description = "-100", data = -100 },
				{ description = "-75",  data = -75 },
				{ description = "-50",  data = -50 },
				{ description = "-25",  data = -25 },
				{ description = "0",    data = 0 },
				{ description = "+25",  data = 25 },
				{ description = "+50",  data = 50 },
				{ description = "+75",  data = 75 },
				{ description = "+100", data = 100 },
			},
		},

		{
			name    = "housewallajust",
			label   = "房屋墙壁调整",
			default = 0,
			hover   = "如果墙不在中心，可以调整墙的位置",
			options = {
				{ description = "-7", data = -7 },
				{ description = "-6", data = -6 },
				{ description = "-5", data = -5 },
				{ description = "-4", data = -4 },
				{ description = "-3", data = -3 },
				{ description = "-2", data = -2 },
				{ description = "-1", data = -1 },
				{ description = "0",  data = 0 },
				{ description = "+1", data = 1 },
				{ description = "+2", data = 2 },
				{ description = "+3", data = 3 },
				{ description = "+4", data = 4 },
				{ description = "+5", data = 5 },
				{ description = "+6", data = 6 },
				{ description = "+7", data = 7 },
			},
		},

		{
			name = "CHARACTERS",
			label = "角色调整",
			hover = "",
			options =
			{
				{description = "", data = 0},
			},
			default = 0,
		},

		{
			name    = "disablecharacters",
			label   = "禁用人物",
			hover   = "用于启用或禁用mod中的人物",
			options =
			{
				{ description = "是", data = true, hover = "" },
				{ description = "否", data = false, hover = "" },
			},
			default = false,
		},

		{
			name = "SHARD-DEDICATED",
			label = "多层专用服务器设置",
			hover = "",
			options =
			{
				{ description = "", data = 0 },
			},
			default = 0,
		},

		{
			name    = "enableallprefabs",
			label   = "启用所有预制体",
			hover   = "用于多层世界服务器和测试，如果不是启用的，生成的物品可能会在非混合世界中崩溃",
			options =
			{
				{ description = "是", data = true, hover = "" },
				{ description = "否", data = false, hover = "" },
			},
			default = false,
		},

		{
			name = "tropicalshards",
			label = "多层世界服务器",
			hover = "使用服务器Id预设世界和玩家的连接方式, *ID 1 = 始终为主服务器*",
			--该表是世界ID的数组（其类型为字符串）
			options =
			{
				{ description = "禁用", data = 0, hover = "仅适用于专用服务器" },
				{ description = "2 + 1 + 1", data = 5, hover = "ID=1-2-3-> 2=巨人国+海难 - 1=洞穴 - 1=哈姆雷特" },
				{ description = "1 + 1 + 2", data = 10, hover = "ID=1-2-3-> 1=巨人国 - 1=洞穴 - 2=海难+哈姆雷特" },
				{ description = "1 + 1 + 1 + 1", data = 20, hover = "ID=1-2-3-4-> 1=巨人国 - 1=洞穴 - 1=海难 - 1=哈姆雷特" },
				{ description = "仅大厅", data = 30, hover = "ID=1-2-3-4-5-> 大厅=ID 1 & 1+1+1+1设置*在此设置中巨人国=ID 5*" },
			},
			default = 0
		},

		{
			name    = "lobbyexit",
			label   = "大厅出口",
			hover   = "在巨人国中生成一个返回大厅的传送门 -> 大厅=ID 1",
			options =
			{
				{ description = "启用", data = true, hover = "" },
				{ description = "禁用", data = false, hover = "" },
			},
			default = false,
		},

		{
			name = "OTHER MODS (need mod enabled)",
			label = "更多群落（需要启用模组）",
			hover = "",
			options =	{
							{description = "", data = 0},
						},
			default = 0,
		},

		{
			name = "cherryforest",
			label = "樱花森林",
			hover = "仅在启用下面的mod时有效",
			options =
			{
				{ description = "大陆", data = 10, hover = "把樱桃林放在主大陆上，这样更容易找到它" },
				{ description = "孤岛", data = 20, hover = "生成一个大岛，在海洋中发现" },
				{ description = "小樱花林", data = 30, hover = "也是一个岛屿，比原来的小岛小，但形状更有趣." },
				{ description = "群岛", data = 40, hover = "一个被河流分割成碎片的岛屿，对于基地建设来说，这虽然困难，但很有趣！" },
				{ description = "月岛", data = 50, hover = "樱花林将并入月岛！" },
			},
			default = 20
		},

		{
			name = "LUAJIT",
			label = "进阶玩法",
			hover = "",
			options =
			{
				{description = "", data = 0},
			},
			default = 0,
		},

		{
			name = "luajit",
			label = "迷宫玩法",
			hover = "启用迷宫玩法后首次生成世界将禁用猪遗址入口的房间地图.",
			options =
			{
				{ description = "启用", data = true, hover = "启用" },
				{ description = "禁用", data = false, hover = "关闭" },
			},
			default = false
		},

	}
}
return info
