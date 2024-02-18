local info={
	name = "Starting NovicePacks(小橘子的新手礼包)",
	description = [[服务器MOD。
开局赠送各种新手资源，可给背包，赠送的保暖石随季节加温。
背包空间不够时，多余的物品无法获得。]],
	configuration_options = {
		{
			name = "ANNOUNCE_TIP",
			label = "公告提示",
			options =
			{
				{ description = "开", data = true },
				{ description = "关", data = false },
			},
			default = true,
		},
		{
			name = "PACKS_CD",
			label = "冷却时间(天)",
			options =
			{
				{ description = "无", data = 0 },
				{ description = "1", data = 1 },
				{ description = "2", data = 2 },
				{ description = "3", data = 3 },
				{ description = "4", data = 4 },
				{ description = "5", data = 5 },
				{ description = "10", data = 10 },
				{ description = "无限", data = -1 },
			},
			default = 10,
		},
		{
			name = "RESOURCE_BALANCE",
			label = "资源平衡",
			options =
			{
				{ description = "开", data = true },
				{ description = "关", data = false },
			},
			default = true,
		},
		{
			name = "PACKS_CHARACTER",
			label = "人物礼包",
			options =
			{
				{ description = "无", data = 0, hover = "无" },
				{ description = "极少", data = 1, hover = "黑夜火把，PVP长矛，原版人物背包" },
				{ description = "核心", data = 2, hover = "原版人物核心包" },
				{ description = "默认", data = 3, hover = "原版人物完整包" },
				{ description = "更多蓝图", data = 4, hover = "所有人物随机蓝图" },
				{ description = "丰富", data = 5, hover = "非常丰富" },
			},
			default = 3,
		},
		{
			name = "PACKS_BUILD",
			label = "制造礼包(个)",
			options =
			{
				{ description = "无", data = 0 },
				{ description = "1", data = 1 },
				{ description = "3", data = 3 },
				{ description = "5", data = 5 },
				{ description = "10", data = 10 },
			},
			default = 5,
		},
		{
			name = "PACKS_SEASON",
			label = "季节礼包",
			options =
			{
				{ description = "开", data = true },
				{ description = "关", data = false },
			},
			default = true,
		},
		{
			name = "PACKS_BUFF",
			label = "BUFF(分)",
			options =
			{
				{ description = "无", data = 0 },
				{ description = "0.5", data = 0.5 },
				{ description = "1", data = 1 },
				{ description = "2", data = 2 },
				{ description = "3", data = 3 },
				{ description = "5", data = 5 },
			},
			default = 1,
		},
		{
			name = "PACKS_SCIENCE",
			label = "科技解锁",
			options =
			{
				{ description = "无", data = 0 },
				{ description = "科学仪器", data = 1 },
				{ description = "炼金术引擎", data = 2 },
				{ description = "魔法帽子", data = 3 },
				{ description = "暗影操纵仪", data = 4 },
				{ description = "远古遗迹", data = 5 },
			},
			default = 0,
		},
		{
			name = "PACKS_BACKPACK",
			label = "赠送背包",
			options =
			{
				{ description = "无", data = 0 },
				{ description = "背包", data = 1 },
				{ description = "小猪包", data = 2 },
				{ description = "隔热包", data = 3 },
				{ description = "坎普斯背包", data = 4 },
			},
			default = 0,
		},
	}
}

default_number = {
	0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 20, 30, 40, 50, 99,
}

resource_number = {}
for i = 1, #default_number do
	resource_number[i] = {
		description = default_number[i],
		data = default_number[i],
	}
end

resource_prefab = {
	{ name = "axe", label = "斧头", default = 0 },
	{ name = "pickaxe", label = "鹤嘴锄", default = 0 },
	{ name = "shovel", label = "铁铲", default = 0 },
	{ name = "torch", label = "火炬", default = 0 },
	{ name = "spear", label = "长矛", default = 0 },
	{ name = "footballhat", label = "猪皮帽", default = 0 },
	{ name = "armorwood", label = "木制盔甲", default = 0 },
	{ name = "umbrella", label = "雨伞", default = 0 },
	{ name = "amulet", label = "提神护符", default = 0 },
	{ name = "cane", label = "步行手杖", default = 0 },
	{ name = "heatrock", label = "热能石", default = 0 },
	{ name = "compass", label = "指南针", default = 0 },
	{ name = "dragonpie", label = "火龙果派", default = 2 },
	{ name = "meat_dried", label = "肉干", default = 2 },
	{ name = "ice", label = "冰块", default = 0 },
	{ name = "bandage", label = "蜂蜜药膏", default = 0 },
	{ name = "acorn", label = "坚果", default = 0 },
	{ name = "log", label = "木材", default = 0 },
	{ name = "twigs", label = "树枝", default = 5 },
	{ name = "cutgrass", label = "割草", default = 5 },
	{ name = "cutreeds", label = "芦苇", default = 0 },
	{ name = "poop", label = "粪便", default = 0 },
	{ name = "rocks", label = "岩石", default = 0 },
	{ name = "flint", label = "燧石", default = 3 },
	{ name = "nitre", label = "硝石", default = 0 },
	{ name = "goldnugget", label = "金块", default = 0 },
	{ name = "pigskin", label = "猪皮", default = 0 },
	{ name = "silk", label = "蜘蛛网", default = 0 },
	{ name = "gears", label = "齿轮", default = 0 },
}

for i = 1, #resource_prefab do
	info.configuration_options[#info.configuration_options + 1] = {
		name = resource_prefab[i].name,
		label = resource_prefab[i].label,
		options = resource_number,
		default = resource_prefab[i].default,
	}
end

return info