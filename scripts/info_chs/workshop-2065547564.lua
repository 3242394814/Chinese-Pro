local description = KnownModIndex:GetModInfo("workshop-2065547564").description or ""
description = string.gsub(description,"This mod skips the main loging screen and logs you in the background of the main menu","跳过登录页面，并在主菜单的后台登录")
description = string.gsub(description,"What's New:","最近更新：")
description = string.gsub(description,"Option to select Online/Offline mode added","添加选择在线/离线模式的选项")
description = string.gsub(description,"Button to switch between modes added","添加了模式切换按钮")
description = string.gsub(description,"Added option to switch login time between 2 and instant","添加在2和即时之间切换登录时间的选项")
description = string.gsub(description,"Version:", "版本：")
description = string.gsub(description,"Copyright © 2020","版权所有 © 2020")
description = string.gsub(description,"󰀭 Credits","󰀭 致谢")
description = string.gsub(description,"%(Tester%)","(测试员)")

local version = KnownModIndex:GetModInfo("workshop-2065547564").version or "未知"
local modinfo_ver = KnownModIndex:GetModInfo("workshop-2065547564").modinfo_ver or "未知"

local opt_Empty = { { description = "", data = 0 } }
local function Title(title, label)
	return {
		name = title,
        label = label,
		options = opt_Empty,
		default = 0,
	}
end

local info =
{
    name = "No Login Screen(无登录页面)",
    description = description,
    configuration_options =
    {
		Title("Settings","设置"),
		{
			name    = "mode",
			label   = "网络模式",
			hover   = "游戏登录时选择的模式",
			options =
			{
				{ description = "离线模式", data = 0 },
				{ description = "在线模式",  data = 1 },
			},
			default = 1,
		},
		{
			name    = "visible",
			label   = "网络状态文本",
			hover   = "它应该只出现在主屏幕上吗？",
			options =
			{
				{ description = "是", data = 0 },
				{ description = "否",  data = 1 },
			},
			default = 0,
		},
		{
			name    = "logtime",
			label   = "登录时间",
			hover   = "需要多长时间",
			options =
			{
				{ description = "2 秒",  data = 2, hover = "通过倒计时解决Drops Reset Countdown(掉落重置倒计时) 模组的问题" },
				{ description = "瞬间", data = 0 },
			},
			default = 0,
		},


		Title("󰀔 Mod Version" .. ":" .. " " .. version,"󰀔 Mod 版本" .. ":" .. " " .. version),
		Title("󰀩 Modinfo Version:" .. " " .. modinfo_ver,"󰀩 Modinfo 版本:" .. " " .. modinfo_ver)
	}
}
return info