MarginValues = {}
for i=1, 101 do
	MarginValues[i] = {description = "" .. ((i - 1)) * 10, data = ((i - 1) * 10)}
end

ScaleValues = {}
local startValue = 0.2
local increment = 0.01
local count = ((1.5 - startValue) / increment) + 1

for i = 1, count do
    local value = startValue + (i - 1) * increment
    ScaleValues[i] = { description = "" .. value, data = value }
end

local info =
{
	name = "Item Info Updated(物品信息 - 新版)",
	description = "物品信息 - 新版由Alti更新",
	configuration_options =
	{
		{
			name = "INFO_SCALE",
			label = "信息比例",
			hover = "设置工具提示的信息比例",
			options =	ScaleValues,
			default = 0.8,
		},
		{
			name = "TIME_FORMAT",
			label = "时间格式",
			hover = "设置显示时间格式",
			options =	{
							{description = "小时制", data = 0},
							{description = "天数制", data = 1},
						},
			default = 0,
		},
		{
			name = "PERISHABLE",
			label = "腐烂倒计时",
			hover = "设置您想要查看陈腐、腐烂倒计时和新鲜度百分比的方式。",
			options =	{
							{description = "仅腐烂", data = 0},
							{description = "陈旧 > 腐烂", data = 1},
							{description = "全部显示", data = 2},
							{description = "不显示", data = 3},
						},
			default = 2,
		},
		{
			name = "WURT_MEAT",
			label = "小鱼人沃特 | 肉料统计",
			hover = "设置为开启并玩沃特时，你将看到肉类料理统计(饥饿、理智、健康)",
			options =	{
							{description = "开启", data = true},
							{description = "关闭", data = false},
						},
			default = false,
		},
		{
			name = "WIG_VEGGIE",
			label = "女武神薇格弗德 | 素料统计",
			hover = "设置为开启并玩女武神时，你将看到素类料理统计(饥饿，理智，健康)",
			options =	{
							{description = "开启", data = true},
							{description = "关闭", data = false},
						},
			default = false,
		},
		{
			name = "WORM_HEALTH",
			label = "植物人沃姆伍德 | 料理健康统计",
			hover = "设置为开启并玩植物人时，你将看到料理的生命值加成",
			options =	{
							{description = "开启", data = true},
							{description = "禁用", data = false},
						},
			default = false,
		},
		{
			name = "SHOW_INFO_HANDS",
			label = "显示手部装备",
			hover = "如果你想看到你的手装备项目信息可设置成开启",
			options =	{
							{description = "开启", data = true},
							{description = "关闭", data = false},
						},
			default = true,
		},
		{
			name = "SHOW_INFO_BODY",
			label = "显示身体装备",
			hover = "如果你想看到你的身体装备项目信息可设置成开启",
			options =	{
							{description = "开启", data = true},
							{description = "关闭", data = false},
						},
			default = true,
		},
		{
			name = "SHOW_INFO_HEAD",
			label = "显示头部装备",
			hover = "如果你想看到你的头装备项目信息可设置成开启",
			options =	{
							{description = "开启", data = true},
							{description = "关闭", data = false},
						},
			default = true,
		},
		{
			name = "EQUIP_SCALE",
			label = "装备信息比例",
			hover = "设置装备物品信息比例。这不会影响工具提示",
			options =	ScaleValues,
			default = 0.46,
		},
		{
			name = "SHOW_PREFABNAME",
			label = "物品代码名称(Prefab name)",
			hover = "如果你想看到物品的代码名称可设置为开启",
			options =	{
							{description = "开启", data = true},
							{description = "关闭", data = false},
						},
			default = false,
		},
		{
			name = "SHOW_BACKGROUND",
			label = "显示背景",
			hover = "如果你想看到装备信息的背景可设置为开启",
			options =	{
							{description = "开启", data = true},
							{description = "关闭", data = false},
						},
			default = false,
		},
		{
			name = "HORIZONTAL_MARGIN",
			label = "下边距",
			hover = "设置装备信息底部边缘",
			options =	MarginValues,
			default = 100,
		},
		{
			name = "VERTICAL_MARGIN",
			label = "右边距",
			hover = "设置装备信息右边边缘",
			options =	MarginValues,
			default = 100,
		},
		{
			name = "ENABLER",
			label = "不检测是否与\nShow me(Origin)/Insight一起使用",
			hover = "当此开关设置为\"否\"且服务器开启了Insight(Show Me+)/Show Me(Origin)时\n不加载此模组的显示信息功能",
			options =
			{
				{description = "是", data = true},
				{description = "否", data = false},
			},
			default = true,
		},
	}
}
return info