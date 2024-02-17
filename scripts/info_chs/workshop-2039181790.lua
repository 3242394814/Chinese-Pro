local modname = KnownModIndex:GetModInfo("workshop-2039181790").name
local description = KnownModIndex:GetModInfo("workshop-2039181790").description
description = string.gsub(description,"Version:","版本：")
description = string.gsub(description,"%- \"Under the Weather Pt.1\"","- \"天气之下 第一章\"")
description = string.gsub(description,"Uncompromising Mode increases the risk and reward for those who have mastered Don't Starve Together.","永不妥协给熟练饥荒的玩家带来了新的危险与回报")
description = string.gsub(description,"Latest update features:","最新更新功能：")
description = string.gsub(description,"New spring weather, uncluding storms, tornados, and cave flooding.","春季新天气，包括暴风雨、龙卷风和洞穴水坑。")
description = string.gsub(description,"Alpha Goats will appear in goat herds, to protect their own, and have consistant loot.","阿尔法伏特羊将出现在伏特羊群中，保护它们自己，并拥有一致的战利品。")
description = string.gsub(description,"Krampii will more effectively steal things and do their job.","坎普斯将更有效地偷东西并完成他们的工作。")
description = string.gsub(description,"A ton of misc. changes, ranging from Wickerbottom's books to hounds.","从薇克巴顿的书到猎犬，进行了大量杂项更改。")
description = string.gsub(description,"NEXT UPDATE:","下一次更新:")


-- 汉化文本初版均由由鱼仔master编写

local function SkipSpace()
	return { name = "", label = "", hover = "", options = { { description = "", data = false }, }, default = false, }
end

local function BinaryConfig(name, label, hover, default)
	return {
		name = name,
		label = label,
		hover = hover,
		options = { { description = "开启", data = true, hover = "开启" },
			{ description = "关闭", data = false, hover = "关闭" }, },
		default = default,
	}
end
------------------------------

