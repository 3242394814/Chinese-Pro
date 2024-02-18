local description = KnownModIndex:GetModInfo("workshop-1903101575").description or ""
description = string.gsub(description,"Version:","版本：")
description = string.gsub(description,"Adds \"Auto%-Join\" and \"Rejoin\" buttons.","添加“自动加入”和“重新加入”按钮。")
description = string.gsub(description,"The first one allows continuous reconnections to the selected server until joining, and","第一 允许连续重新连接到所选服务器，直到加入，以及")
description = string.gsub(description,"the second %- rejoin the last server.","第二 重新加入最后一个服务器")
description = string.gsub(description,"Added support for \"banned\" and \"kicked\" statuses","增加了对“被禁止”和“被踢”状态的支持")
description = string.gsub(description,"Fixed issue with syncing rejoin button state","修复了同步重新加入按钮状态的问题")
description = string.gsub(description,"Improved some existing status icons","改进了一些现有的状态图标")
description = string.gsub(description,"Improved the \"Dev Tools\" mod submenu","改进了“开发工具”模块子菜单")
description = string.gsub(description,"Refactored modinfo","重构modinfo")

local function AddConfig(name, label, hover, options, default)
    return {name = name, label = label, options = options, default = default, hover = hover or "" }
end

local function AddBooleanConfig(name, label, hover, default)
    default = default == nil and true or default
    return AddConfig(name, label, hover, {
        { description = "开启", data = true },
        { description = "关闭", data = false },
    }, default)
end

local function AddKeyListConfig(name, label, hover, default)
    if default == nil then
        default = false
    end

    -- helpers
    local function AddDisabled(t)
        t[#t + 1] = { description = "关闭", data = false }
    end

    local function AddKey(t, key)
        t[#t + 1] = { description = key, data = "KEY_" .. key:gsub(" ", ""):upper() }
    end

    local function AddKeysByName(t, names)
        for i = 1, #names do
            AddKey(t, names[i])
        end
    end

    local function AddAlphabetKeys(t)
        local string = ""
        for i = 1, 26 do
            AddKey(t, string.char(64 + i))
        end
    end

    local function AddTypewriterNumberKeys(t)
        for i = 1, 10 do
            AddKey(t, "" .. (i % 10))
        end
    end

    local function AddTypewriterModifierKeys(t)
        AddKeysByName(t, { "Alt", "Ctrl", "Shift" })
    end

    local function AddTypewriterKeys(t)
        AddAlphabetKeys(t)
        AddKeysByName(t, {
            "Slash",
            "Backslash",
            "Period",
            "Semicolon",
            "Left Bracket",
            "Right Bracket",
        })
        AddKeysByName(t, { "Space", "Tab", "Backspace", "Enter" })
        AddTypewriterModifierKeys(t)
        AddKeysByName(t, { "Tilde" })
        AddTypewriterNumberKeys(t)
        AddKeysByName(t, { "Minus", "Equals" })
    end

    local function AddFunctionKeys(t)
        for i = 1, 12 do
            AddKey(t, "F" .. i)
        end
    end

    local function AddArrowKeys(t)
        AddKeysByName(t, { "Up", "Down", "Left", "Right" })
    end

    local function AddNavigationKeys(t)
        AddKeysByName(t, { "Insert", "Delete", "Home", "End", "Page Up", "Page Down" })
    end

    -- key list
    local list = {}

    AddDisabled(list)
    AddArrowKeys(list)
    AddFunctionKeys(list)
    AddTypewriterKeys(list)
    AddNavigationKeys(list)
    AddKeysByName(list, { "Escape", "Pause", "Print" })

    return AddConfig(name, label, hover, list, default)
end

local function AddSection(title,CH_label)
    return {name = "", label = title, CH_label = CH_label}
end

local info={
    name="Auto-Join(自动加入)",
    description = description,
    configuration_options = {
        --
        -- General
        --

        AddSection("General","全局设置"),

        AddConfig(
            "waiting_time",
            "等待时间",
            "两次重新连接的时间间隔",
            {
                { description = "5s", data = 5 },
                { description = "10s", data = 10 },
                { description = "15s", data = 15 },
                { description = "20s", data = 20 },
                { description = "25s", data = 25 },
                { description = "30s", data = 30 },
                { description = "35s", data = 35 },
                { description = "40s", data = 40 },
                { description = "45s", data = 45 },
                { description = "50s", data = 50 },
                { description = "55s", data = 55 },
                { description = "1m", data = 60 },
            },
            15
        ),

        --
        -- Indicator
        --

        AddSection("Indicator","指示器"),

        AddBooleanConfig(
            "indicator",
            "指示器",
            "启用后，在支持的屏幕上添加一个角落指示器"
        ),

        AddConfig(
            "indicator_position",
            "指示器位置",
            "屏幕上的指示器位置",
            {
                { description = "左上角", data = 1 },
                { description = "右上角", data = 2 },
                { description = "右下角", data = 3 },
                { description = "左下角", data = 4 },
            },
            2
        ),

        AddConfig(
            "indicator_padding",
            "指示器填充",
            "屏幕边缘的指示器填充",
            {
                { description = "5", data = 5 },
                { description = "10", data = 10 },
                { description = "15", data = 15 },
                { description = "20", data = 20 },
            },
            10
        ),

        AddConfig(
            "indicator_scale",
            "指示器刻度",
            "屏幕上的指示器刻度",
            {
                { description = "1", data = 1 },
                { description = "1.1", data = 1.1 },
                { description = "1.2", data = 1.2 },
                { description = "1.3", data = 1.3 },
                { description = "1.4", data = 1.4 },
                { description = "1.5", data = 1.5 },
            },
            1.3
        ),

        --
        -- Rejoin
        --

        AddSection("Rejoin","重新加入"),

        AddKeyListConfig(
            "key_rejoin",
            "重新加入键",
            "用于切换重新连接功能的键。\n在主屏幕和暂停屏幕上可用",
            "KEY_CTRL"
        ),

        AddConfig(
            "rejoin_initial_wait",
            "重新加入初始等待",
            [[重新加入前 搜索服务器列表的初始等待时间（秒）]] .. "\n" ..
                [[根据您的网络速度进行更改]],
            {
                { description = "1s", data = 1 },
                { description = "2s", data = 2 },
                { description = "3s", data = 3 },
                { description = "5s", data = 5 },
                { description = "10s", data = 10 },
            },
            3
        ),

        AddBooleanConfig(
            "rejoin_main_screen_button",
            "重新加入主屏幕按钮",
            [[启用后，在多人游戏主界面添加“重新加入”按钮]] .. "\n" ..
                [[在Windows上，替换最后一个“更多游戏”按钮]]
        ),

        AddBooleanConfig(
            "rejoin_pause_screen_button",
            "加入暂停屏幕按钮",
            [[启用后，在暂停屏幕中添加“重新加入”按钮。]] .. "\n" ..
                [[在按住"重新加入键"时替换“断开连接”]]
        ),

        --
        -- Other
        --

        AddSection("Other","其它"),

        AddBooleanConfig(
            "hide_changelog",
            "隐藏更新日志",
            [[启用后，将在mod描述中隐藏更新日志。]] .. "\n" ..
                [[Mods需要重新加载才能生效]]
        ),

        AddBooleanConfig(
            "debug",
            "Debug",
            "启用后，在控制台中显示调试数据。\n主要用于开发",
            false
        ),
    }
}
return info