local version = KnownModIndex:GetModInfo("workshop-2342521033").version
if KnownModIndex:GetModInfo("workshop-2342521033").name == "Entity Indicators" then
    modname = "Entity Indicators(实体指示器)"
end
local description = KnownModIndex:GetModInfo("workshop-2342521033").description
description = description:gsub("Do you feel it%? Call of blood and maybe stomach too! Thirsty for fight and delicious meat, you looking for enemies. But you never know where they are when you need them%? Well. Let's Hunt and Don't Starve... Together!", "你感觉到了吗？血液的呼唤.. 也许还有胃！\n渴望战斗和美味的肉，你在寻找敌人。但当你需要它们的时候 你永远不知道它们在哪里？\n好。让我们一起狩猎 还有不要挨饿...一起！")
description = description:gsub("What's New", "新功能")
description = description:gsub("Added Mutated bosses %+ Nightmare Werepig", "添加了变异BOSS + 噩梦猪人")
description = description:gsub("Fixed Heads only", "修复 仅头部")
description = description:gsub("Credits", "借用了以下MOD作者的代码")
description = description:gsub("Version", "版本")


local opt_Empty = {{description = "", data = 0}}
local function Title(title, label, hover)
    return {
        name = title,
        label = label,
        hover = hover,
        options = opt_Empty,
        default = 0,
    }
end

    --Config
