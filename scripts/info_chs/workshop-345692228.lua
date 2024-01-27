local info =
{
name="Minimap HUD(小地图)",
description = "给游戏界面增加一个小地图",
configuration_options =
    {
        {
            name = "Minimap Size",
            label = "小地图尺寸",
            options =
            {
                {description = "小", data = 0.125},
                {description = "较小", data = 0.175},
                {description = "中", data = 0.225},
                {description = "较大", data = 0.275},
                {description = "大", data = 0.325},
                {description = "巨大", data = 0.375},
            },
        },
        {
            name = "Ultrawide",
            label = "超宽",
            options =
            {
                {description = "否", data = 1.000},
                {description = "是", data = 1.146},
            },
            default = 1.000,
        },
        {
            name = "Position",
            label = "位置",
            options =
            {
                {description = "右上", data = "top_right"},
                {description = "左上", data = "top_left"},
                {description = "顶部居中", data = "top_center"},
                {description = "水平居中靠左", data = "middle_left"},
                {description = "居中", data = "middle_center"},
                {description = "水平居中靠右", data = "middle_right"},
                {description = "左下", data = "bottom_left"},
                {description = "底部居中", data = "bottom_center"},
                {description = "右下", data = "bottom_right"},
            },
        },
        {
            name = "Horizontal Margin",
            label = "水平边距",
            options =
            {
                {description = "无", data = 0},
                {description = "微小", data = 5},
                {description = "特小", data = 12.5},
                {description = "小", data = 25},
                {description = "较小", data = 50},
                {description = "中", data = 125},
                {description = "较大", data = 235},
                {description = "特大", data = 350},
                {description = "巨大", data = 450},
            },
        },
        {
            name = "Vertical Margin",
            label = "垂直边距",
            options =
            {
                {description = "无", data = 0},
                {description = "微小", data = 5},
                {description = "特小", data = 12.5},
                {description = "小", data = 25},
                {description = "较小", data = 50},
                {description = "中", data = 125},
                {description = "较大", data = 235},
                {description = "大", data = 300},
                {description = "特大", data = 350},
                {description = "巨大", data = 450},
            },
        },
        {
            name = "Updates Per Second",
            label = "刷新限制",
            hover = "小地图每秒的刷新次数，可以缓解帧率方面的问题",
            options =
            {
                {description = "默认", data = 0, hover = "禁用限制，地图永远是最新的"},
                {description = "10 次/秒", data = 0.1, hover = "每秒刷新10次地图"},
                {description = "8 次/秒", data = 0.125, hover = "每秒刷新8次地图"},
                {description = "6 次/秒", data = 0.166, hover = "每秒刷新6次地图"},
                {description = "5 次/秒", data = 0.20, hover = "每秒刷新5次地图"},
                {description = "4 次/秒", data = 0.25, hover = "每秒刷新4次地图"},
                {description = "3 次/秒", data = 0.333, hover = "每秒刷新3次地图"},
                {description = "2 次/秒", data = 0.5, hover = "每秒刷新2次地图"},
                {description = "1 次/秒", data = 1, hover = "每秒刷新1次地图"},
                {description = "4/5 次/秒", data = 1.25, hover = "每5秒刷新4次地图"},
                {description = "2/3 次/秒", data = 1.5, hover = "每3秒刷新2次地图"},
                {description = "1/2 次/秒", data = 2, hover = "每2秒刷新一次地图"},
                {description = "1/3 次/秒", data = 3, hover = "每3秒刷新一次地图"},
                {description = "1/4 次/秒", data = 4, hover = "每4秒刷新一次地图"},
                {description = "1/5 次/秒", data = 5, hover = "每5秒刷新一次地图"},
                {description = "1/6 次/秒", data = 6, hover = "每6秒刷新一次地图"},
                {description = "1/8 次/秒", data = 8, hover = "每8秒刷新一次地图"},
                {description = "1/10 次/秒", data = 10, hover = "每10秒刷新一次地图"},
                {description = "1/30 次/秒", data = 30, hover = "每30秒刷新一次地图"},
            },
        },
    }
}
return info