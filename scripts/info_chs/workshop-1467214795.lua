--岛屿冒险
local options_count = {
	{description = "自动(默认)", data = false},
	{description = "1", data = "1"},
	{description = "2", data = "2"},
	{description = "3", data = "3"},
	{description = "4", data = "4"},
	{description = "5", data = "5"},
}

local description = KnownModIndex:GetModInfo("workshop-1467214795").description
description = description:gsub("Version", "版本")

local info={
    description = description,
    configuration_options =
    {
        {
            name = "armorlimestonebuff",
            label = "石灰石套装",
            hover = "改变石灰石护甲的伤害吸收。",
        },
        {
            name = "Cut Content Restoration",
            label = "废案还原",
        },
        {
            name = "leif_jungle",
            label = "丛林守卫",
            hover = "重新添加了可怕的甩蛇丛林守卫"
        },
        {
            name = "devmode",
            label = "开发模式",
            hover = "启用此功能可将您的键盘变成疯狂调试热键的雷区。（仅在您知道自己在做什么时使用！）",
        },
        {
            name = "forestid",
            label = "森林世界ID\n不是用专用服务器开服不要设置这个！！！",
            options = options_count,
        },
        {
            name = "caveid",
            label = "洞穴世界ID\n不是用专用服务器开服不要设置这个！！！",
            options = options_count,
        },
        {
            name = "shipwreckedid",
            label = "海难世界ID\n不是用专用服务器开服不要设置这个！！！",
            options = options_count,
        },
        {
            name = "volcanoid",
            label = "火山世界ID\n不是用专用服务器开服不要设置这个！！！",
            options = options_count,
        },
    }
}
return info