local info =
{
    name = modname,
    description = description,
    configuration_options =
    {
    Title("Indicator Settings","指示器设置"),
--[[    {
        name = "indic_bg",
        label = "Indicator Background",
        hover = "Want a Indicator Background",
        options ={
                        {description = "是", data = 1},
                        {description = "否", data = 0},
                    },
        default = 1,
    



    }, ]]

    {
        name = "headonly",
        label = "头部或身体",
        hover = "有些怪物只会使用头部，而不是整个身体",
        options =

        {
            {description = "仅头部", data = 1},
            {description = "整个身体", data = 2},

        },
        default = 1,
    },

    {
        name = "font",
        label = "悬停文字字体",
        hover = "挑一个",
        -- options =
        -- {
        --     {description = "Belisa Plumilla", data = 1},--我想这不是我要汉化的
        --     {description = "Hammerhead", data = 2},

        -- },
        default = 1,
    },


    Title("Seasonal Bosses","季节性BOSS"),
        {
        name = "DEERCLOPS",
        label = "独眼巨鹿",
        hover = "如果你不想看到独眼巨鹿的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
        {
        name = "BEARGER",
        label = "熊罐",
        hover = "如果你不想看到熊罐的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
        {
        name = "DRAGONFLY",
        label = "龙蝇",
        hover = "如果你不想看到龙蝇的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
        {
        name = "MOOSE",
        label = "麋鹿鹅",
        hover = "如果你不想看到麋鹿鹅的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
--BOSS
    Title("A New Reign","新王朝"),
    --ANR
    {
        name = "TOAD",
        label = "毒菌蟾蜍",
        hover = "如果你不想看到毒菌蟾蜍的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
        {
        name = "TOAD_DARK",
        label = "悲惨的毒菌蟾蜍",
        hover = "如果你不想看到悲惨的毒菌蟾蜍的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
        {
        name = "ANT",
        label = "蚁狮",
        hover = "如果你不想看到蚁狮的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
        {
        name = "KLAUS",
        label = "克劳斯",
        hover = "如果你不想看到克劳斯的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
        {
        name = "KLAUS_SACK",
        label = "赃物袋",
        hover = "如果你不想看到赃物袋的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
        {
        name = "BEEQ",
        label = "蜂王",
        hover = "如果你不想看到蜂王的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "SHADOWS",
        label = "暗影三基佬",
        hover = "如果你不想看到暗影三基佬（暗影骑士、暗影战车、暗影主教）的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "STALKERS",
        label = "复活的骨架&远古织影者",
        hover = "如果你不想看到复活的骨架(洞穴召唤的)、复活的骨架(地表召唤的森林守护者)、远古织影者\n请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    --RoT
    Title("Return of Them","旧神归来"),
        {
        name = "MALB",
        label = "邪天翁",
        hover = "如果你不想看到邪天翁的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "CRABK",
        label = "帝王蟹",
        hover = "如果你不想看到帝王蟹的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
   
    {
        name = "LORDFRUITFLY",
        label = "果蝇王",
        hover = "如果你不想看到果蝇王的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },

    {
        name = "ALTERGUARD",
        label = "天体英雄",
        hover = "如果你不想看到天体英雄的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
--CHAMPION
    
    Title("Ruins","远古遗迹"),
    {
        name = "MINOTAUR",
        label = "远古守护者",
        hover = "如果你不想看到远古守护者的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    Title("Mini-Bosses","小BOSS"),
    {
        name = "ENT",
        label = "树精守卫",
        hover = "如果你不想看到树精守卫的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "SPIDERQ",
        label = "蜘蛛女王",
        hover = "如果你不想看到蜘蛛女王的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    
    Title("Animals","动物"),
    {
        name = "BEEFALOS",
        label = "皮弗娄牛",
        hover = "如果你不想看到皮弗娄牛的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = false,
    },
    
    
    {
        name = "KOALEFANTS",
        label = "考拉象",
        hover = "如果你不想看到考拉象的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
        {
        name = "SPAT",
        label = "钢羊",
        hover = "如果你不想看到钢羊的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "WARG",
        label = "座狼",
        hover = "如果你不想看到座狼的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
        {
        name = "PILE",
        label = "土堆",
        hover = "如果你不想看到可疑的土堆的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },

--OTHER
    Title("Other","其它"),
    
    {
        name = "LIVINGTREE",
        label = "完全正常的树",
        hover = "如果你不想看到完全正常的树的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "DEER",
        label = "无眼鹿（普通的鹿和有角的鹿）",
        hover = "如果你不想看到无眼鹿（普通的鹿和有角的鹿）的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
   
    {
        name = "KITCOON",
        label = "小浣猫",
        hover = "如果你不想看到小浣猫的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = false,
    },
    {
        name = "FIREPITS",
        label = "火坑",
        hover = "如果你不想看到火坑的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = false,
    },

    {
        name = "MESSAGEBOTTLE",
        label = "瓶中信",
        hover = "如果你不想看到瓶中信的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = false,
    },

    {
        name = "SCULPTURES",
        label = "可疑的大理石",
        hover = "如果你不想看到可疑的大理石（战车鼻子、骑士和主教头）的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "MERMK",
        label = "鱼人之王",
        hover = "如果你不想看到鱼人之王的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "PIGKING",
        label = "猪王",
        hover = "如果你不想看到猪王的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "HOUND",
        label = "猎犬",
        hover = "如果你不想看到猎犬的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = false,
    },

    {
        name = "KRAMPUS",
        label = "坎普斯",
        hover = "如果你不想看到坎普斯的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "WALRUS_CAMP",
        label = "海象营地",
        hover = "如果你不想看到海象营地的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = false,
    },
        --{
        --name = "PEARL",
        --label = "珍珠",
        --hover = "如果你不想看到珍珠的指示器，请设置为“否”",
        --options ={
        --              {description = "是", data = true},
        --              {description = "否", data = false},
        --          },
        --default = true,
    --},
            {
        name = "M_SCULPTURES",
        label = "大理石雕塑",
        hover = "如果你不想看到大理石雕塑的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
            {
        name = "BOSS_CHESS",
        label = "BOSS棋子",
        hover = "如果你不想看到战车，骑士和主教的棋子的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
            {
        name = "CLOCKS",
        label = "发条装置",
        hover = "如果你不想看到战车、骑士和发条主教的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
            {
        name = "DMG_CLOCKS",
        label = "损坏的发条装置",
        hover = "如果你不想看到战车、骑士和损坏的发条主教的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },

    Title("Wilson Update","威尔逊更新"),
    {
        name = "DAYWALKER",
        label = "噩梦猪人",
        hover = "如果你不想看到噩梦猪人的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },

Title("Helpful Creatures","有用的生物"),
    {
        name = "CHESTER",
        label = "切斯特",
        hover = "如果你不想看到切斯特的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "HUTCH",
        label = "哈奇",
        hover = "如果你不想看到哈奇的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "GLOMMER",
        label = "格罗姆",
        hover = "如果你不想看到格罗姆的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "LAVAE_PET",
        label = "超级可爱岩浆虫",
        hover = "如果你不想看到超级可爱岩浆虫的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },

    {
        name = "CHESTER_EYEBONE",
        label = "切斯特眼骨",
        hover = "如果你不想看到切斯特眼骨的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = false,
    },
    {
        name = "HUTCH_FISHBOWL",
        label = "哈奇的星空",
        hover = "如果你不想看到星空的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = false,
    },
    {
        name = "GLOMMERFLOWER",
        label = "格罗姆花",
        hover = "如果你不想看到格罗姆花的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = false,
    },
    {
        name = "LAVAE_TOOTH",
        label = "岩浆虫尖牙",
        hover = "如果你不想看到岩浆虫尖牙的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = false,
    },





--EVENT
    Title("Event","事件"),
    {
        name = "G_WARG",
        label = "姜饼座狼",
        hover = "如果你不想看到姜饼座狼的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
        {
        name = "G_HOUSE",
        label = "姜饼猪屋",
        hover = "如果你不想看到姜饼猪屋的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
        {
        name = "G_PIG",
        label = "姜饼猪",
        hover = "如果你不想看到姜饼猪的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
        {
        name = "C_WARG",
        label = "黏土座狼",
        hover = "如果你不想看到黏土座狼的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },

    Title("Forge","熔炉"),
    {
        name = "BOARRIOR",
        label = "大熔炉猪战士",
        hover = "如果你不想看到大熔炉猪战士的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "TURTILLUS",
        label = "坦克龟",
        hover = "如果你不想看到坦克龟的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "TRAILS",
        label = "野猪猩",
        hover = "如果你不想看到野猪猩的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "BOARON",
        label = "战猪",
        hover = "如果你不想看到战猪的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "RHINODRILL",
        label = "犀牛兄弟",
        hover = "如果你不想看到犀牛兄弟的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "BEETLETAUR",
        label = "地狱独眼巨猪",
        hover = "如果你不想看到地狱独眼巨猪的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "PEGHOOK",
        label = "蝎子",
        hover = "如果你不想看到蝎子的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "SNAPPER",
        label = "鳄鱼指挥官",
        hover = "如果你不想看到鳄鱼指挥官的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },

 
Title("Gorge","暴食"),
    {
        name = "GOATMOM",
        label = "山羊玛姆茜",
        hover = "如果你不想看到山羊玛姆茜的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "GOATKID",
        label = "比利",
        hover = "如果你不想看到比利的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "SWAMPIGELDER",
        label = "沼泽猪长老",
        hover = "如果你不想看到沼泽猪长老的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "TMERM",
        label = "萨米",
        hover = "如果你不想看到萨米的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "TMERM2",
        label = "皮普顿",
        hover = "如果你不想看到皮普顿的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
Title("Island Adventures","岛屿冒险"),
    {
        name = "KRAKEN",
        label = "海妖",
        hover = "如果你不想看到海妖的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "TIGERSHARK",
        label = "虎鲨",
        hover = "如果你不想看到虎鲨的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "LEIF_PALM",
        label = "椰树精",
        hover = "如果你不想看到椰树精的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "TWISTER",
        label = "豹卷风",
        hover = "如果你不想看到豹卷风的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },



    {
        name = "CROCODOG",
        label = "鳄鱼",
        hover = "如果你不想看到鳄鱼的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = false,
    },

    Title("Terraria","泰拉瑞亚"),
    {
        name = "EYEOFTERROR",
        label = "恐怖之眼",
        hover = "如果你不想看到恐怖之眼的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    {
        name = "TWINOFTERROR1",
        label = "双子魔眼",
        hover = "如果你不想看到双子魔眼的指示器，请设置为“否”",
        options ={
                        {description = "是", data = true},
                        {description = "否", data = false},
                    },
        default = true,
    },
    Title("󰀔 Mod Version"..":".." "..version,"󰀔 Mod 版本"..":".." "..version),
    Title("󰀩 Modinfo Version:".." Cobalt","󰀩 Modinfo 版本:".." Cobalt"),
    }
}
return info