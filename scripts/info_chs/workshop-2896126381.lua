local name = KnownModIndex:GetModInfo("workshop-2896126381").name
local version = KnownModIndex:GetModInfo("workshop-2896126381").version or "未知"
local a = {
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
    "I",
    "J",
    "K",
    "L",
    "M",
    "N",
    "O",
    "P",
    "Q",
    "R",
    "S",
    "T",
    "U",
    "V",
    "W",
    "X",
    "Y",
    "Z"
}
local b = 97
local c = {}
for d = 1, #a do
    c[d] = {description = a[d], data = d + b - 1}
end

local info=
{
    name = "Too Many Items Revisited(T键)",
    description =
name ..
"\n版本: " ..
version ..
[[


允许您生成任何您想要的物品和更强大的功能。
您必须是管理员才能使用此功能。
按（T）打开生成菜单。
左键单击以生成 1 个物品。
右键单击以生成 10 个物品。
开关按钮是可配置的。
您可以自定义特殊物品列表。
（按住 Ctrl 键并单击，即可添加或删除特殊物品。）

代码由C.J.B.编写，问题和错误修复由GaRAnTuLA完成，DST版本由Skull编写，修复由TheMightyPikachu和Electroely完成。
UI和代码优化由Tendy完成。|分类、美工和一些更新由乐十画完成。|传送功能、代码改进、修复和纹理由Alyssa完成。
]],
    configuration_options =
    {
        {
            name = "GOP_TMIP_TOGGLE_KEY",
            label = "开关按钮",
            hover = "显示TooManyItems界面所按的键。",
            options = c,
            default = 116 --T
        },
        {
            name = "GOP_TMIP_L_CLICK_NUM",
            label = "左击",
            hover = "从TooManyItems获得的物品数。",
            options = {
                {description = "1", data = 1},
                {description = "2", data = 2},
                {description = "3", data = 3},
                {description = "4", data = 4},
                {description = "5", data = 5}
            },
            default = 1
        },
        {
            name = "GOP_TMIP_R_CLICK_NUM",
            label = "右击",
            hover = "从TooManyItems获得的物品数。",
            options = {
                {description = "10", data = 10},
                {description = "15", data = 15},
                {description = "20", data = 20},
                {description = "25", data = 25},
                {description = "30", data = 30}
            },
            default = 10
        },
        {
            name = "GOP_TMIP_SEARCH_HISTORY_NUM",
            label = "搜索历史记录最大数量",
            hover = "仅保存这些搜索历史记录。",
            options = {
                {description = "5", data = 5},
                {description = "10", data = 10},
                {description = "20", data = 20},
                {description = "30", data = 30},
                {description = "40", data = 40},
                {description = "50", data = 50}
            },
            default = 10
        },
        {
            name = "GOP_TMIP_CATEGORY_FONT_SIZE",
            label = "类别标签的字体大小",
            hover = "如果使用其他字体，可以在此处调整。",
            options = {
                {description = "12", data = 12},
                {description = "14", data = 14},
                {description = "16", data = 16},
                {description = "18", data = 18},
                {description = "20", data = 20},
                {description = "22", data = 22},
                {description = "24", data = 24},
                {description = "26", data = 26},
                {description = "28", data = 28},
                {description = "30", data = 30}
            },
            default = 24
        },
        {
            name = "GOP_TMIP_LANGUAGE",
            label = "选择TMIR语言",
            hover = "默认为英文，中文玩家请手动调整设置",
            options = {
                {description = "English", data = "en"},
                {description="中文",data="cn"},
            },
            default = "en"
        },
        {
            name = "GOP_TMIP_DEBUG_FONT_SIZE",
            label = "调试菜单的字体大小",
            hover = "设置调试菜单的字体大小。",
            options = {
                {description = "12", data = 12},
                {description = "14", data = 14},
                {description = "16", data = 16},
                {description = "18", data = 18},
                {description = "20", data = 20},
                {description = "22", data = 22},
                {description = "24", data = 24},
                {description = "26", data = 26},
                {description = "28", data = 28},
                {description = "30", data = 30}
            },
            default = 24
        },
        {
            name = "GOP_TMIP_DEBUG_MENU_SIZE",
            label = "调试菜单的窗口宽度",
            hover = "设置调试菜单的窗口宽度。",
            options = {
                {description = "450", data = 450},
                {description = "500", data = 500},
                {description = "550", data = 550},
                {description = "600", data = 600},
                {description = "650", data = 650},
                {description = "700", data = 700}
            },
            default = 550
        }
    }
}
return info