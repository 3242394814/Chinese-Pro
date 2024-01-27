local info={
    name="Nightmare phase indicator(暴动阶段指示器)",
    description = [[指示器显示当前暴动阶段和剩余时间。

在设置中，可以设置：
1) 屏幕上指示器的位置。
2) 计时器相对于指示器的位置。
3) 相对于指示器位置的暴动阶段名称的位置。
4) 指示器比例。
5) 阶段名称的语言。
6) 计时器可见性，阶段名称。
7) 指示器可见性：始终可见/物品栏有铥矿徽章时可见。
支持快捷宣告MOD。]],
    configuration_options =
    {
        {
            name  = "LANGUAGE",
            label = "语言",
            hover = "设置游戏内MOD语言",
            options =   {
                            {description = "Белоруский",  hover = "Belorussian",         data = "npi_be"},
                            {description = "Български",   hover = "Bulgarian",           data = "npi_bg"},
                            {description = "简体中文",      hover = "Chinese Simplified",  data = "npi_chs"},
                            {description = "繁體中文",      hover = "Chinese Traditional", data = "npi_cht"},
                            {description = "čeština",     hover = "Czech",               data = "npi_cs"},
                            {description = "Nederlands",  hover = "Dutch",               data = "npi_nl"},
                            {description = "English",     hover = "English",             data = "npi_en"},
                            {description = "Français",    hover = "French",              data = "npi_fr"},
                            {description = "Suomi",       hover = "Finnish",             data = "npi_fi"},
                            {description = "Deutsch",     hover = "German",              data = "npi_de"},
                            {description = "Italiano",    hover = "Italian",             data = "npi_it"},
                            {description = "日本語",       hover = "Japanese",            data = "npi_ja"},
                            {description = "한국어",        hover = "Korean",              data = "npi_ko"},
                            {description = "Polski",      hover = "Polish",              data = "npi_pl"},
                            {description = "Português",   hover = "Portuguese",          data = "npi_pt"},
                            {description = "Română",      hover = "Romanian",            data = "npi_ro"},
                            {description = "Pусский",     hover = "Russian",             data = "npi_ru"},
                            {description = "Español",     hover = "Spanish",             data = "npi_es"},
                            {description = "Svenska",     hover = "Swedish",             data = "npi_sv"},
                            {description = "Türkçe",      hover = "Turkish",             data = "npi_tr"},
                            {description = "Украiнський", hover = "Ukrainian",           data = "npi_uk"}
                        },
            default = "npi_chs",
        },
        {
            name    = "VISIBLY_HAVE_MEDALLION",
            label   = "可见性",
            hover   = "设置可见性",
            options =   {
                            { description = "有铥矿徽章", data = true },
                            { description = "总是",         data = false }
                        },
            default = false
        },
        {
            name    = "VISIBLE_ANIMATION",
            label   = "动画",
            hover   = "设置动画",
            options =   {
                            { description = "开",  data = true  },
                            { description = "关", data = false }
                        },
            default = true
        },
        {
            name    = "TIMER",
            label   = "计时器",
            hover   = "设置计时器可见性和位置",
            options =   {
                            { description = "隐藏",   data = "NONE"   },
                            { description = "顶部",    data = "TOP"    },
                            { description = "底部", data = "BOTTOM" },
                            { description = "居中", data = "CENTER" },
                            { description = "左侧",   data = "LEFT"   },
                            { description = "右侧",  data = "RIGHT"  }
                        },
            default = "BOTTOM"
        },
        {
            name    = "PHASE_NAME",
            label   = "阶段名称",
            hover   = "设置阶段名称可见性和位置",
            options =   {
                            { description = "隐藏",   data = "NONE"   },
                            { description = "顶部",    data = "TOP"    },
                            { description = "底部", data = "BOTTOM" },
                            { description = "居中", data = "CENTER" },
                            { description = "左侧",   data = "LEFT"   },
                            { description = "右侧",  data = "RIGHT"  }
                        },
            default = "CENTER"
        },
        {
            name    = "HORIZONTAL_ALIGNMENT",
            label   = "水平对齐方式",
            hover   = "设置水平对齐方式",
            options =   {
                            { description = "左侧",   data = "LEFT"   },
                            { description = "居中", data = "CENTER" },
                            { description = "右侧",  data = "RIGHT"  }
                        },
            default = "CENTER"
        },
        {
            name    = "VERTICAL_ALIGNMENT",
            label   = "垂直对齐方式",
            hover   = "设置垂直对齐方式",
            options =   {
                            { description = "顶部",    data = "TOP"    },
                            { description = "居中", data = "CENTER" },
                            { description = "底部", data = "BOTTOM" }
                        },
            default = "TOP"
        },
        {
            name    = "HORIZONTAL_MARGIN",
            label   = "水平边距",
            hover   = "设置水平边距。如果水平对齐为居中，则水平边距无效。",
            --options = horizontal_margin_options,
            default = 0
        },
        {
            name    = "VERTICAL_MARGIN",
            label   = "垂直边距",
            hover   = "设置垂直边距。如果垂直对齐为居中，则垂直边距无效。",
            --options = vertical_margin_options,
            default = 50
        },
        {
            name    = "SCALE",
            label   = "比例",
            hover   = "设置:比例",
            options =   {
                            { description = "100%", data = 1   },
                            { description = "90%",  data = 0.9 },
                            { description = "80%",  data = 0.8 },
                            { description = "70%",  data = 0.7 },
                            { description = "60%",  data = 0.6 },
                            { description = "50%",  data = 0.5 },
                            { description = "40%",  data = 0.4 },
                            { description = "30%",  data = 0.3 },
                        },
            default = 1
        },
    }
}
return info