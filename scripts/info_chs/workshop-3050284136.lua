local function title(label,CH_label)
    return{name= "",label=label,CH_label=CH_label,options={{description= "",data=0}},default=0,}
end

local info =
{
    name = "Chasni 模组配置 [成就与等级配置]",
    description = [[自定义chasni的模组]],
    configuration_options = {
        title("Auto-Achieve Achievement","自动实现的成就"),
        {
            name = "FIRSTEAT",
            label = "第一口",
            hover = "吃下第一口食物",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "SUPEREAT",
            label = "美食家",
            hover = "吃下所有列出的料理",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EATALL",
            label = "满汉全席",
            hover = "吃下所有列出的料理",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EATHOT",
            label = "寒风瑟瑟",
            hover = "在过冷状态吃下增温的食物",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EATCOLD",
            label = "夏日炎炎",
            hover = "在过热状态吃下降温的食物",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EATMANDRAKE",
            label = "吃完一起躺板板",--原内容：420
            hover = "吃下煮熟的曼德拉草",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EATGUARDIANHORN",
            label = "手滑？",
            hover = "吃下守护者之角",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EATMONSTERLASAGNA",
            label = "我的内心毫无波澜",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EATFAVOURITE",
            label = "美味",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EATGEAR",
            label = "系统升级",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EATKITSCHYIDOL",
            label = "“饭”困",
            hover = "吃下所有俗气雕像",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FEEDPLAYER",
            label = "吃播",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FEEDWARLY",
            label = "五星级美食",
            hover = "给伙伴喂食所有大厨特色菜",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FEEDWEBBER",
            label = "巫毒切换",
            hover = "给蜘蛛喂食所有变身涂鸦",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "DIECHARLIE",
            label = "我是萌新",
            hover = "死于黑暗",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "DIEEARTHQUAKE",
            label = "你对力量一无所知",
            hover = "死于落岩",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "DIEPOISON",
            label = "腐坏",
            hover = "死于孢子云",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "DEATH",
            label = "人被杀就会死",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "REVIVEEFFIGY",
            label = "重生",
            hover = "复活自肉身雕像",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "REVIVEWANDA",
            label = "第二次机会",
            hover = "复活自第二次机会表",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "REVIVEAMULET",
            label = "我救我自己",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "REVIVE",
            label = "救死扶伤",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "HEALTILLWEED",
            label = "麻药",
            hover = "用犁地草膏治疗",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "HEALWORTOX",
            label = "地狱治疗术",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "PACIFIST",
            label = "和平主义者",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "DAMAGEDEAL",
            label = "战斗狂人",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "TANK",
            label = "皮糙肉厚",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "DMGNODMG",
            label = "闪避点满",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "PLANTMASTER",
            label = "绿水青山",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FISHMASTER",
            label = "钓鱼佬绝不空军",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "PICKMASTER",
            label = "辛勤劳作",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "CHOPMASTER",
            label = "伐伐伐伐伐木工",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "MINEMASTER",
            label = "黄金矿工",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "COOKMASTER",
            label = "中华小当家",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "BUILDMASTER",
            label = "鲁班再世",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "HONEYMASTER",
            label = "养蜂人",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FLOWERMASTER",
            label = "花匠",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FERTILIZEMASTER",
            label = "园艺家",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FERTILIZEBIGMASTER",
            label = "树艺师",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "WALLMASTER",
            label = "总统",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "OLDAGE",
            label = "日月如梭",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "WALKALOT",
            label = "生命在于运动",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "STOPALOT",
            label = "一动不动是王八",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "CAVEAGE",
            label = "山顶洞人",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "WATERAGE",
            label = "水手",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "RIDER",
            label = "牛仔",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "RIDERWOBY",
            label = "大狗勾",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "LOGS",
            label = "植物标本馆",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "ROCKS",
            label = "业余地质学",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "SPORE",
            label = "捕捉孢子",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "BLUEPRINT",
            label = "建筑师",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "KRAMPUSSACK",
            label = "欧皇附体",
            hover = "拥有一个坎普斯背包",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "CURSEDTRINKET",
            label = "吉吉国王",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "GIANTPLANT",
            label = "大获丰收",
            hover = "收集所有巨型作物",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "GLASSMAKER",
            label = "玻璃吹制工",--Glassblower
            hover = "将所有玻璃尖刺和城堡握在手中",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "OCEANFISH",
            label = "水族馆",
            hover = "收集所有海鱼",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "WICKERBOOK",
            label = "图书馆",
            hover = "收集薇克巴顿所有的书",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FULLSANITY",
            label = "保持冷静",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FULLHUNGER",
            label = "饱荒",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FULLMIGHTY",
            label = "健身达人",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FULLSINGINSP",
            label = "女中音",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FRIENDPIG",
            label = "你是好人，我跟着你！",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FRIENDBUNNY",
            label = "你对我就像哥哥一样",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FRIENDMERM",
            label = "让鱼人族更加强大！",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FRIENDCAT",
            label = "噬元兽与猫奴",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FRIENDROCKY",
            label = "拳击教练",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FRIENDCLOCKWORK",
            label = "开盲盒",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FRIENDSPIDER",
            label = "蜘蛛大军",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "MANDRAKE",
            label = "森林精灵",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "PET",
            label = "忠诚的追随者",
            hover = "领养一只你喜欢的宠物",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "SNOWCHESTER",
            label = "移动冰箱",
            hover = "使切斯特变身冰切斯特",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "MUSICHUTCH",
            label = "派对时间",
            hover = "使哈奇变身音乐哈奇",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "BERNIE",
            label = "洋娃娃和小熊",
            hover = "使伯尼变大",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "SMALLBIRD",
            label = "年轻的叛逆者",
            hover = "孵化出一只高脚鸟",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FRIENDLYLAVAE",
            label = "温暖的朋友",
            hover = "孵化出一只超级可爱岩浆虫",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "SANITYMAXWELL",
            label = "精神病患",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "NOSANITY",
            label = "人工智障",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "LUNACY",
            label = "头脑清醒",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "STARVE",
            label = "饥荒",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "ICEBODY",
            label = "寒霜侵袭",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FIREBODY",
            label = "熔岩入体",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "MOISTBODY",
            label = "湿身诱惑",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "BURN",
            label = "红红火火",
            hover = "身上着火",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FREEZE",
            label = "活体冰雕",
            hover = "被冻住",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "DROWN",
            label = "加油，奥利给！",
            hover =  "尝试在海里游泳",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "LIGHTNING",
            label = "天打雷劈",
            hover = "被雷击中",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EVILFLOWER",
            label = "邪恶之花",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "ROSES",
            label = "带刺的玫瑰",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "WITHER",
            label = "被遗忘的",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "KILLBUTTERFLY",
            label = "小黄油游戏",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "KILLBIRD",
            label = "恐鸟症",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "KILLDUSTMOTH",
            label = "清洁蛾子",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "KILLGLOOMER",
            label = "第一滴血",--First Blood
            hover = "打死格罗姆",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "KILLCHESTER",
            label = "双杀",--Double Kill
            hover = "打死切斯特",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "KILLHUTCH",
            label = "三杀",--Tripple Kill
            hover = "以不到 10 点生命值杀死河豚形态的哈奇",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "KILLFRIENDLYFRUITFLY",
            label = "四杀",--Ultra Kill
            hover = "打死友好果蝇",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "HAMMERHOUSE",
            label = "我家呢",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "HAUNTPIG",
            label = "阿飘飘飘",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "PASSTRINKET",
            label = "遗愿",
            hover = "将诅咒饰品传给其他玩家",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "WATERBALLOON",
            label = "打水仗",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "VILEWORMWOOD",
            label = "破坏环境",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "PLAYWES",
            label = "小丑竟是我自己",
            hover = "用维斯玩游戏",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "LIGHTNINGGOAT",
            label = "咩咩咩？",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "BEEFALO",
            label = "庖丁解牛",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "SALADMANDER",
            label = "火龙果",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "HORRORHOUND",
            label = "生化危机",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "WEREPIG",
            label = "免费猪皮来啦",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "BEARDLORD",
            label = "兔兔辣么可爱",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "MOSLING",
            label = "小鸭子嘎嘎叫",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "BIRCHNUT",
            label = "有本事你来追我",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "TREEGUARD",
            label = "百年树人",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "LAVAE",
            label = "杀虫",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "SPIDERQUEEN",
            label = "征服蜘蛛精",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "PENGUL",
            label = "极地漫步",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "TENTAPILLAR",
            label = "入口在哪里呀",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "SEAWEED",
            label = "除草",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "GRASSGATOR",
            label = "缝合怪",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "KOALEFANT",
            label = "蓝色象征",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EWECUS",
            label = "蛇皮走位",
            hover = "单杀钢羊",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "GHOST",
            label = "孤魂野鬼",
            hover = "单杀幽灵",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "GNARWAIL",
            label = "断角独角鲸",
            hover = "单杀一角鲸",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "ROCKJAW",
            label = "鲨鱼袭击",
            hover = "单杀岩石大白鲨",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "SANTAKLAUS",
            label = "圣诞礼物",
            hover = "击杀克劳斯",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "DRAGONFLY",
            label = "屠龙少年",
            hover = "击杀龙蝇",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "MALBATROSS",
            label = "一锅装不下",
            hover = "击杀邪天翁",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "CRABKING",
            label = "横行霸道",
            hover = "击杀帝王蟹",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "SHADOWPIECHE",
            label = "暗影杀手",
            hover = "击杀第三阶段的三基佬",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "ANCIENTGUARDIAN",
            label = "没有买卖就没有杀害",
            hover = "击杀远古守护者",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "ANCIENTFUELWEAVER",
            label = "征服黑暗",
            hover = "击杀远古织影者",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "CELESTIALCHAMPION",
            label = "月食来临",
            hover = "击杀天体英雄三阶段",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "NIGHTMAREWEREPIG",
            label = "♥♥♥♥ 噩梦猪猪",
            hover = "击杀噩梦猪人",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "TOADSTOOL",
            label = "展示真正的实力！",
            hover = "击杀悲惨的毒菌蟾蜍",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "BEEQUEEN",
            label = "热身完毕",
            hover = "击杀蜂王",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "TWINTERROR",
            label = "以眼还眼",
            hover = "击杀双子魔眼",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "SEASONBOSS",
            label = "四季领主",
            hover = "击杀所有季节 BOSS",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "OPENTREASURE",
            label = "寻宝者",
            hover = "打开一个沉底的宝箱",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "PIRATECHEST",
            label = "藏宝地",
            hover = "挖掘一个海盗藏宝地",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "TRADER",
            label = "PY交易",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "DANCE",
            label = "你你你你要跳舞吗",
            hover = "向其他玩家表达你的感受",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "PICKTUMBLEWEED",
            label = "杂草入侵",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "SITTING",
            label = "Witnessing Chair",--Witnessing Chair
            hover = "Sit",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "SACRIFICECOTL",
            label = "邪教成员",--Cult Member
            hover = "用咩咩雕像烹饪兔子",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "SEWING",
            label = "缝缝补补又三年",
            hover = "使用针线包",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "SKINITEM",
            label = "氪金玩家",
            hover = "装备带有皮肤的物品",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "IRIDESCENTGEMS",
            label = "五光十色",
            hover = "制作彩虹宝石",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "PIPSPOOK",
            label = "鬼马小精灵",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "DODGECHARLIE",
            label = "相煎何太急",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "WALKTURF",
            label = "探索者",
            hover = "走过40个不同的地皮",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "BUILDRESEARCHLAB",
            label = "傲慢",
            hover = "建造所有【原型工具和制作站】建筑",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "BUILDLIGHTSOURCE",
            label = "色欲",
            hover = "建造所有【光源】建筑",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "BUILDBASEGUARD",
            label = "暴怒",
            hover = "建造所有功能性建筑",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "BUILDSLEEPER",
            label = "懒惰",
            hover = "建造所有用于睡觉的建筑",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "BUILDFOODTHING",
            label = "暴食",
            hover = "建造所有与食物相关的建筑",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "INTOGAME",
            label = "新的开始",
            hover = "成功进入游戏",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "STARSPENT",
            label = "成就明星",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "COMPLETE",
            label = "我毕业啦",
            hover = "完成所有的成就",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        title("Disable Perk","禁用技能"),
        {
            name = "HUNGERUP",
            label = "提升饱腹",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "HEALTHUP",
            label = "提升血量",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "SANITYUP",
            label = "提升精神",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "HUNGERRATEUP",
            label = "延缓饥饿",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "HEALTHREGENUP",
            label = "自然回血",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "SANITYREGENUP",
            label = "自然回脑",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "SPEEDUP",
            label = "提升速度",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "ABSORBUP",
            label = "提升防御",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "DAMAGEUP",
            label = "提升攻击",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "PLANARABSORBUP",
            label = "位面防御",--Planar Defense +
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "PLANARDAMAGEUP",
            label = "位面伤害",--Planar Damage +
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "CRITICALUP",
            label = "暴击概率",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "LIFESTEALUP",
            label = "攻击吸血",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FIREFLYLIGHTUP",
            label = "萤火微光",
            hover = "身上发出一定范围的光照",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "SCALEUP",
            label = "长大！",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "REPAIRITEMUP",
            label = "纳米修复",
            hover = "装备与武器会慢恢复耐久",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "REPAIRMAGIUP",
            label = "大魔导师",
            hover = "装备的魔法物品会缓慢恢复耐久",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "REPAIRFOODUP",
            label = "延缓变质",
            hover = "携带的食物缓慢恢复新鲜度",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "KRAMPUSSACKUP",
            label = "坎普斯背包搜寻者",--Sack Seeker
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "NOMOIST",
            label = "无形之伞",
            hover = "不会因下雨而身上变得潮湿",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "ICEMASTER",
            label = "低温免疫",
            hover = "不会过冷",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FIREMASTER",
            label = "高温免疫",
            hover = "不会过热",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FASTWORKER",
            label = "无影手",
            hover = "快速采集和制造",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "MINEFASTER",
            label = "一键挖矿",
            hover = "一下挖掉矿",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "CHOPFASTER",
            label = "一键砍树",
            hover = "一下砍倒树",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "FISHFASTER",
            label = "垂钓圣手",
            hover = "池塘钓鱼立刻上钩",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "COOKFASTER",
            label = "烹调圣手",
            hover = "食材放进锅里后立刻煮好",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "WALLREPAIRER",
            label = "墙壁固定器",
            hover = "墙壁直接修复至最高",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "DOUBLEHEALED",
            label = "快速治疗",
            hover = "治疗物品拥有双倍治疗效果",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "BRAMBLERESIST",
            label = "荆棘外壳",
            hover = "免疫植物荆棘",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "NOSTAFFSANITY",
            label = "空间法师",
            hover = "使用传送法杖不会降低理智值",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "BLUEPRINTEXTRACTOR",
            label = "人类制图师",--Human Cartographer
            hover = "能够将纸张分解成一些材料",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "ANIMALLOVER",
            label = "动物伙伴",
            hover = "动物不会害怕你",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "STRONGERGRIP",
            label = "强抓地力",
            hover = "超强抓地力，不会被击飞",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "DOUBLEPICK",
            label = "双倍采集",
            hover = "采集收获两份产品",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "DOUBLEDROP",
            label = "双倍掉落",
            hover = "击杀多掉落一份份战利品",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "BUILDCHEAPER",
            label = "偷工减料",
            hover = "制作材料消耗减半",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "READER",
            label = "书籍阅读",
            hover = "获得阅读魔法书的能力",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "MASTERCHEF",
            label = "法国大厨",
            hover = "获得使用红色厨具的能力",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWILSON1",
            label = "月眼可食用",
            hover = "威尔逊可以吃月眼               以获得永久属性",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWILSON2",
            label = "无限宝石",
            hover = "威尔逊携带宝石                 以获得额外BUFF",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWES1",
            label = "喜剧之王",
            hover = "使用维斯可获得 200% 经验值",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWES2",
            label = "保持初心",
            hover = "维斯可以制作更多气球",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWOODIE1",
            label = "被驯服的野兽",
            hover = "伍迪完全控制变身",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWOODIE2",
            label = "咔嚓咔嚓",
            hover = "伍迪可以吃木头获得属性",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWOODIE3",
            label = "变身！！！",
            hover = "伍迪的变身效果更强大",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWINONA1",
            label = "高级工程师",
            hover = "薇诺娜可以建造更多建筑",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWEBBER1",
            label = "蛛蛛召唤者",
            hover = "韦伯戴蜘蛛帽时会生成随机的蜘蛛",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWEBBER2",
            label = "毛绒绒耳语者",
            hover = "韦伯可以与毛绒绒交朋友并且为毛绒绒搭窝",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWEBBER3",
            label = "蜘蛛面具",
            hover = "韦伯可以制作特殊面具",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWX1",
            label = "WX-24",
            hover = "WX-78的插槽增加到 24",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWX2",
            label = "WX-99",
            hover = "WX-78的电路无限耐久",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWX3",
            label = "WX-6",
            hover = "WX-78吃齿轮时可获得 6 充能",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWILLOW1",
            label= "爱心小熊",
            hover = "薇洛可以随意召唤伯尼",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWILLOW2",
            label= "羁绊",
            hover = "伯尼的伤害值和生命回复速度         取决于薇洛的伤害值和最大生命值",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWILLOW3",
            label= "火神赐福",
            hover = "薇洛可以制造特殊武器",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWATHG1",
            label = "神王赐福",
            hover = "薇格弗徳可以制造特殊武器",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWATHG2",
            label = "歌剧天后",
            hover = "薇格弗徳可以制作更多战歌",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWENDY1",
            label= "（不）稳定配方",
            hover = "增强灵药",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWENDY2",
            label= "灵丹妙药",
            hover = "可以制作新灵药",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWENDY3",
            label= "灵魂契约",
            hover = "姐妹骨灰罐获得额外效果",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWOLF1",
            label = "登峰造极",
            hover = "沃尔夫冈健身值                     更容易增长且更慢下降",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWOLF2",
            label = "战神赐福",
            hover = "沃尔夫冈可以制造特殊武器",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWALTER1",
            label = "忠诚伙伴",
            hover = "沃比一直保持大形态",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWALTER2",
            label = "幸运射击",
            hover = "骑沃比时最多射出 4 发弹药",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWALTER3",
            label = "超级侦察兵",
            hover = "沃尔特可以制造特殊武器",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWICKER1",
            label = "神秘学·卷一",
            hover = "薇克巴顿读书不会降低理智值",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWICKER2",
            label = "神秘学·卷二",
            hover = "薇克巴顿的魔法书效果增强",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWICKER3",
            label = "神秘学·卷三",
            hover = "薇克巴顿可以制作更多书",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWAXWELL1",
            label = "旧日印象",
            hover = "可以召唤旧版暗影仆从",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWAXWELL2",
            label = "哥特",--Goth
            hover = "在阴影中伤害增加，受伤减少，但。。。",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWAXWELL3",
            label = "黑暗神赐福",
            hover = "可以制作更多特殊工具",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWARLY1",
            label = "额外调味品",
            hover = "三重调味站产品",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWARLY2",
            label = "数据共享",
            hover = "吃东西会向所有玩家显示食物数据",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWARLY3",
            label = "炊事班长",
            hover = "沃利可以制作特殊武器",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWORM1",
            label = "冥后赐福",
            hover = "沃姆伍德可以制作特殊工具",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWORM2",
            label = "徒手施肥",
            hover = "沃姆伍德可以用手给植物施肥",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWORTOX1",
            label = "快乐瞬移",
            hover = "沃托克斯地图上灵魂跳跃总是花费 5 ",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWORTOX2",
            label = "镇魂石",
            hover = "沃托克斯最大灵魂携带数量不限",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWORTOX3",
            label = "冥王赐福",
            hover = "沃托克斯可以制造特殊武器",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWANDA1",
            label = "高级钟表匠",
            hover = "旺达可以制作更多怀表",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWANDA2",
            label = "大师钟表匠",
            hover = "怀表效果更强",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWURT1",
            label = "海神赐福",
            hover = "沃特可以制作特殊武器",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWURT2",
            label = "鱼人女王",
            hover = "生成一个贴身保镖以及鱼人王加成更强",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWONK1",
            label = "猴爪",
            hover = "芜猴可以在地下挖掘和移动",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EXPERTWONK2",
            label = "月亮码头真正的力量",
            hover = "拥有的诅咒饰品越多，芜猴越强大",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "ENGINEERING",
            label = "工程科技",
            hover = "可制作薇诺娜的建筑",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "WIGFRIDBUILDPERK",
            label = "舞台艺术",
            hover = "可制作薇格弗徳的战斗装备",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "WALTERBUILDPERK",
            label = "童子军团",
            hover = "可制作沃尔特的松树先锋队物品",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "KLAUSSACKBUILDER",
            label = "圣诞老人",
            hover = "可制作赃物袋和鹿角",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "ANCIENTSTATION",
            label = "远古使者",
            hover = "可制作远古伪科学物品",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "LUNARCRAFT",
            label = "月球领主",
            hover = "可制作天体物品",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "PEARLCRAFT",
            label = "珍珠挚友",
            hover = "可制作瓶罐交易物品",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "MADSCIENCECRAFT",
            label = "疯狂科学家",
            hover = "可制作疯狂科学物品",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EVENTCRAFT",
            label = "过年好！",
            hover = "可制作春节活动物品",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "CARNIVALCRAFT",
            label = "游乐园",
            hover = "可制作嘉年华活动物品",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "BOSSITEMCRAFT",
            label = "传奇铁匠",
            hover = "可制作 BOSS 掉落的装备",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "DENCRAFT",
            label = "宝可梦",
            hover = "可制作动物巢穴",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "ADDSTAT",
            label = "新的开始",
            hover = "立即将饥饿、健康和精神恢复为最大值",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "REVIVEALL",
            label = "亡灵法师",
            hover = "立即复活所有玩家",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "LEVELUP",
            label = "有经验的冒险者",
            hover = "立即获得5000经验值",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "MATERIAL",
            label = "有准备的冒险者",
            hover = "立即获得基础资源和食物",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "ROBINEGG",
            label = "亲代铭印",
            hover = "获得岩蛋",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "KILLHOUND",
            label = "猎犬走了！",
            hover = "杀死附近所有猎犬",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "ETERNALCAGE",
            label = "不死鸟",
            hover = "鸟笼中鸟无需喂食",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "ETERNALICEBOX",
            label = "永鲜",
            hover = "冰箱里的食物会缓慢恢复新鲜度",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "ETERNALTHERMAL",
            label = "暖石无耐久",
            hover = "（几乎）无限使用暖石",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EASYFARM",
            label = "超强肥力",
            hover = "更容易种出巨大作物",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "EASYBEEF",
            label = "轻松驯牛",
            hover = "驯牛更容易",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "TANKYBOAT",
            label = "坦克船",
            hover = "船有3倍耐久",
            options =
            {
                {description = "开启",  data = true},
                {description = "开启", data = true},
            },
            default = true
        },
        {
            name = "BOSSHUNTING",
            label = "巨人国",
            hover = "可疑的土堆可以追踪到新添加的BOSS",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "BOSSHP",
            label = "更大",
            hover = "根据存活天数按比例                     缩放 BOSS 的生命值",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "BOSSDMG",
            label = "更强",
            hover = "根据存活天数按比例                     缩放 BOSS 的伤害值",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "MERMBUFF",
            label = "鱼人崛起",
            hover = "根据存活天数按比例                     缩放鱼人的生命值和伤害值",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
        {
            name = "SPIDERBUFF",
            label = "蜘蛛侵扰",
            hover = "根据存活天数按比例                     缩放蜘蛛的生命值和伤害值",
            options =
            {
                {description = "开启",  data = true},
                {description = "关闭", data = false},
            },
            default = false
        },
    }
}
return info