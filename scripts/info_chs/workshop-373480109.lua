local info={
    name = "Coordinate(坐标显示)",
    description = "显示您的坐标，以便您可以更轻松地浏览世界。",
    configuration_options = {
        {
            name = "Position",
            label = "位置",
            options = {
                {description = "右上角", data = "top_right"},
                {description = "左上角", data = "top_left"},
                {description = "顶部居中", data = "top_center"},
                {description = "中间偏左", data = "middle_left"},
                {description = "中间居中", data = "middle_center"},
                {description = "中间偏右", data = "middle_right"},
                {description = "左下角", data = "bottom_left"},
                {description = "底部居中", data = "bottom_center"},
                {description = "右下角", data = "bottom_right"},
            },
            default = "top_right"
        },
        {
            name = "Horizontal Margin",
            label = "水平边距",
            options = {
                {description = "无", data = 0},
                {description = "极微小", data = 5},
                {description = "极小", data = 12.5},
                {description = "非常小", data = 25},
                {description = "小", data = 50},
                {description = "中等", data = 125},
                {description = "大", data = 235},
                {description = "巨大", data = 350},
                {description = "特大", data = 450},
            },
            default = 235
        },
        {
            name = "Vertical Margin",
            label = "垂直边距",
            options = {
                {description = "无", data = 0},
                {description = "极微小", data = 5},
                {description = "极小", data = 12.5},
                {description = "非常小", data = 25},
                {description = "小", data = 50},
                {description = "中等", data = 125},
                {description = "大", data = 235},
                {description = "非常大", data = 300},
                {description = "巨大", data = 350},
                {description = "特大", data = 450},
            },
            default = 25
        },
    }
}
return info