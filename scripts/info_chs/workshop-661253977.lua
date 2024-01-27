local old_ver = "170403.21:59"
local version = KnownModIndex:GetModInfo("workshop-661253977").version

local info={
    name = "Don't Drop Everything(灵魂携带物品)",
    description = "当前版本："..version.."\n上一个版本："..old_ver..
                "\n·安装此mod后玩家死亡不会掉落所有物品。"..
                "\n\n！！！我为什么是中文？ ↓ ↓ ↓\n因为你安装了 Chinese++ Pro 模组。",
    configuration_options =
    {
    {name="kong",label="类型\n\n",options={{description ="数字",data = 0,}},default=0,},
        {
            name = "rendiao",
            label = "人身最大掉落",
            hover = "下面一排格子最大掉落的物品格数",
            options =
            {
                {description = "无", data = 0, hover = ""},
                {description = "1",  data = 1,  hover = ""},
                {description = "2",  data = 2,  hover = ""},
                {description = "3",  data = 3,  hover = ""},
                {description = "4",  data = 4,  hover = ""},
                {description = "5",  data = 5,  hover = ""},
                {description = "6",  data = 6,  hover = ""},
                {description = "7",  data = 7,  hover = ""},
                {description = "8",  data = 8,  hover = ""},
                {description = "9",  data = 9,  hover = ""}
            },
            default = 2,
        },
        {
            name = "baodiao",
            label = "背包最大掉落",
            hover = "背包的最大掉落的物品格数",
            options =
            {
                {description = "无", data = 0, hover = ""},
                {description = "1",  data = 1,  hover = ""},
                {description = "2",  data = 2,  hover = ""},
                {description = "3",  data = 3,  hover = ""},
                {description = "4",  data = 4,  hover = ""},
                {description = "5",  data = 5,  hover = ""},
                {description = "6",  data = 6,  hover = ""},
                {description = "7",  data = 7,  hover = ""},
                {description = "8",  data = 8,  hover = ""},
                {description = "9",  data = 9,  hover = ""}
            },
            default = 1,
        },
        {
            name = "zbdiao",
            label = "装备掉落",
            hover = "死亡是否必然掉落装备\n没有肉身要如何装备？\n防止灵魂状态装备掉耐久",
            options =
            {
                {description = "开", data = true, hover = ""},
                {description = "关",  data = false,  hover = ""}
            },
            default = true,
        },
        {
            name = "amudiao",
            label = "重生护符过滤器",
            hover = "死亡是否必然掉落一只重生护身符\n避免有携带重生护符但死亡没掉出来的悲剧\n默认开！",
            options =
            {
                {description = "开", data = true, hover = ""},
                {description = "关",  data = false,  hover = ""}
            },
            default = true,
        },
        {
            name = "nillots",
            label = "留一个空格子",
            hover = "死亡时候检测是否有空格子，没有则掉落身体第一个格子的物品，从而可以让队友复活",
            options =
            {
                {description = "开", data = 0, hover = ""},
                {description = "关",  data = 1,  hover = ""}
            },
            default = 0,
        }
    }
}
return info