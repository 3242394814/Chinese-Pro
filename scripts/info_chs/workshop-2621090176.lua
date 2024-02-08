local language = "zh"                  --(locale == "zh" or locale == "zhr") and "zh" or (locale and supported_languages[locale] and locale) or "en"
local config_strings = {
    strings = {
        name = {
            zh = "Wormholes/Sinkholes Icons For Server 虫洞/硕大的泥坑服务器图标",
        },
        description = {
            zh =
            "这个mod给服务器上的每个人都提供了虫洞和硕大的泥坑的图标，但每个人都有相同的编号！这使得彼此之间的沟通更加容易。\n你也可以给虫洞和硕大的泥坑重命名，这样你也可以知道它们通向哪里!\n森林世界的洞穴入口和洞穴世界的楼梯也自动具有相同的颜色!",
        },
    },
    bool = {
        ["true"] = {
            zh = "是",
        },
        ["false"] = {
            zh = "否",
        },
    },
    color_names = {
        {
            zh = "红色",
        },
        {
            zh = "绿色",
        },
        {
            zh = "黄色",
        },
        {
            zh = "蓝色",
        },
        {
            zh = "橙色",
        },
        {
            zh = "紫色",
        },
        {
            zh = "青色",
        },
        {
            zh = "品红色",
        },
        {
            zh = "草绿色",
        },
        {
            zh = "粉红色",
        },
        {
            zh = "蓝绿色",
        },
        {
            zh = "淡紫色",
        },
        {
            zh = "棕色",
        },
        {
            zh = "米色",
        },
        {
            zh = "深红色",
        },
        {
            zh = "薄荷绿色",
        },
        {
            zh = "橄榄绿色",
        },
        {
            zh = "杏黄色",
        },
        {
            zh = "藏青色",
        },
        {
            zh = "灰色",
        },
    },
    ["Utility Options"] = {
        zh = "公用事业选项",
        
    },
    getWormholeColorOptions = {
        label = {
            zh = "虫洞的颜色 ",
        },
        hover1 = {
            zh = "选择第",
        },
        hover2 = {
            zh = "个硕大的泥坑对的颜色。",
        },
    },
    getSinkholeColorOptions = {
        label = {
            zh = "硕大的泥坑颜色 ",
        },
        hover1 = {
            zh = "选择第",
        },
        hover2 = {
            zh = "个硕大的泥坑对的颜色。",
        },
    },
    LANGUAGE = {
        label = {
            zh = "语言",
        },
        hover = {
            zh = "选择本模组的语言。",
        },
    },
    SANITY = {
        label = {
            zh = "理智惩罚",
        },
        hover = {
            zh = "定义在通过虫洞时是否应该损失理智以及应该损失多少理智。",
        },
    },
    ICON_PLACEMENT = {
        label = {
            zh = "名称/编号的位置",
        },
        hover = {
            zh = "决定虫洞/硕大的泥坑的编号/名称应该放在地图和/或小地图上的什么位置。",
        },
        options = {
            {
                description = {
                    zh = "悬停时",        
                },    hover = {
                    zh = "当光标在悬停在虫洞/硕大的泥坑上时出现",        
                },},{
                description = {
                    zh = "图像上方",        
                },    hover = {
                    zh = "放在虫洞/硕大的泥坑的图像上方",        
                },},{
                description = {
                    zh = "图像中间",        
                },    hover = {
                    zh = "放在虫洞/硕大的泥坑的图像中间",        
                },},{
                description = {
                    zh = "图像下方",        
                },    hover = {
                    zh = "放在虫洞/硕大的泥坑的图像下面",        
                },},{
                description = {
                    zh = "图像左边",        
                },    hover = {
                    zh = "放在虫洞/硕大的泥坑图像的左边",        
                },},{
                description = {
                    zh = "图像右边",        
                },    hover = {
                    zh = "放在虫洞/硕大的泥坑图像的右边",        
                },},
        },
    },
    RENAME_FROM_MAP = {
        label = {
            zh = "从地图上重命名",
        },
        hover = {
            zh = "决定你是否希望能够从地图上重新命名虫洞/硕大的泥坑",
        },
    },
    ["Wormhole Icon Options"] = {
        zh = "虫洞图标选项",
    },
    FOR_ALL = {
        label = {
            zh = "所有虫洞的图标",
        },
        hover = {
            zh = "选择是否应该为每个人显示图标， 即使他们没有穿过虫洞，还是只为那些穿过虫洞的人显示？"
        },
        options = {
            {
                description = {
                    zh = "所有人可见",        
                },    hover = {
                    zh = "每个人都会在地图上看到所有被发现的虫洞",        
                },},{
                description = {
                    zh = "仅自己可见",        
                },    hover = {
                    zh = "只有那些穿过虫洞的人才能在地图上看到他们。",        
                },},
        },
    },
    RENAMING = {
        label = {
            zh = "重命名虫洞",
        },
        hover = {
            zh = "选择虫洞是否可以被重新命名，以及由谁来命名。",
        },
        options = {
            {
                description = {
                    zh = "不可重命名",        
                },},{
                description = {
                    zh = "所有人都可以重命名",        
                },},{
                description = {
                    zh = "管理员可重命名",        
                },},
        },
    },
    SHOW_NUMBERS = {
        label = {
            zh = "显示编号/名称",
        },
        hover = {
            zh = "在虫洞地图图标上显示编号或名称。",
        },
        options = {
            {
                description = {
                    zh = "不显示",        
                },},{
                description = {
                    zh = "仅数字",        
                },},{
                description = {
                    zh = "仅名称",        
                },},{
                description = {
                    zh = "编号/名称",        
                },},
        },
    },
    WORLD_COLORS = {
        label = {
            zh = "彩色虫洞",
        },
        hover = {
            zh = "为地图上的虫洞添加颜色",
        },
    },
    WORLD_NUMBERS = {
        label = {
            zh = "地图虫洞的号码/名称",
        },
        hover = {
            zh = "在地图的虫洞图标上方添加一个数字或给定的名称",
        },
        options = {
            {
                description = {
                    zh = "不显示",        
                },},{
                description = {
                    zh = "仅数字",        
                },},{
                description = {
                    zh = "仅名称",        
                },},{
                description = {
                    zh = "编号/名称",        
                },},
        },
    },
    WORMHOLE_BORDER = {
        label = {
            zh = "彩色边框",
        },
        hover = {
            zh = "为世界上的虫洞添加彩色边框",
        },
    },
    MINIMAP_ICONS = {
        label = {
            zh = "小地图图标",
        },
        hover = {
            zh = "在小地图上显示虫洞图标",
        },
    },
    ["Sinkhole Icon Options"] = {
        zh = "天坑图标选项",
        
    },
    SINKHOLES = {
        label = {
            zh = "硕大的泥坑图标",
        },
        hover = {
            zh = "选择是否要启用硕大的泥坑图标",
        },
    },
    FOR_ALL_SINKHOLE = {
        label = {
            zh = "所有硕大的泥坑的图标",
        },
        hover = {
            zh = "选择是否应该为每个人显示图标， 即使他们没有穿过硕大的泥坑，还是只为那些穿过硕大的泥坑的人显示图标？",
        },
        options = {
            {
                description = {
                    zh = "所有人可见",        
                },    hover = {
                    zh = "每个人都会在地图上看到所有被发现的硕大的泥坑",        
                },},{
                description = {
                    zh = "仅自己可见",        
                },    hover = {
                    zh = "只有那些穿过硕大的泥坑的人才能在地图上看到他们。",        
                },},
        },
    },
    RENAMING_SINKHOLE = {
        label = {
            zh = "重命名硕大的泥坑",
        },
        hover = {
            zh = "选择硕大的泥坑是否可以被重新命名，以及由谁来命名。",
        },
        options = {
            {
                description = {
                    zh = "不可重命名",        
                },},{
                description = {
                    zh = "所有人都可以重命名",        
                },},{
                description = {
                    zh = "管理员可重命名",        
                },},
        },
    },
    SHOW_NUMBERS_SINKHOLE = {
        label = {
            zh = "显示编号/名称",
        },
        hover = {
            zh = "在硕大的泥坑地图图标上显示编号或名称。",
        },
        options = {
            {
                description = {
                    zh = "不显示",        
                },},{
                description = {
                    zh = "仅数字",        
                },},{
                description = {
                    zh = "仅名称",        
                },},{
                description = {
                    zh = "编号/名称",        
                },},
        },
    },
    WORLD_COLORS_SINKHOLE = {
        label = {
            zh = "彩色图标:硕大的泥坑",
        },
        hover = {
            zh = "为地图上的硕大的泥坑添加颜色",
        },
    },
    WORLD_NUMBERS_SINKHOLE = {
        label = {
            zh = "地图上 硕大的泥坑的编号/名称",
        },
        hover = {
            zh = "在地图的硕大的泥坑图标上方添加一个数字或给定的名称",
        },
        options = {
            {
                description = {
                    zh = "不显示",        
                },},{
                description = {
                    zh = "仅数字",        
                },},{
                description = {
                    zh = "仅名称",        
                },},{
                description = {
                    zh = "编号/名称",        
                },},
        },
    },
    SINKHOLE_BORDER = {
        label = {
            zh = "硕大的泥坑边框",
        },
        hover = {
            zh = "为地图上的硕大的泥坑添加一个彩色的边框",
        },
    },
    MINIMAP_ICONS_SINKHOLE = {
        label = {
            zh = "小地图图标",
        },
        hover = {
            zh = "在小地图上显示硕大的泥坑图标",
        },
    },
    ["Wormhole Compability Options"] = {
        zh = "虫洞兼容性选项",
        
    },
    MINIMAP_COMP = {
        label = {
            zh = "兼容：Minimap HUD(作者:squeek.)",
        },
        hover = {
            zh = "启用虫洞/硕大的泥坑图标显示在Minimap HUD上(作者:squeek.)",
        },
    },
    MINIMAPSCALE = {
        label = {
            zh = "小地图图标比例",
        },
        hover = {
            zh = "选择Minimap HUD图标的比例。",
        },
    },
    MAPSCALE = {
        label = {
            zh = "地图图标比例",
        },
        hover = {
            zh = "选择地图 HUD 图标的比例。",
        },
    },
    DISABLE = {
        label = {
            zh = "兼容：Wormhole Icons [Fixed]",
        },
        hover = {
            zh =
            "禁用 \"Wormhole Icons [Fixed]\"和/或 \"Wormhole Icons + Custom Colors(虫洞图标+自定义颜色)\"，\n如果他们的 \"Wormhole marks disables(虫洞标记禁用) \"选项被设置为 是。",
        },
    },
    ["Wormhole Color Options"] = {
        zh = "虫洞颜色选择",
        
    },
    ["Sinkhole Color Options"] = {
        zh = "水坑颜色选择",
        
    },
}

