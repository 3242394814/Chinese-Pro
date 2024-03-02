local boolean = {{description = "是", data = true}, {description = "否", data = false}}
local info=
{
    name="Auto Cooking(自动烹饪)",
    configuration_options =
    {
        {
            name = "language",
            label = "语言",
        },
        {
            name = "key",
            label = "快捷键",
        },
        {
            name = "key_2",
            label = "快捷键2",
        },
        {
            name = "last_recipe_key",
            label = "Lastest Recipe Key(最后一个配方键)",
        },
        {
            name = "integrated_key",
            label = "Integrated Key(综合键)",
        },
        {
            name = "speedy_mode",
            label = "Ultra Fast Mode(超快模式)",
            options = boolean,
        },
        {
            name = "cookpots_num_divisor",
            label = "Num of Cookpots(烹饪锅数量)",
            options =
            {
                {description = "较少", data = 2.5, hover = "选择较少的烹饪锅"},
                {description = "默认", data = 2, hover = "选择默认烹饪锅数量"},
                {description = "较多", data = 1.5, hover = "选择较多的烹饪锅"},
            },
        },
        {
            name = "laggy_mode",
            label = "Laggy Mode(迟缓模式)",
            options =
            {
                {description = "关闭", data = "off", hover = "始终关闭"},
                {description = "开启", data = "on", hover = "始终开启"},
                {description = "按钮切换", data = "in_game", hover = "可在游戏中切换"},
            },
        },
        {
            name = "laggy_mode_key",
            label = "Laggy Mode Toggle Key(迟缓模式切换键)",
        }
    }
}
return info