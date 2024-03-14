local version = KnownModIndex:GetModInfo("workshop-3169441836").version
local modinfo_ver = KnownModIndex:GetModInfo("workshop-3169441836").modinfo_ver
local description = KnownModIndex:GetModInfo("workshop-3169441836").description
description = string.gsub(description,"Improves the crash screen to give more detailed information and makes it easier to understand.","改进了崩溃提示页面，以提供更详细的信息，使其更容易理解。")
description = string.gsub(description,"Version","版本")
description = string.gsub(description,"󰀭 Credits","󰀭 致谢")
description = string.gsub(description,"What's New:","最近更新：")
description = string.gsub(description,"Added forced tutorial for users %(will only show once%)","为玩家添加了强制教程（只显示一次）")

local scales = {
}

for i = 1, 20 do
	scales[i] = {description = "x"..i/10, data = i/10}
end

local pos = {
	[1] = {description = "Default", data = 0}
}

for i = 2, 15 do
	pos[i] = {description = "+"..i.."0", data = i*10}
end

local opt_Empty = {{description = "", data = 0}}
local function Title(title,hover,label)
	return {
		name=title,
        label=label,
		hover=hover,
		options=opt_Empty,
		default=0,
	}
end


-- local SEPARATOR = Title("")
local info =
{
    name = "Better Crash Screen(更好的崩溃提示)",
    description = description,
    configuration_options = {



        Title("Crashscreen", "General Crashscreen Settings","崩溃提示设置"),
        {
            name = "ReduxCrashScreen",
            label = "崩溃提示样式",
            hover = "",
            options =
            {
                { description = "经典", data = "classic", hover="锻造前外观"},
                { description = "新版",  data = "redux", hover="锻造后外观（还原）"},

            },
            default = "classic"

        },

        {
            name = "ClassicFrame",
            label = "经典样式边框",
            hover = "将边框添加到经典样式的崩溃提示页面",
            options =
            {
                { description = "启用", data = true},
                { description = "禁用",  data = false},

            },
            default = false

        },

        {
            name = "reduxscale",
            label = "新版崩溃提示页面比例",
            hover = "",
            options =
            {
                { description = "默认", data = 1.08},
                { description = "1.15", data = 1.15},
                { description = "1.25", data = 1.25},
                { description = "1.5", data = 1.5},

            },
            default = 1.08

        },
        {
            name = "font",
            label = "字体覆盖",
            hover = "这不适用于底部按钮",
            options =
            {
                { description = "默认", data = 0},
                { description = "聊天字体", data = "TALKINGFONT"},
                { description = "沃姆伍德字体", data = "TALKINGFONT_WORMWOOD"},
                { description = "交易小店字体", data = "TALKINGFONT_TRADEIN"},
                { description = "寄居蟹隐士字体", data = "TALKINGFONT_HERMIT"},
                { description = "PT Mono", data = "PTMONO"},
                { description = "Wildcard", data = "BETTERCRASHSCREEN_FONT_WILDCARD"},
            },
            default = 0
        },
        {
            name = "nostalgia",
            label = "怀旧",
            hover = "",
            options =
            {
                { description = "开启",  data = 1 },
                { description = "关闭", data = 0 },
            },
            default = 0
        },

        Title("Top Buttons", "Pick what mini buttons you want","选择你想要的小按钮"),

        {
            name = "SaveLog",
            label = "保存日志按钮",
            hover = "将日志保存到DST的数据文件夹中",
            options =
            {
                { description = "启用",  data = 1 },
                { description = "禁用", data = 0 },

            },
            default = 1
        },

        {
            name = "DocumentsButton",
            label = "ClientLog文件夹按钮",
            hover = "打开DST文档文件夹。 \n退回到上级目录文件夹以查找客户端日志",
            options =
            {
                { description = "启用",  data = 1 },
                { description = "禁用", data = 0 },

            },
            default = 1
        },


        {
            name = "CombinedButtons",
            label = "组合按钮",
            hover = "将两个按钮组合在一起 \n这会隐藏文本！",
            options =
            {
                { description = "启用",  data = true },
                { description = "禁用", data = false },

            },
            default = false
        },

        {
            name = "ButtonsCloserToLog",
            label = "靠近按钮",
            hover = "使小按钮更靠近日志 \n只有在启用组合按钮时！",
            options =
            {
                { description = "启用",  data = true },
                { description = "禁用", data = false },

            },
            default = true
        },
        Title("󰀔 Mod Version"..":".." "..version,"","󰀔 Mod 版本"..":".." "..version),
		Title("󰀩 Modinfo Version:".." "..modinfo_ver,"","󰀩 Modinfo 版本:".." "..modinfo_ver)
    }
}
return info