local empty_opts = { { description = "", data = 0 } }
local function Title(title, label)
    return {
        name = title,
        label = label,
        options = empty_opts,
        default = 0,
    }
end
-- folder_name = folder_name or "wormhole icons"
-- if folder_name:find("_Wormhole Icons Server") then
-- name = name.." -dev"
-- end
local boolean = { { description = config_strings.bool["true"][language], data = true }, { description = config_strings.bool["false"][language], data = false } }
local function getPossibleColorsOptions()
    local tab = {}
    for i = 1, 20 do
        tab[i] = { description = config_strings.color_names[i][language], data = i }
    end
    return tab
end
local color_options = getPossibleColorsOptions()
local function getWormholeColorOptions(num)
return {
name = "WORMHOLE_COLOR_"..num,
label = config_strings.getWormholeColorOptions.label[language]..num,
hover = config_strings.getWormholeColorOptions.hover1[language]..num..config_strings.getWormholeColorOptions.hover2[language],
options = color_options,
default = num,
}
end
local function getSinkholeColorOptions(num)
    return {
        name = "SINKHOLE_COLOR_" .. num,
        label = config_strings.getSinkholeColorOptions.label[language] .. num,
        hover = config_strings.getSinkholeColorOptions.hover1[language] ..
        num .. config_strings.getSinkholeColorOptions.hover2[language],
        options = color_options,
        default = 10 + num > 20 and num - 10 or 10 + num, -- to have different colors for sinkholes than for wormholes
    }