local info=
{
	name = modname.."(永不妥协)",
	description = description,
	configuration_options =
	{
		------------------------------
		-- Core Gameplay --
		------------------------------
		BinaryConfig("um_storms_over", "龙卷风：降低视觉特效",
			"降低龙卷风接近时的雨水视觉效果的整体强度。", false),
		--Header("Official Beta Compatibility"),
		--BinaryConfig("beta_compatibility", "March QoL Beta", "This will enable proper compatibility for the beta Crafting, Ancient Guardian, and Varg Waves features.", false),

		--Header("模组兼容性"),
		BinaryConfig("worldgenmastertoggle", "主世界开关", "如果开了海难，请务必关闭", true),
		BinaryConfig("um_music", "永不妥协BGM", "如果您在使用客户端音乐模式时崩溃，请禁用此选项。",
			true),
		BinaryConfig("hungry_void", "禁止虚空行走", "防止洞穴卡海什么的，但是如果你需要，可以关闭",
			true),
		BinaryConfig("nofishyincrockpot", "没有活鱼食谱", "如果某个模组需要活鱼来制作某些食谱，请禁用此功能。",
			true),
		SkipSpace(),

		--	Header("开发中"),
		BinaryConfig("ck_loot", "额外的帝王蟹凋落物", "帝王蟹现在根据使用的宝石掉落独特的战利品。\n",
			false),
		SkipSpace(),

		-- Header("核心玩法"),
		BinaryConfig("foodregen", "食物收益随时间缓慢生效", "食物的生命和精神值恢复会变为类似一个缓慢恢复的buff,而不是立马恢复",
			true),
		BinaryConfig("maxhungerdamage", "饥饿损伤最大生命值", "饥饿会在短暂的延迟后造成损失血量上限，也就是黑血。",
			true),
		BinaryConfig("caved", "【重要】洞穴配置", "如果你没开洞穴，同样能够获得相应的东西，如果开了，那就开着。",
			true),
		{
			name = "rne chance",
			label = "随机夜间事件",
			hover = "晚上默认有20%的概率触发夜间事件，游戏前5天必然不会触发。",
			options =
			{
				{ description = "None",     data = 100 },
				{ description = "10%",      data = 0.9 },
				{ description = "20%",      data = 0.8 },
				{ description = "30%",      data = 0.7 },
				{ description = "40%",      data = 0.6 },
				{ description = "50%",      data = 0.5 },
				{ description = "60%",      data = 0.4 },
				{ description = "70%",      data = 0.3 },
				{ description = "80%",      data = 0.2 },
				{ description = "90%",      data = 0.1 },
				{ description = "INSANITY", data = 0 },
			},
			default = 0.8,
		},
		BinaryConfig("compromising_vortex", "非致命暗影漩涡", "暗影漩涡现在会将你传送到某个随机的地方。",
			false),
		BinaryConfig("harder_shadows", "更难的暗影生物", "精神值过低会出现三种强大的新影怪，请注意自己的精神值",
			true),
		BinaryConfig("rat_raids", "鼠潮", "老鼠会定期攻击你的基地", true),
		BinaryConfig("durability", "衣物变化", "衣物会随着耐久值下降而效果下降，比如眼球伞并不会一直100%防雨了",
			false),
		BinaryConfig("sewingkit", "缝纫包改动", "缝纫包能修复的耐久降低，但是能修复更多次", true),
		BinaryConfig("lifeamulet", "重生护符改动", "只有在佩戴重生护符死亡时才能复活，同时饥饿转化生命值的速度更快了",
			true),
		BinaryConfig("longpig", "人肉(长猪肉)", "开启后告密的心需要长猪肉才能制作，长猪肉敲骨架获得",
			true),
		{
			name = "flingo_setting",
			label = "灭火器改动",
			hover = "选择你想要的灭火器形式",
			options =
			{
				{ description = "消耗更多燃料", data = "Fuelmuncher" },
				{ description = "无冰冻效果", data = "Waterballs" },
				{ description = "关闭", data = "Newb" },
			},
			default = "Waterballs",
		},

		{
			name = "fireloot",
			label = "生物燃烧死亡爆炸",
			hover = "当生物被烧死时，它的战利品不会被烧毁，但相对的，该生物死亡时会发生一次爆炸",
			options =
			{
				{ description = "关闭", data = 1 },
				{ description = "爆炸关闭", data = 2 },
				{ description = "爆炸打开", data = 3 },
			},
			default = 3,
		},
		{
			name = "boss_resistance_",
			label = "[已损坏]boss数值调整",
			hover = "Boss的各项数值随着玩家数量做调整",
			options = {
				{
					description = "动态调整",
					hover = "Boss根据受到的攻击的多少调整它们的数值。",
					data =
					1
				},
				{
					description = "静态调整",
					hover = "Boss根据附近的玩家的数量调整它们的数值。",
					data =
					2
				},
				{ description = "关闭", data = 3 },

			},
			default = 3,
		},

		{
			name = "vetcurse",
			label = "老兵诅咒",
			hover = "老兵诅咒可选择难度，默认是需要谈话开启，总是就是出生自带，关闭就不会生成奇怪的巨石",
			options =
			{
				{ description = "默认", data = "default" },
				{ description = "总是", data = "always" },
				{ description = "关闭", data = "off" },
			},
			default = "default",
		},
		BinaryConfig("moon_transformations", "[已损坏]月圆变异", "月圆时一些生物会变化，比如企鹅，比如蜘蛛",
			false),
		SkipSpace(),
		------------------------------
		-- Character Reworks --
		------------------------------
		-- Header("人物改动"),
		------------------------------
		BinaryConfig("funny rat", "老鼠人Winky", "开启后可以选择永不妥协专属人物.", true),
		BinaryConfig("wixie_walter", "Wixie", "启用不妥协模式的 Wixie，犯罪者。", true),
		BinaryConfig("wixie_birds", "Wixie：弹弓削弱", "弹弓无法击中鸟和兔子。", true),
		BinaryConfig("holy fucking shit it's wathom", "Wathom", "开启后可以选择永不妥协专属人物", true),
		BinaryConfig("wathom_max_dmg", "Wathom: 伤害上限", "wathom的伤害上限为600", true),
		{
			name = "wathom_ampvulnerability",
			label = "Wathom: 受到更多伤害倍率",
			hover = "Wathom会在强化时受到更多的伤害",
			options =
			{
				{ description = "5x (默认)", data = 5 },
				{ description = "4x", data = 4 },
				{ description = "3x", data = 3 },
				{ description = "2x", data = 2 },
			},
			default = 5,
		},
		{
			name = "wathom_armordamage",
			label = "Wathom:护甲伤害优先级",
			hover = "Wathom可以承受增加的伤害，如果你的护甲伤害被忽略的话选择这个",
			options =
			{
				{ description = "包含护甲", data = true, hover = "用当前伤害倍率×即将到来的伤害，这里的伤害倍率是上面那个选项" },
				{ description = "不包含护甲", data = false, hover = "将造成的伤害乘以当前伤害倍率。" },
			},
			default = true,
		},
		BinaryConfig("wathom_undeath", "Wathom:不死", "当他在肾上腺素高的情况下死亡时，启用Wathom不死机制。",
			true),
		BinaryConfig("willow", "薇洛", "薇洛的打火机使用时不会掉落耐久度，当她拿着它时，她会在受到阴影攻击时会产生爆炸。",
			true),
		BinaryConfig("willow insulation", "薇洛：实验性隔热",
			"薇洛的隔热度在夏季调整为 120，在冬季调整为 -120。", false),
		BinaryConfig("bernie_buffs", "薇洛: 伯尼 Buffs", "伯尼对阴影有 80% 的抵抗力\n按住伯尼可以防止阴影受到攻击。",
			true),
		BinaryConfig("warly_food_taste_", "沃利", "沃利可以从食物中获得更多的属性，就像单人游戏一样。 然而，他能记住三天的食物，而不是两天。",
			true),
		BinaryConfig("warly_butcher_", "实验性的沃利击杀特性",
			"沃利是一名合格的屠夫，他有时可以在击杀时获得额外凋落物。",
			false),
		BinaryConfig("waxwell", "老麦", "老麦又再次获得他旧的经典宝典！", true),
		--BinaryConfig("wolfgang", "Improved/Balanced Wolfgang", "Wolfgang gains new perks and downsides. Read the patch notes included in the mod folder or workshop for details.", false),
		BinaryConfig("wigfrid", "女武神", "削弱战斗吸血能力", true),
		BinaryConfig("wolfgang", "大力士", "沃尔夫冈根据饥饿等级获得力量。持续时间越长，饥饿流失越多。",
			false),
		BinaryConfig("winonaworker", "女工：更快的工作", "薇诺娜现在根据她的饥饿等级来调整她的工作/采摘效率，以及工具/武器的耐用性。采取行动时减少饥饿值",
			true),
		BinaryConfig("winonawackycats", "女工：投石器", "不再再生，生命值降低，34 AOE伤害", false),
		BinaryConfig("winona_gen_", "女工：发电机", "只允许女工使用发电机", true),
		BinaryConfig("winona_portables_", "女工：便携式建筑", "使女工的建筑可移植，并将工具箱改造成装置容器",
			true),
		{
			name = "wortox",
			label = "小恶魔",
			hover = "小恶魔有不同的设定改变了他的性格。",
			options =
			{
				{ description = "SHOT", data = "SHOT", hover = "灵魂会随着时间缓慢恢复" },
				{ description = "经典", data = "UMNERF", hover = "最大生命值下降，击杀蝴蝶蜜蜂等生物不再掉落灵魂" },
				{ description = "Apollo\'s", data = "APOLLO", hover = "灵魂治愈的时间越来越少。 吃灵魂造成的理智损失增加。\n增加地图跳跃范围。 食品惩罚增加到 75%" },
				{ description = "原版", data = "off" },
			},
			default = "UMNERF",
		},
		{
			name = "wicker_inv_regen_",
			label = "老奶奶:书本耐久回复",
			hover = "配置薇克巴顿的书本如何恢复耐久",
			options = {
				{
					description = "修改书架制作配方",
					data = "inv",
					hover = "现在需要4块木板，而不是2个活木"
				},
				{
					description = "不可恢复",
					data = "noregen",
					hover = "禁止恢复耐久"
				},
				{
					description = "书架",
					data = "vanilla",
					hover = "像原版一样"
				}
			},
			default = "inv",

		},
		BinaryConfig("wickerbottom", "老奶奶:读书", "老奶奶和麦斯威尔在精神值低的时候不能再读书",
			true),
		BinaryConfig("on tentacles", "老奶奶:触手书", "老奶奶的触手书召唤的是友好的触手，但这些触手会随着时间降低生命值，且死亡后没有战利品",
			true),
		BinaryConfig("applied horticulture", "老奶奶:简编园艺学:", "现在需要1片叶子肉而不是5颗种子",
			true),
		BinaryConfig("lunar grimoire", "老奶奶:月相魔典", "\"月相魔典\" 现在只会影响你的周围。", true),
		BinaryConfig("apicultural notes", "老奶奶:养蜂笔记", "\"养蜂笔记\" 现在让你周围的蜂箱被填满。",
			true),
		BinaryConfig("the angler", "老奶奶:垂钓者生存指南",
			"“钓鱼者的生存指南”现在需要2个硬物浮标，而不是2个木球浮标。", true),
		BinaryConfig("wanda_nerf", "旺达", "削弱了旺达警告表的伤害以及第二次机会表的冷却时间", true),
		BinaryConfig("woodie_skilltree", "伍迪 技能树", "对伍迪的技能树进行了一些更改，以增加权衡并强化未充分利用的技能。", true),
		BinaryConfig("wormwood_extrafiredmg", "植物人：火焰伤害", "植物人受到的火焰伤害由1.25倍提高至1.75倍",
			true),
		BinaryConfig("wormwood_trapbuffs", "植物人:荆棘陷阱buff",
			"荆棘陷阱不会对玩家造成伤害，当植物人开花时会自动重置陷阱，并调整为一次制作时收获多个。",
			true),
		BinaryConfig("horticulture, expanded", "老奶奶:园艺学扩展版",
			"现在能作用 20 株植物，而不是 15 株。", true),
		BinaryConfig("lux aeterna", "老奶奶:永恒之光之复兴",
			"永恒之光 和 永恒之光之复兴 现在持续更长时间。", true),
		BinaryConfig("wormwood_plants", "植物人：精神", "植物人挖掘植物时将会扣除更多的精神值", true),
		BinaryConfig("wendy", "温蒂", "阿比盖尔不再能够为温蒂提供易伤的效果", true),
		BinaryConfig("wx78", "机器人", "不再从闪电中恢复电量", true),
		SkipSpace(),
		------------------------------
		-- Weather --
		------------------------------
		-- Header("天气"),
		------------------------------
		{
			name = "weatherhazard_autumn",
			label = "秋季特殊天气",
			hover = "新的秋季天气默认出现在第二年。 这目前只包括有毒的青蛙。",
			options =
			{
				{ description = "第一年", data = 5 }, --lowered in case someone has a diff starting season, or wants to suffer.
				{ description = "第二年", data = 70 },
				{ description = "第三年", data = 120 }, --idk math yell at me if wrong
			},
			default = 70,
		},
		{
			name = "weatherhazard_winter",
			label = "冬季特殊天气",
			hover = "默认情况下，新的冬季天气出现在第一年",
			options =
			{
				{ description = "第一年", data = 5 },
				{ description = "第二年", data = 70 },
				{ description = "第三年", data = 120 },
			},
			default = 5,
		},
		{
			name = "weatherhazard_spring",
			label = "春季特殊天气",
			hover = "默认情况下，新的春季天气出现在第一年。",
			options =
			{
				{ description = "第一年", data = 5 },
				{ description = "第二年", data = 70 },
				{ description = "第三年", data = 120 },
			},
			default = 5,
		},
		BinaryConfig("um_storms", "龙卷风", "龙卷风席卷大地，绑架了你所有的奶牛。", true),
		{
			name = "um_storms_performance",
			label = "龙卷风：减少性能影响",
			hover =
			"简化一些龙卷风与世界的交互，以帮助降低低端配置机器的性能。",
			options = {
				{ description = "关闭", data = "off", hover = "龙卷风无所不能" },
				{
					description = "减少影响",
					data = "reduced",
					hover =
					"简化交互，在屏幕外不起作用。"
				},
				{ description = "最小影响", data = "minimal", hover = "删除所有直接的非玩家交互。" },
			},
			default = "off"
		},
		{
			name = "weatherhazard_summer",
			label = "新的夏季天气的开始日期",
			hover = "默认情况下，新夏季天气发生在第一年。",
			options =
			{
				{ description = "第一年",  data = 22 },
				{ description = "第二年", data = 70 },
				{ description = "第三年",  data = 120 },
			},
			default = 22,
		},
		BinaryConfig("snowstorms", "暴风雪", "如果玩家不戴护眼，暴风雪会影响他们的速度和视力。暴风雪也会导致雪在建筑物上堆积。",
			true),
		BinaryConfig("hayfever_disable", "[已损坏]花粉热", "哈姆雷特里的花粉热，会使人打喷嚏，可预防", false),
		BinaryConfig("winter_burning", "冬季更难起火", "冬天使它燃烧起来需要更多的时间，并且燃烧得更快。",
			true),
		BinaryConfig("heatwaves", "热浪",
			"热浪是夏季暴风雪的对应物，虽然它们本身并没有太大作用，但除了温度升高之外，它们与烟雾和荨麻相互作用。",
			true),
		--BinaryConfig("acidrain", "Acid Rain", "After the First Year, Toadstool will grow poisionous mushtrees aboveground and pollute the world, making the rain acidic.", true),
		BinaryConfig("hotcaves", "过热洞穴", "在夏天，洞穴的温度足以让你在没有任何装备的情况下过热。",
			true),
		BinaryConfig("pyrenettles", "荨麻丛", "柴堆荨麻是一种新的入侵植物，随着超高的温度生长。",
			true),

		BinaryConfig("smog", "烟雾",
			"夏季燃烧的植物会释放出大量的烟雾。意在与热浪相互作用。", true),
		BinaryConfig("maxtempdamage", "极端温度的最大生命值损害", "过冷和过热会在短暂延迟后造成血量上限值伤害。",
			true),

		--[[ This section disabled until we actually use it.
	------------------------------
	-- Gamemode --
	------------------------------
		-- Header("Gamemode"),
	------------------------------
		{
			name = "gamemode",
			label = "Mode",
			hover = "Currently, there are no other modes.", --"Choose gamemode. 1) Original Uncompromising version (default settings). 2) Mod is enabled after first Fuelweaver is defeated. 3) Choose custom settings.",
			options =
			{
				{description = "Uncompromising", data = 0}, -- TODO: When this is selected, disable the below ones (gray them out)
				--{description = "Custom", data = 2}, --TODO: On custom, enable editing the below settings
			},
			default = 0,
		},
		
	]]

		------------------------------
		-- World Gen --
		------------------------------
		-- Header("世界配置"),
		------------------------------
		BinaryConfig("hoodedforest", "连帽森林", "连帽森林取代了月台森林，拥有全新的探索内容，包括一个新的 Boss！",
			true),
		{
			name = "ghostwalrus",
			label = "海象陷阱",
			hover = "在海象巢穴附近会生成一些陷阱",
			options =
			{
				{ description = "打开", data = "enabled" },
				{ description = "打开（不重新生成）", data = "norespawn", hover = "陷阱不会随时间重新生成" },
				{ description = "关闭", data = "disabled" },
			},
			default = "enabled",
		},
		BinaryConfig("rice", "水稻", "水稻在沼泽的池塘里生成。", true),
		BinaryConfig("trapdoorspiders", "活动石板蜘蛛", "草原上的草里，萌新杀手，有蜘蛛战士的效果",
			true),


		------------------------------
		-- Rats --
		------------------------------
		-- Header("老鼠"),
		------------------------------
		{
			name = "ratgrace",
			label = "首次鼠潮时间",
			hover = "让老鼠无法入侵的最小宽限期！",
			options =
			{
				{ description = "随时", data = 1 },
				{ description = "15天", data = 15 },
				{ description = "30天", data = 30 },
				{ description = "45天", data = 45 },
				{ description = "60天", data = 60 },
			},
			default = 30,
		},
		{
			name = "rattimer",
			label = "鼠潮间隔",
			hover = "下一波老鼠来临的间隔时间",
			options =
			{
				{ description = "随时", data = 10 },
				{ description = "一半", data = 4800 },
				{ description = "默认", data = 9600 },
				{ description = "两倍", data = 14400 },
			},
			default = 9600,
		},
		{
			name = "ratsnifftimer",
			label = "鼠潮分计时器检测时间",
			hover = "检查基地脏乱程度的频率。",
			options =
			{
				{ description = "1分钟", data = 60 },
				{ description = "2分钟", data = 120 },
				{ description = "3分钟", data = 180 },
				{ description = "4分钟", data = 240 },
				{ description = "8分钟", data = 480 }
			},
			default = 180,
		},
		BinaryConfig("itemcheck", "项目分数", "可装备物品和鼠饵物品增加“老鼠分”值。", true),


		-----------------------------
		-- Items and Structures--
		-----------------------------
		-- Header("物品和建筑"),
		-----------------------------
		BinaryConfig("ac_does_ac", "空调", " 空调就像一个吸热篝火，在小范围内冷却并去除周围的雾。", false),
		BinaryConfig("compostoverrot", "堆肥代替腐烂物", "堆肥替代了大多数物品制作材料中的腐烂物。\n请记住堆肥桶被强化了。强心针需要红蘑菇制作。", true),
		BinaryConfig("cooldown_orangestaff_", "懒人手杖修改", "懒人手杖修改不再具有耐久性，而是具有冷却时间，就像 Wanda 的手表一样。",
			false),
		BinaryConfig("townportal_rework", "懒人塔修改", "通过自动收获附近的植物和物体，在单人游戏中变得有用。",
			true),
		BinaryConfig("telestaff_rework", "传送法阵修改", "您现在可以选择要传送到的焦点。 现在花费 3 颗紫色宝石而不是黄金。\n法杖的使用次数翻倍。",
			true),
		BinaryConfig("no4crafts", "没有4种配料的食谱", "将所有4种配料的配方改为使用3种。", false),
		BinaryConfig("scaledchestbuff", "龙鳞宝箱", "启用此选项会将它扩大到25个格子。在已经存在世界中切换选项配置可能会导致崩溃。",
			true),
		BinaryConfig("scalemailbuff", "龙鳞甲", "产生3个友好的岩浆虫朋友来帮助你战斗", true),
		BinaryConfig("canedurability", "手杖需要耐久", "手杖会像扇子衣物一样失去耐久力，但是击杀海象100%会掉象牙。",
			false),

		{
			name = "gotobed",
			label = "睡觉Buff",
			hover = "睡眠可以治愈血量上限损失。 遮阳棚饥饿消耗现在是帐篷的 50%，而不是 33%。",
			options =
			{
				{ description = "默认", data = "default", hover = "仅在低于 25% 时治愈最大健康损失." },
				{ description = "Legacy", data = "legacy", hover = "治疗最大生命值损失，无论百分比如何." },
				{ description = "关闭", data = false },
			},
			default = "default",
		},
		BinaryConfig("passibleimpassibles", "移除碰撞体积", "消除雕像等物品的碰撞，但不包括食人花",
			true),
		{
			name = "sleepingbuff",
			label = "睡眠的恢复速度",
			hover = "增加睡眠给予统计/吸取饥饿的速度。默认1.5倍",
			options =
			{
				{ description = "2倍", data = 2 },
				{ description = "1.5倍", data = 1.5 },
				{ description = "默认", data = 1 },
			},
			default = 1.5,
		},
		{
			name = "pocket_powertrip",
			label = "衣物格子",
			hover = "给一些未充分利用的衣服口袋。",
			options =
			{
				{ description = "打开", data = 1 },
				{ description = "打开(背包)", data = 2, hover = "有口袋的物品就像背包一样。不能放入箱子." },
				{ description = "关闭", data = 0 },
			},
			default = 1,
		},
		BinaryConfig("insul_thermalstone", "暖石修改", "热石现在的隔热效果更差，但是继承了一些衣服的隔热效果。",
			true),
		BinaryConfig("uncool_chester", "冰切斯特修改", "冰切斯特将不再冷却暖石.", true),
		{
			name = "electricalmishap",
			label = "带电武器的改动",
			hover = "控制电子武器(电蚊拍和晨星)",
			options =
			{
				{ description = "改动1", data = 1, hover = "武器可以用闪电和发电机充电。" },
				{ description = "改动2", data = 2, hover = "武器可以用一些与电力相关的物品充能。" },
				{ description = "关闭", data = 0 },
			},
			default = 1,
		},
		BinaryConfig("hambatnerf", "火腿棒修改", "腐烂速度更快，最小伤害更低。", true),
		BinaryConfig("lifeinjector_rework", "强心针修改", "强心针能恢复你最大生命损失的50%。", true),
		BinaryConfig("cookiecutterhat", "饼干切割机帽", "现在可以反弹攻击者，是其受到伤害", true),
		BinaryConfig("beefalo_nerf", "骑乘皮伏楼牛", "骑牛时，牛不再承受全部伤害，而是各自一半。",
		false),


		-----------------------------
		-- Food --
		-----------------------------
		-- Header("食物"),
		-- Header("烹饪相关"),
		BinaryConfig("newrecipes", "永不妥协专属料理", "永不妥协专属食谱", true),
		BinaryConfig("crockpotmonstmeat", "全新怪物肉", "一个新的怪物肉体系", true),
		BinaryConfig("generalcrockblocker", "填充物削弱", "如树枝，冰，蝴蝶翅膀，和其他不可食用的东西会导致失败料理",
			true),
		BinaryConfig("icecrockblocker", "雪糕", "雪糕可以防止大量使用冰，特别是在不需要冰的炖菜中。",
			true),


		-- Header("料理削弱"),
		BinaryConfig("meatball", "肉丸", "肉丸的饥饿值恢复由62.5降低为50", true),
		{
			name = "perogi",
			label = "饺子",
			hover = "饺子需要更多的菜度",
			options =
			{
				{ description = "1.5 菜度", data = 1.5 },
				{ description = "2 菜度", data = 2 },
				{ description = "1 菜度", data = 1 },
				{ description = "0.5菜度", data = 0.5 },
			},
			default = 1.5,
		},
		BinaryConfig("icecream_buff", "冰淇淋", "冰激凌现在恢复100理智，但是恢复的很慢。", true),
		BinaryConfig("goodies_nerf", "好东西 食物类型更改", "更多可用的好东西 类型被更改为素食或通用。", true),
		BinaryConfig("farmfoodredux", "料理属性改动", "改变了一些料理的三维恢复", true),
		BinaryConfig("sr_foodrebalance", "鱼类料理平衡", "调整了几种以鱼为基础的食物的统计数据.",
			true),


		-- Header("食物调整"),
		BinaryConfig("no_winter_growing", "冬季不生长",
			"使一些农作物，例如海带和石果在冬天无法生长。", true),
		BinaryConfig("monstersmallmeat", "小怪物肉", "像蜘蛛这样的小生物会掉落小怪物而不是怪物肉",
			true),
		BinaryConfig("nowintergrowing", "冬季种植", "使一些食物来源如海带和石果在冬天不生长", true),
		BinaryConfig("beebox_nerf", "蜂箱", "蜜蜂箱最多只能放2只蜜蜂。", true),
		{
			name = "more perishing",
			label = "食物腐烂速度",
			hover = "食物腐烂得更快。就这么简单。",
			options =
			{
				{ description = "默认", data = 1 },
				{ description = "1.5x", data = 1.5 },
				{ description = "2x", data = 2 },
				{ description = "2.5x", data = 2.5 },
				{ description = "3x", data = 3 },
			},
			default = 1.5,
		},
		BinaryConfig("butterflywings_nerf", "蝴蝶翅膀", "蝴蝶翅膀被削弱，不再是廉价的治疗", true),
		BinaryConfig("horriblefood", "更多可怕的食物","更多的食物被认为是可怕的食物", true),
		BinaryConfig("rawcropsnerf", "食材削弱", "农作物的基本价值被削弱。", true),
		BinaryConfig("seeds", "种子", "种子的饥饿值恢复降低了。", true),
		{
			name = "monster_eggs",
			label = "怪物蛋",
			hover = "鸟类现在在吃怪物肉时会产下怪物蛋。怪物蛋类似于蛋，但具有可配置的怪物值。",
			options =
			{
				{ description = "关闭", data = 0 },
				{ description = "0.25怪物度", data = 0.25 },
				{ description = "0.5怪物度", data = 0.5 },
				{ description = "1怪物度", data = 1 },
				{ description = "1.5怪物度", data = 1.5 },
			},
			default = 1,
		},
		-----------------------------
		-- Monsters --
		-----------------------------

		-- Header("怪物"),

		-- Header("新的猎犬"),
		BinaryConfig("lightninghounds", "闪电狗", "闪电猎犬是猎犬波的一部分。", true),
		BinaryConfig("magmahounds", "熔岩狗", "熔岩猎犬是猎犬波的一部分。", true),
		BinaryConfig("sporehounds", "毒狗", "毒猎犬是猎犬波的一部分。", true),
		BinaryConfig("glacialhounds", "冰冻狗", "冰冻猎犬是猎犬波的一部分。", true),


		-- Header("更难的猎犬"),
		BinaryConfig("firebitehounds", "火焰伤害", "红色猎犬攻击时会让玩家着火.", true),
		BinaryConfig("frostbitehounds", "冰冻伤害", "蓝色猎犬攻击时会冻结玩家。", true),


		-- Header("猎犬攻击频率"),
		BinaryConfig("lategamehoundspread", "降低袭击频率", "启用这个会降低游戏后期的频率，所以猎犬仍然是一个威胁，但不会令人讨厌。",
			true),

		--[[ This section has overlap with a vanilla update.
		BinaryConfig("vargwaves", "Vargs in Hound Waves", "In the lategame, vargs will accompany hounds in houndwaves.", true),
		{
			name = "vargwaves grace",
			label = "Varg Grace Period.",
			hover = "Vargs cannot spawn in hound waves until this amount of days have passed.",
			options =
			{
				{description = "No grace period.", data = 0},
				{description = "20 days", data = 20},
				{description = "40 days", data = 40},
				{description = "60 days", data = 60},
				{description = "70 days", data = 70},
				{description = "80 days", data = 80},
				{description = "100 days", data = 100},
				{description = "120 days", data = 120},
				{description = "140 days", data = 140},
				{description = "160 days", data = 160},
				{description = "180 days", data = 180},
				{description = "200 days", data = 200},
			},
			default = 100,
		},
		{
			name = "vargwaves delay",
			label = "Delay Between Varg Spawns.",
			hover = "Vargs cannot spawn before this amount days have passed since the last Varg spawn.",
			options =
			{
				{description = "No grace period.", data = 0},
				{description = "5 days", data = 5},
				{description = "10 days", data = 10},
				{description = "15 days", data = 15},
				{description = "20 days", data = 20},
				{description = "25 days", data = 25},
				{description = "30 days", data = 30},
			},
			default = 15,
		},
	]]

		-- Header("深渊蠕虫"),
		BinaryConfig("depthseels", "电蠕虫", "带电的蠕虫在冬天和春天加入洞穴袭击。", true),
		BinaryConfig("depthsvipers", "毒蠕虫", "带毒的蠕虫会在夏天和秋天加入洞穴袭击", true),


		-- Header("蝙蝠"),
		--BinaryConfig("hardbatilisks", "更难的蝙蝠", "生命值从50增加到75，且战利品掉落更少", true),
		BinaryConfig("adultbatilisks", "大蝙蝠", "他们更难，但是平均来说有更好的战利品。", true),
		BinaryConfig("batspooking", "蝙蝠刷新机制", "再生的时候立刻出现所有的蝙蝠，而不是慢慢出来。",
			true),


		-- Header("蜘蛛"),
		BinaryConfig("alljumperspiders", "普通蜘蛛跳跃攻击", "正常的蜘蛛跳跃，就像蜘蛛战士一样。",
			true),
		BinaryConfig("spiderwarriorcounter", "蜘蛛战士反击", "战斗蜘蛛(和深海生物)在受到攻击时会进行反击(同时降低生命值到300)。",
			true),


		-- Header("新的远古怪物"),
		BinaryConfig("trepidations", "远古恐怖巨蛛", "启用这个功能可以让恐惧在废墟的大厅里漫游，寻找心灵脆弱的人。",
			true),
		BinaryConfig("pawns", "远古发条士兵", "启用此功能可以让小东西在洞穴深处巡逻，引起愚蠢和迷失者不必要的注意。",
			true),
		BinaryConfig("nodespawn_trepidation", "更艰难的爬行恐惧",
			"启用此功能，梦魇恐惧在远古暴乱停止后不再自动消失。",
			false),
		BinaryConfig("amalgams", "发条三合一", "合而为一？", true),



		-- Header("其他怪物"),
		BinaryConfig("pigking_guards", "猪王护卫队", "猪人守卫发现任何不对劲就揍你", true),
		BinaryConfig("_bushcrabs", "灌木蜘蛛", "在挖掘浆果丛时，灌木蜘蛛会伏击玩家。", true),
		BinaryConfig("desertscorpions", "蝎子", "蝎子在沙漠中肆虐。它们会在白天从沙漠中的沙漠草皮上生成。",
			true),
		BinaryConfig("pinelings", "树桩怪", "自然地发生在现有的老树桩上。", true),
		BinaryConfig("pollenmites", "花粉螨", "花粉螨在春天生成，并迅速在附近地区滋生。", false),
		BinaryConfig("maxhphitters", "最大生命伤害", "有些怪物会造成最大HP伤害，如果你的mods也有问题，请关闭它。",
			true),
		BinaryConfig("harder_krampus", "更难的坎普斯", "坎普斯现在有了一个新的击退攻击。", true),
		BinaryConfig("noauradamage_butterfly", "蝴蝶免疫AOE", "蝴蝶免疫AoE伤害，比如投石机和阿比盖尔。",true),

		-- Header("标准生物"),
		BinaryConfig("angrypenguins", "领地企鹅", "企鹅会积极的捍卫自己的土地。", true),
		BinaryConfig("harder_pigs", "更强的猪", "猪有一个新的反击和冲锋攻击。", true),
		BinaryConfig("angry_werepigs", "疯猪", "疯猪优先攻击而不是进食。", true),
		BinaryConfig("mermtweaks", "人鱼调整", "- 普通人鱼现在可以在冬天离开家园，人鱼守卫重生速度较慢。",
			true),

		BinaryConfig("harder_walrus", "更难的海象", "海象有反击，可以投陷阱。", true),
		BinaryConfig("harder_beefalo", "更难的牛", "牛牛会冲撞", true),
		BinaryConfig("harder_koalefants", "更难的大象", "拥有全新的攻击和双倍的生命值", true),
		BinaryConfig("hungryfrogs", "饥饿的青蛙", "青蛙吃任何留在地板上的东西。", true),
		BinaryConfig("cowardfrogs", "青蛙不吃芝士蛋糕", "青蛙会逃离芝士蛋糕", true),
		BinaryConfig("toads", "毒青蛙", "毒青蛙在第二个秋天取代青蛙，死亡时释放毒云。", true),
		BinaryConfig("fiendforcedmetodothis", "火药猴调整", "攻击更快，生命值更低，开炮更频繁。", true),
		BinaryConfig("sharpshooter_monkeys", "神枪手火药猴", "事实上，火药猴会瞄准任何他们认为“有趣”的射击对象。", true),


		-- Bosses --
		BinaryConfig("mother_goose", "鹅妈妈", "鹅妈妈现在会在春天攻击玩家", true),
		{
			name = "mother_goose_spawn",
			label = "鹅妈妈下蛋时间",
			hover = "鹅妈妈可以下蛋的年份。",
			options =
			{
				{ description = "第1年 (默认)", data = 26 },
				{ description = "第2年", data = 26 * 1.5 }, --maybe???
				{ description = "第3年", data = 26 * 2.5 } --???
			},
			default = 26,
		},
		BinaryConfig("wiltfly", "时令龙蝇", "龙蝇现在将在夏天离开她的地盘，攻击玩家，类似于单机版巨人国DLC的龙蝇。",
			true),
		{
			name = "wiltfly_spawn",
			label = "时令龙蝇出现时间",
			hover = "时令龙蝇会出现的时间",
			options =
			{
				{ description = "第1年 (默认)", data = 26 },
				{ description = "第2年", data = 26 * 2 }, --maybe???
				{ description = "第3年", data = 26 * 3 } --???
			},
			default = 26,
		},


		--巨兽和boss
		BinaryConfig("harder_spider_queen", "更难的蜘蛛女王", "蜘蛛女王偶尔会吐出诱捕玩家的网球。",
			true),
		BinaryConfig("harder_deerclops", "巨鹿变异", "三种不同的巨鹿", true),
		BinaryConfig("disable_megaflare", "禁用敌对照明弹", "敌对照明弹不再生成巨鹿。", true),
		BinaryConfig("harder_moose", "更难的麋鹿鹅", "麋鹿鹅更难打就对了", true),
		BinaryConfig("harder_bearger", "更难的熊獾", "启用这个选项会让熊大的战斗包含更多的攻击，并且会让熊大更积极地寻找你。",
			true),
		BinaryConfig("harder_leifs", "更难的树精", "启用此选项会让树精执行树根攻击、强制击退和召唤树桩怪。",
			true),


		--领地boss
		BinaryConfig("harder_lavae", "岩浆虫爆炸", "熔岩死亡后会留下爆炸糊，破坏墙体", true),
		BinaryConfig("harder_beequeen", "更难的蜂后", "蜂后现在有AOE附加到她的主要攻击。", true),
		BinaryConfig("rework_minotaur", "远古守护者", "[当前已改动]远古守护者的战斗被重新制作，包括更多的攻击",
			true),
		BinaryConfig("reworked_eyes", "双子魔眼", "恐怖之眼和双子魔眼有新的攻击，灵感来自他们的Terraria同行。",
			true),
		BinaryConfig("reworked_ck", "帝王蟹", "螃蟹王改变了他的主要攻击，移除了冻结并增加了一些机制。",
			true),
		BinaryConfig("changed_shadow_pieces", "暗影三基佬",
			"暗影主教的攻击方式不同，暗影骑士的数值也发生了变化。", true),

		--boss生命值
		{
			name = "Ancient Fuelweaver's Health",
			label = "远古织影者的血量",
			hover = "根据您的喜好调整远古织影者的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Ancient Guardian's Health",
			label = "远古守护者的血量",
			hover = "根据您的喜好调整远古守护者的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Antlion's Health",
			label = "蚁狮的血量",
			hover = "根据您的喜好调整蚁狮的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 2000 },
				{ description = "降低 (/2)",  data = 3000 },
				{ description = "默认",       data = 6000 },
				{ description = "更高 (x1.5)", data = 9000 },
				{ description = "最高 (x2)",  data = 12000 },
				{ description = "不妥协 (x3)",   data = 18000 } },
			default = 6000
		},
		{
			name = "Bearger's Health",
			label = "熊獾的血量",
			hover = "根据您的喜好调整熊獾的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Bee Queen's Health",
			label = "蜂后的血量",
			hover = "根据您的喜好调整蜂后的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Celestial Champion's Health",
			label = "天体英雄的血量",
			hover = "根据您的喜好调整天体影响的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Crab King's Health",
			label = "帝王蟹的血量",
			hover = "根据您的喜好调整帝王蟹的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 5000 },
				{ description = "降低 (/2)",  data = 10000 },
				{ description = "默认",       data = 20000 },
				{ description = "更高 (x1.5)", data = 30000 },
				{ description = "最高 (x2)",  data = 40000 },
				{ description = "不妥协 (x3)",   data = 60000 } },
			default = 20000
		},
		{
			name = "Deerclops's Health",
			label = "独眼巨鹿的血量",
			hover = "根据您的喜好调整独眼巨鹿的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Dragonfly's Health",
			label = "龙蝇的血量",
			hover = "根据您的喜好调整龙蝇的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Eye of Terror's Health",
			label = "恐怖之眼的血量",
			hover = "根据您的喜好调整恐怖之眼的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Frostjaw's Health",
			label = "冰鲨的血量",
			hover = "根据您的喜好调整冰鲨的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Hooded Widow's Health",
			label = "黑寡妇蜘蛛的血量",
			hover = "根据您的喜好调整黑寡妇蜘蛛的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Klaus's Health",
			label = "克劳斯的血量",
			hover = "根据您的喜好调整克劳斯的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 2500 },
				{ description = "降低 (/2)",  data = 5000 },
				{ description = "默认",       data = 10000 },
				{ description = "更高 (x1.5)", data = 15000 },
				{ description = "最高 (x2)",  data = 20000 },
				{ description = "不妥协 (x3)",   data = 30000 } },
			default = 10000
		},
		{
			name = "Lord of the Fruit Flies's Health",
			label = "果蝇王的血量",
			hover = "根据您的喜好调整果蝇王的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Malbatross's Health",
			label = "邪天翁的血量",
			hover = "根据您的喜好调整邪天翁的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Misery Toadstool's Health",
			label = "悲惨的毒菌蟾蜍的血量",
			hover = "根据您的喜好调整悲惨的毒菌蟾蜍的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Moonmaw Dragonfly's Health",
			label = "月光龙蝇的血量",
			hover = "根据您的喜好调整月光龙蝇的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Moose/Geese's Health",
			label = "麋鹿鹅的血量",
			hover = "根据您的喜好调整麋鹿鹅的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Mother Goose's Health",
			label = "鹅妈妈的血量",
			hover = "根据您的喜好调整鹅妈妈的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Nightmare Werepig's Health",
			label = "噩梦猪人的血量",
			hover = "根据您的喜好调整噩梦猪人的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Reanimated Skeleton's Health",
			label = "复活的骨架的血量",
			hover = "根据您的喜好调整复活的骨架的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Shadow Pieces's Health",
			label = "暗影三基佬的血量",
			hover = "根据您的喜好调整暗影三基佬的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Spider Queen's Health",
			label = "蜘蛛女王的血量",
			hover = "根据您的喜好调整蜘蛛女王的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Toadstool's Health",
			label = "蟾蜍的血量",
			hover = "根据您的喜好调整蟾蜍的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Treeguard's Health",
			label = "树精守卫的血量",
			hover = "根据您的喜好调整树精守卫的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 750 },
				{ description = "降低 (/2)",  data = 1500 },
				{ description = "默认",       data = 3000 },
				{ description = "更高 (x1.5)", data = 4500 },
				{ description = "最高 (x2)",  data = 6000 },
				{ description = "不妥协 (x3)",   data = 9000 } },
			default = 3000
		},
		{
			name = "Twins of Terror's Health",
			label = "双子魔眼的血量",
			hover = "根据您的喜好调整双子魔眼的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Varg's Health",
			label = "座狼的血量",
			hover = "根据您的喜好调整座狼的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},
		{
			name = "Wilting Dragonfly's Health",
			label = "时令龙蝇的血量",
			hover = "根据您的喜好调整时令龙蝇的生命值！",
			options = {
				{ description = "最低 (/4)",   data = 0.25 },
				{ description = "降低 (/2)",  data = 0.5 },
				{ description = "默认",       data = 1 },
				{ description = "更高 (x1.5)", data = 1.5 },
				{ description = "最高 (x2)",  data = 2 },
				{ description = "不妥协 (x3)",   data = 3 } },
			default = 1
		},


		-----------------------------
		-- Experimental --
		-----------------------------
		-- Header("> 实验性 <"),

		BinaryConfig("eyebrellarework", "眼球伞重做", "眼球伞必须用乳白物修复，12天的耐久性。不受衣物降解的影响。",
			false),
		BinaryConfig("the_cooler_sacred_chest", "远古宝箱制作蓝图", "如果游戏中的米修斯谜题部分损坏，请禁用此功能。 \n也请提交错误报告！",
			false),

		-----------------------------
		BinaryConfig("woodie_wet_goose", "鹅变湿", "鹅在水上会变湿。", false),
		BinaryConfig("cave_clops", "[已损坏]巨鹿可以下洞", "在冬天，巨鹿可以冲破封锁线到达你的身边。", false),
		BinaryConfig("wormwood_fire", "[已损坏]特别易燃的植物人", "植物人非常容易燃烧", false),
		BinaryConfig("hangyperds", "饥饿的火鸡", "火鸡现在更具侵略性，会试图从玩家的库存中拿走浆果。",false),
		BinaryConfig("bernie", "大伯尼", "启用大伯尼！！", true),
		BinaryConfig("announce_basestatus", "[DEV] 鼠潮分宣告", "[开发人员工具]将精确的鼠潮分值打印到聊天中，以便实时查看。",false),

		-----------------------------

		--	Header("General"),
		BinaryConfig("maraboss_bottomtext", "JUDGEMENT", "激活了特殊的月球变异。是的！\n(Enables a particular lunar mutation. Yup!)", false),
		BinaryConfig("um_advertisements", "趣味模式", "启用趣味模式以获得新内容增强体验!", false),
		BinaryConfig("um_shrink", "不要变小", "失去健康/饥饿时人物会变小，精神疯狂时会变平。", false),
	}
}
return info
