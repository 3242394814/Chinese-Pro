local boolean = {{description = "是", data = true}, {description = "否", data = false}}
local colors = {
    {description = "跳过"         , data = "SKIP"        },
    {description = "红"          , data = "RED"         },
    {description = "橙"       , data = "ORANGE"      },
    {description = "黄"       , data = "YELLOW"      },
    {description = "绿"        , data = "GREEN"       },
    {description = "蓝绿"         , data = "TEAL"        },
    {description = "青"         , data = "CYAN"        },
    {description = "蓝"         , data = "BLUE"        },
    {description = "紫"       , data = "PURPLE"      },
    {description = "洋红"      , data = "MAGENTA"     },
    {description = "白"        , data = "WHITE"       },
    {description = "浅灰"   , data = "LIGHT_GREY"  },
    {description = "深灰"    , data = "DARK_GREY"   },
    {description = "黑"        , data = "BLACK"       },
    -- “新”虫洞颜色（eXiGe）
    {description = "Exige 红"    , data = "EXIGE_RED"   },
    {description = "Exige 蓝绿"   , data = "EXIGE_TEAL"  },
    {description = "Exige 紫" , data = "EXIGE_PURPLE"},
    {description = "Exige 绿"  , data = "EXIGE_GREEN" },
    {description = "Exige 橙" , data = "EXIGE_ORANGE"},
    {description = "Exige 蓝"   , data = "EXIGE_BLUE"  },
    {description = "Exige 石灰"   , data = "EXIGE_LIME"  },
    {description = "Exige 粉红"   , data = "EXIGE_PINK"  },
    {description = "Exige 黄" , data = "EXIGE_YELLOW"},
    {description = "Exige 灰"   , data = "EXIGE_GREY"  },
    -- “旧”虫洞颜色（Ryuu）
    {description = "Ryuu 青"    , data = "RYUU_CYAN"   },
    {description = "Ryuu 洋红" , data = "RYUU_MAGENTA"},
    {description = "Ryuu 黄"  , data = "RYUU_YELLOW" },
    {description = "Ryuu 橙"  , data = "RYUU_ORANGE" },
    {description = "Ryuu 石灰"    , data = "RYUU_LIME"   },
    {description = "Ryuu 黄 2", data = "RYUU_YELLOW2"},
    {description = "Ryuu 蓝"    , data = "RYUU_BLUE"   },
    {description = "Ryuu 粉红"    , data = "RYUU_PINK"   },
    {description = "Ryuu 灰"    , data = "RYUU_GREY"   },
    {description = "Ryuu 绿"   , data = "RYUU_GREEN"  },
}
local info=
{
    name = "Wormhole Icons + Custom Colors(虫洞图标 + 自定义颜色)",
    description = [[虫洞地图图标已经完全重新设计，每个虫洞对的颜色都可以定制。原始的mod作者是Ryuu和eXiGe。

如果虫洞对的数量多于设定的颜色，颜色将循环回到开始。

使用小地图HUD的图标渲染是实验性的。它适用于我的游戏，但我没有测试过所有内容。如果此模组+小地图HUD导致您的游戏崩溃，您可以使用最底部的选项关闭此部分的功能。

如果你的游戏崩溃或这个mod有其他问题，请尽可能详细地留言（你正在运行的mod，你使用的设置，显示器/屏幕信息（如果有））。
]],
    configuration_options = {
        {
            name = "MAP_ICONS",
            label = "地图图标",
            hover = "在地图上显示虫洞图标",
            options = boolean,
            default = true,
        },{
            name = "MAP_NUMBERS",
            label = "地图图标编号",
            hover = "在地图上的虫洞图标上方显示数字",
            options = boolean,
            default = true,
        },{
            name = "MAP_ICON_SIZE",
            label = "地图图标大小",
            hover = "更改地图上虫洞图标的大小",
            options = {{description = "70%", data = 0.4},{description = "80%", data = 0.5},{description = "90%", data = 0.6},{description = "100%", data = 0.7},{description = "110%", data = 0.8},{description = "120%", data = 0.9},{description = "130%", data = 1.0},},
            default = 0.7,
        },{
            name = "GROUND_COLORS",
            label = "地面颜色",
            hover = "通过在地面上着色来突出虫洞",
            options = boolean,
            default = true,
        },{
            name = "GROUND_NUMBERS",
            label = "地面编号",
            hover = "在地面上的虫洞上方添加一个数字",
            options = boolean,
            default = true,
        },{
            name = "GROUND_BORDERS",
            label = "地面边界",
            hover = "在地面虫洞周围添加边框",
            options = boolean,
            default = true,
        },{
            name = "COLOR_1",
            label = "虫洞颜色1",
            hover = "这对虫洞的颜色",
            options = colors,
            default = "RED",
        },{
            name = "COLOR_2",
            label = "虫洞颜色 2",
            hover = "这对虫洞的颜色",
            options = colors,
            default = "ORANGE",
        },{
            name = "COLOR_3",
            label = "虫洞颜色 3",
            hover = "这对虫洞的颜色",
            options = colors,
            default = "YELLOW",
        },{
            name = "COLOR_4",
            label = "虫洞颜色 4",
            hover = "这对虫洞的颜色",
            options = colors,
            default = "GREEN",
        },{
            name = "COLOR_5",
            label = "虫洞颜色 5",
            hover = "这对虫洞的颜色",
            options = colors,
            default = "TEAL",
        },{
            name = "COLOR_6",
            label = "虫洞颜色 6",
            hover = "这对虫洞的颜色",
            options = colors,
            default = "CYAN",
        },{
            name = "COLOR_7",
            label = "虫洞颜色 7",
            hover = "这对虫洞的颜色",
            options = colors,
            default = "BLUE",
        },{
            name = "COLOR_8",
            label = "虫洞颜色 8",
            hover = "这对虫洞的颜色",
            options = colors,
            default = "PURPLE",
        },{
            name = "COLOR_9",
            label = "虫洞颜色 9",
            hover = "这对虫洞的颜色",
            options = colors,
            default = "MAGENTA",
        },{
            name = "COLOR_10",
            label = "虫洞颜色 10",
            hover = "这对虫洞的颜色",
            options = colors,
            default = "WHITE",
        },{
            name = "COLOR_11",
            label = "虫洞颜色 11",
            hover = "这对虫洞的颜色",
            options = colors,
            default = "SKIP",
        },{
            name = "COLOR_12",
            label = "虫洞颜色 12",
            hover = "这对虫洞的颜色",
            options = colors,
            default = "SKIP",
        },{
            name = "COLOR_13",
            label = "虫洞颜色 13",
            hover = "这对虫洞的颜色",
            options = colors,
            default = "SKIP",
        },{
            name = "COLOR_14",
            label = "虫洞颜色 14",
            hover = "这对虫洞的颜色",
            options = colors,
            default = "SKIP",
        },{
            name = "COLOR_15",
            label = "虫洞颜色 15",
            hover = "这对虫洞的颜色",
            options = colors,
            default = "SKIP",
        },{
            name = "WORMHOLE_MARKS_DISABLE",
            label = "虫洞标记禁用",
            hover = "如果启用虫洞标记，则禁用此mod",
            options = boolean,
            default = false,
        },{
            name = "DISABLE_MINIMAP",
            label = "禁用Minimap HUD(小地图)图标",
            hover = "禁用Minimap HUD(小地图)集成（在崩溃时使用）",
            options = boolean,
            default = false,
        },
    }
}
return info