end
local info = {
    name = config_strings.strings.name[language],
    description = config_strings.strings.description[language],
    configuration_options = {
        Title(config_strings["Utility Options"][language], "实用程序选项"),
        {
            name = "LANGUAGE",label = config_strings.LANGUAGE.label[language],hover = config_strings.LANGUAGE.hover[language],options =
            {
                { description = "English", data = "en" },    { description = "Chinese(中文)", data = "zh" },    { description = "Russian", data = "ru" },    { description = "Korean", data = "ko" },    { description = "German", data = "de" },    { description = "Spanish", data = "es" },    { description = "French", data = "fr" },},default = "en",
        },
        {
            name = "SANITY",label = config_strings.SANITY.label[language],hover = config_strings.SANITY.hover[language],options =
            {
                { description = "0", data = 0 },    { description = "5", data = 5 },    { description = "10", data = 10 },    { description = "15(Normal)[默认]", data = 15 },    { description = "20", data = 20 },    { description = "25", data = 25 },    { description = "30", data = 30 },    { description = "40", data = 40 },    { description = "50", data = 50 },    { description = "60", data = 60 },    { description = "70", data = 70 },    { description = "80", data = 80 },    { description = "90", data = 90 },    { description = "100", data = 100 },},default = 15,
        },
        {
            name = "ICON_PLACEMENT",label = config_strings.ICON_PLACEMENT.label[language],hover = config_strings.ICON_PLACEMENT.hover[language],options = {
                { description = config_strings.ICON_PLACEMENT.options[1].description[language], data = 0, hover = config_strings.ICON_PLACEMENT.options[1].hover[language] },    { description = config_strings.ICON_PLACEMENT.options[2].description[language], data = 1, hover = config_strings.ICON_PLACEMENT.options[2].hover[language] },    { description = config_strings.ICON_PLACEMENT.options[3].description[language], data = 2, hover = config_strings.ICON_PLACEMENT.options[3].hover[language] },    { description = config_strings.ICON_PLACEMENT.options[4].description[language], data = 3, hover = config_strings.ICON_PLACEMENT.options[4].hover[language] },    { description = config_strings.ICON_PLACEMENT.options[5].description[language], data = 4, hover = config_strings.ICON_PLACEMENT.options[5].hover[language] },    { description = config_strings.ICON_PLACEMENT.options[6].description[language], data = 5, hover = config_strings.ICON_PLACEMENT.options[6].hover[language] },},default = 2,
        },
        {
            name = "RENAME_FROM_MAP",label = config_strings.RENAME_FROM_MAP.label[language],hover = config_strings.RENAME_FROM_MAP.hover[language],options = boolean,default = false,
        },
        {
            name = "MAPSCALE",label = config_strings.MAPSCALE.label[language],hover = config_strings.MAPSCALE.hover[language],options = {
                { description = "0.1倍大小", data = 0.1 },    { description = "0.2倍大小", data = 0.2 },    { description = "0.3倍大小", data = 0.3 },    { description = "0.4倍大小", data = 0.4 },    { description = "0.5倍大小", data = 0.5 },    { description = "0.6倍大小", data = 0.6 },    { description = "0.7倍大小", data = 0.7 },    { description = "0.8倍大小", data = 0.8 },    { description = "0.9倍大小", data = 0.9 },    { description = "Original(默认)", data = 1 },    { description = "1.1倍大小", data = 1.1 },    { description = "1.2倍大小", data = 1.2 },    { description = "1.3倍大小", data = 1.3 },    { description = "1.4倍大小", data = 1.4 },    { description = "1.5倍大小", data = 1.5 },    { description = "2倍大小", data = 2 },    { description = "3倍大小", data = 3 },    { description = "4倍大小", data = 4 },},default = 1,
        },
        Title(config_strings["Wormhole Icon Options"][language], "虫洞图标选项"),
        {
            name = "FOR_ALL",label = config_strings.FOR_ALL.label[language],hover = config_strings.FOR_ALL.hover[language],options = {
                { description = config_strings.FOR_ALL.options[1].description[language], data = 0, hover = config_strings.FOR_ALL.options[1].hover[language] },    { description = config_strings.FOR_ALL.options[2].description[language], data = 1, hover = config_strings.FOR_ALL.options[2].hover[language] },},default = 0,
        },
        {
            name = "RENAMING",label = config_strings.RENAMING.label[language],hover = config_strings.RENAMING.hover[language],options = {
                { description = config_strings.RENAMING.options[1].description[language], data = 0 },    { description = config_strings.RENAMING.options[2].description[language], data = 1 },    { description = config_strings.RENAMING.options[3].description[language], data = 2 },},default = 1,
        },
        {
            name = "SHOW_NUMBERS",label = config_strings.SHOW_NUMBERS.label[language],hover = config_strings.SHOW_NUMBERS.hover[language],options = {
                { description = config_strings.SHOW_NUMBERS.options[1].description[language], data = 0 },    { description = config_strings.SHOW_NUMBERS.options[2].description[language], data = 1 },    { description = config_strings.SHOW_NUMBERS.options[3].description[language], data = 3 },    { description = config_strings.SHOW_NUMBERS.options[4].description[language], data = 2 },},default = 2,
        },
        {
            name = "WORLD_COLORS",label = config_strings.WORLD_COLORS.label[language],hover = config_strings.WORLD_COLORS.hover[language],options = boolean,default = true,
        },
        {
            name = "WORLD_NUMBERS",label = config_strings.WORLD_NUMBERS.label[language],hover = config_strings.WORLD_NUMBERS.hover[language],options = {
                { description = config_strings.WORLD_NUMBERS.options[1].description[language], data = 0 },    { description = config_strings.WORLD_NUMBERS.options[2].description[language], data = 1 },    { description = config_strings.WORLD_NUMBERS.options[3].description[language], data = 3 },    { description = config_strings.WORLD_NUMBERS.options[4].description[language], data = 2 },},default = 2,
        },
        {
            name = "WORMHOLE_BORDER",label = config_strings.WORMHOLE_BORDER.label[language],hover = config_strings.WORMHOLE_BORDER.hover[language],options = boolean,default = true,
        },
        {
            name = "MINIMAP_ICONS",label = config_strings.MINIMAP_ICONS.label[language],hover = config_strings.MINIMAP_ICONS.hover[language],options = boolean,default = true,
        },
        Title(config_strings["Sinkhole Icon Options"][language], "硕大的泥坑图标选项"),
        {
            name = "SINKHOLES",label = config_strings.SINKHOLES.label[language],hover = config_strings.SINKHOLES.hover[language],options = boolean,default = true,
        },
        {
            name = "FOR_ALL_SINKHOLE",label = config_strings.FOR_ALL_SINKHOLE.label[language],hover = config_strings.FOR_ALL_SINKHOLE.hover[language],options = {
                { description = config_strings.FOR_ALL_SINKHOLE.options[1].description[language], data = 0, hover = config_strings.FOR_ALL_SINKHOLE.options[1].hover[language] },    { description = config_strings.FOR_ALL_SINKHOLE.options[2].description[language], data = 1, hover = config_strings.FOR_ALL_SINKHOLE.options[2].hover[language] },},default = 0,
        },
        {
            name = "RENAMING_SINKHOLE",label = config_strings.RENAMING_SINKHOLE.label[language],hover = config_strings.RENAMING_SINKHOLE.hover[language],options = {
                { description = config_strings.RENAMING_SINKHOLE.options[1].description[language], data = 0 },    { description = config_strings.RENAMING_SINKHOLE.options[2].description[language], data = 1 },    { description = config_strings.RENAMING_SINKHOLE.options[3].description[language], data = 2 },},default = 1,
        },
        {
            name = "SHOW_NUMBERS_SINKHOLE",label = config_strings.SHOW_NUMBERS_SINKHOLE.label[language],hover = config_strings.SHOW_NUMBERS_SINKHOLE.hover[language],options = {
                { description = config_strings.SHOW_NUMBERS_SINKHOLE.options[1].description[language], data = 0 },    { description = config_strings.SHOW_NUMBERS_SINKHOLE.options[2].description[language], data = 1 },    { description = config_strings.SHOW_NUMBERS_SINKHOLE.options[3].description[language], data = 3 },    { description = config_strings.SHOW_NUMBERS_SINKHOLE.options[4].description[language], data = 2 },},default = 2,
        },
        {
            name = "WORLD_COLORS_SINKHOLE",label = config_strings.WORLD_COLORS_SINKHOLE.label[language],hover = config_strings.WORLD_COLORS_SINKHOLE.hover[language],options = boolean,default = true,
        },
        {
            name = "WORLD_NUMBERS_SINKHOLE",label = config_strings.WORLD_NUMBERS_SINKHOLE.label[language],hover = config_strings.WORLD_NUMBERS_SINKHOLE.hover[language],options = {
                { description = config_strings.WORLD_NUMBERS_SINKHOLE.options[1].description[language], data = 0 },    { description = config_strings.WORLD_NUMBERS_SINKHOLE.options[2].description[language], data = 1 },    { description = config_strings.WORLD_NUMBERS_SINKHOLE.options[3].description[language], data = 3 },    { description = config_strings.WORLD_NUMBERS_SINKHOLE.options[4].description[language], data = 2 },},default = 2,
        },
        {
            name = "SINKHOLE_BORDER",label = config_strings.SINKHOLE_BORDER.label[language],hover = config_strings.SINKHOLE_BORDER.hover[language],options = boolean,default = true,
        },
        {
            name = "MINIMAP_ICONS_SINKHOLE",label = config_strings.MINIMAP_ICONS_SINKHOLE.label[language],hover = config_strings.MINIMAP_ICONS_SINKHOLE.hover[language],options = boolean,default = true,
        },
        Title(config_strings["Wormhole Compability Options"][language], "虫洞兼容性选项"),
        {
            name = "MINIMAP_COMP",label = config_strings.MINIMAP_COMP.label[language],hover = config_strings.MINIMAP_COMP.hover[language],options = boolean,default = true,
        },
        {
            name = "MINIMAPSCALE",label = config_strings.MINIMAPSCALE.label[language],hover = config_strings.MINIMAPSCALE.hover[language],options = {
                { description = "0.1倍大小", data = 0.1 },    { description = "0.2倍大小", data = 0.2 },    { description = "0.3倍大小", data = 0.3 },    { description = "0.4倍大小", data = 0.4 },    { description = "0.5倍大小", data = 0.5 },    { description = "0.6倍大小", data = 0.6 },    { description = "0.7倍大小", data = 0.7 },    { description = "0.8倍大小", data = 0.8 },    { description = "0.9倍大小", data = 0.9 },    { description = "默认", data = 1 },    { description = "1.1倍大小", data = 1.1 },    { description = "1.2倍大小", data = 1.2 },    { description = "1.3倍大小", data = 1.3 },    { description = "1.4倍大小", data = 1.4 },    { description = "1.5倍大小", data = 1.5 },    { description = "2倍大小", data = 2 },    { description = "3倍大小", data = 3 },    { description = "4倍大小", data = 4 },},default = 1,
        },
        {
            name = "DISABLE",label = config_strings.DISABLE.label[language],hover = config_strings.DISABLE.hover[language],options = boolean,default = true,
        },
        Title(config_strings["Wormhole Color Options"][language], "虫洞颜色选择"),
    }
}
local len = #info.configuration_options
    for i = 1,20 do
    info.configuration_options[len + i] = getWormholeColorOptions(i)
    end
    info.configuration_options[len + 21] = Title(config_strings["Sinkhole Color Options"][language],"硕大的泥坑颜色选择")
    for i = 1,20 do
    info.configuration_options[len + 21 + i] = getSinkholeColorOptions(i)
    end
return info
