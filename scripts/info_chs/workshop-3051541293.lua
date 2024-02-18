--我放弃汉化这个了 太多了还看不懂QAQ
--local function title(label)return{name="",label=label,options={{description="",data=0}},default=0,}end
local info =
{
    name = "Chasni 模组配置 [物品配置]",
    description = [[自定义chasni的模组]],
    configuration_options = {
        --title("Pith头盔"),
        {
            name = "ADVENTURE_HAT.SPD",
            label = "奖励移动速度",
            options =
            {
                {description = "40%", data = 1.4},
                {description = "35%",  data = 1.35},
                {description = "20%",  data = 1.2},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "ADVENTURE_HAT.DUR",
            label = "耐久",
            options =
            {
                {description = "2 天",    data = 2},
                {description = "1.5 天",  data = 1.5},
                {description = "1 天",     data = 1},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("放大镜"),
        {
            name = "MAGNIFYING_GLASS.CD",
            label = "冷却",
            options =
            {
                {description = "6 天", data = 6},
                {description = "4 天", data = 4},
                {description = "3 天", data = 3},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Blooming Watch"),
        {
            name = "POCKETWATCH_BLOOM.CD",
            label = "冷却",
            options =
            {
                {description = "45秒", data = 45},
                {description = "30秒", data = 30},
                {description = "20秒", data = 20},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Ember Watch"),
        {
            name = "POCKETWATCH_BURNT.CD",
            label = "冷却",
            options =
            {
                {description = "45秒", data = 45},
                {description = "30秒", data = 30},
                {description = "20秒", data = 20},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Ember Watch"),
        {
            name = "POCKETWATCH_REPAIR.CD",
            label = "冷却",
            options =
            {
                {description = "45秒", data = 45},
                {description = "30秒", data = 30},
                {description = "20秒", data = 20},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Anti-Leak Watch"),
        {
            name = "POCKETWATCH_REPAIR.CD",
            label = "冷却",
            options =
            {
                {description = "45秒", data = 45},
                {description = "30秒", data = 30},
                {description = "20秒", data = 20},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Corrupted Watch"),
        {
            name = "POCKETWATCH_CORRUPT.CD",
            label = "冷却",
            options =
            {
                {description = "10分", data = 600},
                {description = "6分",  data = 360},
                {description = "5分",  data = 300},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "POCKETWATCH_CORRUPT.DUR",
            label = "持续时间",
            options =
            {
                {description = "30秒", data = 30},
                {description = "25秒", data = 25},
                {description = "15秒", data = 15},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "POCKETWATCH_CORRUPT.DMG",
            label = "自身伤害",
            options =
            {
                {description = "50", data = 50},
                {description = "40", data = 40},
                {description = "30", data = 30},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Disassembler Watch"),
        {
            name = "POCKETWATCH_DECONSTRUCT.CD",
            label = "冷却",
            options =
            {
                {description = "5分", data = 300},
                {description = "3分", data = 180},
                {description = "2分", data = 120},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "POCKETWATCH_DECONSTRUCT.DMG",
            label = "自身伤害",
            options =
            {
                {description = "40", data = 40},
                {description = "20", data = 20},
                {description = "15", data = 15},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Toque Blanche"),
        {
            name = "CHEFHAT.HNG",
            label = "饥饿奖励",
            options =
            {
                {description = "85%",  data = 0.85},
                {description = "80%",  data = 0.8},
                {description = "65%",  data = 0.65},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Frying Pan"),
        {
            name = "FRYINGPAN.DMG",
            label = "基础伤害",
            options =
            {
                {description = "21",  data = 21},
                {description = "17",  data = 17},
                {description = "10",  data = 10},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "FRYINGPAN.USE",
            label = "Uses",
            options =
            {
                {description = "7",  data = 7},
                {description = "5",  data = 5},
                {description = "3",  data = 3},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Spider Mask"),
        {
            name = "WEBBERMASK.W_DUR",
            label = "Warrior durability",
            options =
            {
                {description = "2 天",   data = 2},
                {description = "1 天",    data = 1},
                {description = "0.5 天",  data = .5},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "WEBBERMASK.D_DUR",
            label = "Dropper durability",
            options =
            {
                {description = "7 天",  data = 7},
                {description = "5 天",  data = 5},
                {description = "2 天",  data = 2},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "WEBBERMASK.H_DUR",
            label = "Cave durability",
            options =
            {
                {description = "2 天",   data = 2},
                {description = "1 天",    data = 1},
                {description = "0.5 天",  data = .5},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "WEBBERMASK.S_DUR",
            label = "Spitter durability",
            options =
            {
                {description = "1 天",    data = 1},
                {description = "0.5 天",  data = .5},
                {description = "0.3 天",  data = .3},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "WEBBERMASK.DSPT",
            label = "Spitter damage",
            options =
            {
                {description = "14", data = 14},
                {description = "10", data = 10},
                {description = "5", data = 5},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "WEBBERMASK.RSPT",
            label = "Spitter range",
            options =
            {
                {description = "17", data = 17},
                {description = "15", data = 15},
                {description = "10", data = 10},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "WEBBERMASK.M_DUR",
            label = "Shattered durability",
            options =
            {
                {description = "2 天",   data = 2},
                {description = "1 天",    data = 1},
                {description = "0.5 天",  data = .5},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "WEBBERMASK.DMOON",
            label = "Shattered damage",
            options =
            {
                {description = "25", data = 25},
                {description = "20", data = 20},
                {description = "10", data = 10},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "WEBBERMASK.RMOON",
            label = "Shattered range",
            options =
            {
                {description = "5", data = 5},
                {description = "4", data = 4},
                {description = "3", data = 3},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "WEBBERMASK.L_DUR",
            label = "Nurse durability",
            options =
            {
                {description = "5 天",  data = 5},
                {description = "3 天",  data = 3},
                {description = "1 天",   data = 1},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "WEBBERMASK.HEAL",
            label = "Nurse heal",
            options =
            {
                {description = "20",  data = 20},
                {description = "15",  data = 15},
                {description = "10",  data = 10},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "WEBBERMASK.HWEB",
            label = "Nurse heal webber",
            options =
            {
                {description = "是", data = true},
                {description = "否",  data = false},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "WEBBERMASK.T_DUR",
            label = "Strider durability",
            options =
            {
                {description = "5 天",  data = 5},
                {description = "3 天",  data = 3},
                {description = "1 天",   data = 1},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "WEBBERMASK.P_DUR",
            label = "Poison durability",
            options =
            {
                {description = "5 天",  data = 5},
                {description = "3 天",  data = 3},
                {description = "1 天",   data = 1},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Balloon"),
        {
            name = "BALLOON.RED",
            label = "Drilling bad luck",
            options =
            {
                {description = "20%",  data = 0.8},
                {description = "30%",  data = 0.7},
                {description = "50%",  data = 0.5},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BALLOON.YELLOW",
            label = "Egg Yolk bad luck",
            options =
            {
                {description = "30%",  data = 0.7},
                {description = "40%",  data = 0.6},
                {description = "60%",  data = 0.4},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BALLOON.GREEN",
            label = "Green Goop bad luck",
            options =
            {
                {description = "30%",  data = 0.7},
                {description = "40%",  data = 0.6},
                {description = "60%",  data = 0.4},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BALLOON.BLUE",
            label = "Ice Pop bad luck",
            options =
            {
                {description = "40%",  data = 0.6},
                {description = "50%",  data = 0.5},
                {description = "70%",  data = 0.3},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BALLOON.PURPLE",
            label = "Magical Leaf bad luck",
            options =
            {
                {description = "20%",  data = 0.8},
                {description = "30%",  data = 0.7},
                {description = "50%",  data = 0.5},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Book-pack"),
        {
            name = "BOOKPACK.REST",
            label = "Restore value",
            options =
            {
                {description = "40", data = 40},
                {description = "30", data = 30},
                {description = "15", data = 15},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Automation 101"),
        {
            name = "BOOK_GATHER.USE",
            label = "Uses",
            options =
            {
                {description = "7", data = 7},
                {description = "5", data = 5},
                {description = "3", data = 3},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BOOK_GATHER.RNG",
            label = "Range",
            options =
            {
                {description = "25", data = 25},
                {description = "20", data = 20},
                {description = "15", data = 15},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("The Vanishing Girl"),
        {
            name = "BOOK_TELEPORT.USE",
            label = "Uses",
            options =
            {
                {description = "7", data = 7},
                {description = "5", data = 5},
                {description = "3", data = 3},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BOOK_TELEPORT.RNG",
            label = "Range",
            options =
            {
                {description = "20", data = 20},
                {description = "15", data = 15},
                {description = "10", data = 10},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Competitive Programming"),
        {
            name = "BOOK_SHIELD.DUR",
            label = "持续时间",
            options =
            {
                {description = "8", data = 8},
                {description = "6", data = 6},
                {description = "3", data = 3},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BOOK_SHIELD.USE",
            label = "Uses",
            options =
            {
                {description = "3", data = 3},
                {description = "2", data = 2},
                {description = "1", data = 1},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BOOK_SHIELD.RNG",
            label = "Range",
            options =
            {
                {description = "15", data = 15},
                {description = "10", data = 10},
                {description = "5",  data = 5},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Interupted Leitmotif"),
        {
            name = "BATTLESONG_INSTANT_DROPATTACK.DUR",
            label = "持续时间",
            options =
            {
                {description = "30", data = 30},
                {description = "25", data = 25},
                {description = "15", data = 15},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Energized Overtune"),
        {
            name = "BATTLESONG_INSTANT_ELECTRIC.DUR",
            label = "持续时间",
            options =
            {
                {description = "35", data = 35},
                {description = "30", data = 30},
                {description = "20", data = 20},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Thor's Cape"),
        {
            name = "THUNDER_ARMOR.ARMOR",
            label = "Armor",
            options =
            {
                {description = "75%", data = 0.75},
                {description = "70%", data = 0.7},
                {description = "60%", data = 0.6},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "THUNDER_ARMOR.DUR",
            label = "Durability",
            options =
            {
                {description = "2250", data = 2250},
                {description = "2000", data = 2000},
                {description = "1500", data = 1500},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "THUNDER_ARMOR.REP",
            label = "Repair Speed",
            options =
            {
                {description = "1.25", data = 1.25},
                {description = "1",    data = 1},
                {description = "0.5",  data = 0.5},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Astrape Tiara"),
        {
            name = "THUNDER_ARMOR.BAT",
            label = "Life steal",
            options =
            {
                {description = "2",    data = 2},
                {description = "1.75", data = 1.75},
                {description = "1",    data = 1},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "THUNDER_ARMOR.REF",
            label = "Damage reflect",
            options =
            {
                {description = "2",    data = 2},
                {description = "1.5", data = 1.5},
                {description = "1",    data = 1},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "THUNDER_ARMOR.SPD",
            label = "Bonus Movement Speed",
            options =
            {
                {description = "30%", data = 1.3},
                {description = "25%", data = 1.25},
                {description = "0%",  data = 1},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Thunderswolt"),
        {
            name = "THUNDER_SPEAR.BDM",
            label = "基础伤害",
            options =
            {
                {description = "21",    data = 21},
                {description = "17",    data = 17},
                {description = "10",    data = 10},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "THUNDER_SPEAR.DMM",
            label = "Damage Multiplier",
            options =
            {
                {description = "45",    data = 45},
                {description = "40",    data = 40},
                {description = "30",    data = 30},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "THUNDER_SPEAR.SDM",
            label = "自身伤害",
            options =
            {
                {description = "30",    data = 30},
                {description = "20",    data = 20},
                {description = "15",    data = 15},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "THUNDER_SPEAR.CRG",
            label = "Charge bonus",
            options =
            {
                {description = "+1", data = 1},
                {description = "0",  data = 0},
                {description = "-1", data = -1},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "THUNDER_SPEAR.CD",
            label = "冷却",
            options =
            {
                {description = "450秒",    data = 450},
                {description = "300秒",    data = 300},
                {description = "250秒",    data = 250},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Natsu Scarf"),
        {
            name = "FIRE_ARMOR.INS",
            label = "Insulation",
            options =
            {
                {description = "480",    data = 480},
                {description = "240",    data = 240},
                {description = "120",    data = 120},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "FIRE_ARMOR.BDM",
            label = "Base damage multiplier",
            options =
            {
                {description = "60%",    data = 0.6},
                {description = "50%",    data = 0.5},
                {description = "35%",    data = 0.35},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Dragon Head Hat"),
        {
            name = "FIRE_HAT.ARM",
            label = "Armor",
            options =
            {
                {description = "80%",    data = 0.8},
                {description = "70%",    data = 0.7},
                {description = "50%",    data = 0.5},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "FIRE_HAT.BRR",
            label = "Burn radius",
            options =
            {
                {description = "4",    data = 4},
                {description = "3",    data = 3},
                {description = "2",    data = 2},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "FIRE_HAT.IGR",
            label = "Ignite radius",
            options =
            {
                {description = "15",    data = 15},
                {description = "12",    data = 12},
                {description = "10",    data = 10},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "FIRE_HAT.IGI",
            label = "Ignite Chance",
            options =
            {
                {description = "0.5x", data = 90},
                {description = "1x",   data = 45},
                {description = "2x",   data = 23},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Metal of Hephaestus"),
        {
            name = "FIRE_ROCK.HEAT",
            label = "Heat",
            options =
            {
                {description = "10",   data = 10},
                {description = "5",    data = 5},
                {description = "0",    data = 0},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Sword of Hephaestus"),
        {
            name = "FIRE_SPEAR.USE",
            label = "Uses",
            options =
            {
                {description = "480",    data = 480},
                {description = "360",    data = 360},
                {description = "240",    data = 240},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "FIRE_SPEAR.BDM",
            label = "基础伤害",
            options =
            {
                {description = "40",    data = 40},
                {description = "34",    data = 34},
                {description = "21",    data = 21},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "FIRE_SPEAR.FDM",
            label = "Burn Damage",
            options =
            {
                {description = "95",    data = 95},
                {description = "85",    data = 85},
                {description = "51",    data = 51},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "FIRE_SPEAR.HEAT",
            label = "Heat",
            options =
            {
                {description = "120",     data = 120},
                {description = "100",     data = 100},
                {description = "85",      data = 85},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "FIRE_SPEAR.CD",
            label = "冷却",
            options =
            {
                {description = "10",   data = 10},
                {description = "8",    data = 8},
                {description = "7",    data = 7},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Meteor Staff"),
        {
            name = "FIRE_STAFF.USE",
            label = "Uses",
            options =
            {
                {description = "480",    data = 480},
                {description = "360",    data = 360},
                {description = "240",    data = 240},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "FIRE_STAFF.DMG",
            label = "伤害",
            options =
            {
                {description = "21",    data = 21},
                {description = "17",    data = 17},
                {description = "10",    data = 10},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "FIRE_STAFF.MDM",
            label = "Meteor damage multiplier",
            options =
            {
                {description = "12",   data = 12},
                {description = "11",   data = 11},
                {description = "8",    data = 8},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "FIRE_STAFF.HEAT",
            label = "Heat",
            options =
            {
                {description = "120",     data = 120},
                {description = "100",     data = 100},
                {description = "85",      data = 85},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "FIRE_STAFF.CD",
            label = "冷却",
            options =
            {
                {description = "15",   data = 15},
                {description = "0",    data = 0},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "FIRE_STAFF.EXRAD",
            label = "Extinguish radius",
            options =
            {
                {description = "20",   data = 20},
                {description = "16",    data = 16},
                {description = "10",    data = 10},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "FIRE_STAFF.CRG",
            label = "Charge bonus",
            options =
            {
                {description = "x2", data = 2},
                {description = "x1", data = 1},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Pugalisk Trapdoor"),
        {
            name = "PUGALISK_TRAPDOOR.RAD",
            label = "Radius",
            options =
            {
                {description = "3", data = 4},
                {description = "5", data = 5},
                {description = "8", data = 8},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Accomploshrine"),
        {
            name = "ACCOMPLISHRINE.CD",
            label = "冷却",
            options =
            {
                {description = "15 天", data = 15},
                {description = "10 天", data = 10},
                {description = "8 天",  data = 8},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "ACCOMPLISHRINE.DUR",
            label = "持续时间",
            options =
            {
                {description = "1.5 天", data = 1.5},
                {description = "1 天",    data = 1},
                {description = "0.5 天",  data = 0.5},
                {description = "默认",  data = false},
            },
            default = false
        },
        --title("Cosmiguration Artifact"),
        {
            name = "CHRONOFLUX.SCD",
            label = "Season cooldown",
            options =
            {
                {description = "100 天", data = 100},
                {description = "75 天",  data = 75},
                {description = "60 天",  data = 60},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "CHRONOFLUX.PCD",
            label = "Phase cooldown",
            options =
            {
                {description = "10 天", data = 10},
                {description = "7 天",   data = 7},
                {description = "5 天",   data = 5},
                {description = "默认",  data = false},
            },
            default = false
        },
        --title("Material maker"),
        {
            name = "MATERIALMAKER.FUEL",
            label = "Max Fuel",
            options =
            {
                {description = "200", data = 200},
                {description = "150", data = 150},
                {description = "100", data = 100},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "MATERIALMAKER.GEM",
            label = "Gem chance",
            options =
            {
                {description = "2x", data = 2},
                {description = "1x", data = 1},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Telebrella"),
        {
            name = "TELEBRELLA.USE",
            label = "Uses",
            options =
            {
                {description = "25", data = 25},
                {description = "20", data = 20},
                {description = "10", data = 10},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Thumper"),
        {
            name = "THUMPER.DMG",
            label = "伤害",
            options =
            {
                {description = "125", data = 125},
                {description = "100", data = 100},
                {description = "75",  data = 75},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Cuirass of Ares"),
        {
            name = "MARBLED_ARMOR.SLOW",
            label = "Slow",
            options =
            {
                {description = "35%", data = 0.35},
                {description = "25%", data = 0.25},
                {description = "15%", data = 0.15},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "MARBLED_ARMOR.ARMOR",
            label = "Armor",
            options =
            {
                {description = "30%", data = 0.30},
                {description = "25%", data = 0.25},
                {description = "10%", data = 0.10},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "MARBLED_ARMOR.HLM",
            label = "Bonus Health",
            options =
            {
                {description = "60%", data = 1.60},
                {description = "50%", data = 1.50},
                {description = "30%", data = 1.30},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Gladiator Galea"),
        {
            name = "MARBLED_HAT.SLOW",
            label = "Slow",
            options =
            {
                {description = "35%", data = 0.35},
                {description = "25%", data = 0.25},
                {description = "15%", data = 0.15},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "MARBLED_HAT.ARMOR1",
            label = "Lv.1 Armor",
            options =
            {
                {description = "30%", data = 0.30},
                {description = "25%", data = 0.25},
                {description = "15%", data = 0.15},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "MARBLED_HAT.CTR1",
            label = "Lv.1 Counter",
            options =
            {
                {description = "110%", data = 1.10},
                {description = "100%", data = 1.00},
                {description = "90%",  data = 0.90},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "MARBLED_HAT.ARMOR2",
            label = "Lv.2 Armor",
            options =
            {
                {description = "50%", data = 0.50},
                {description = "45%", data = 0.45},
                {description = "35%", data = 0.35},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "MARBLED_HAT.CTR2",
            label = "Lv.2 Counter",
            options =
            {
                {description = "160%", data = 1.60},
                {description = "150%", data = 1.50},
                {description = "125%", data = 1.25},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "MARBLED_HAT.ARMOR3",
            label = "Lv.3 Armor",
            options =
            {
                {description = "80%", data = 0.80},
                {description = "75%", data = 0.75},
                {description = "65%", data = 0.65},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "MARBLED_HAT.CTR3",
            label = "Lv.3 Counter",
            options =
            {
                {description = "275%", data = 2.75},
                {description = "250%", data = 2.50},
                {description = "200%", data = 2.00},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Marbled Ham Bat"),
        {
            name = "MARBLED_SPEAR.SLOW",
            label = "Slow",
            options =
            {
                {description = "35", data = 35},
                {description = "25", data = 25},
                {description = "15", data = 15},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "MARBLED_SPEAR.MGH",
            label = "Mighty gain",
            options =
            {
                {description = "35", data = 35},
                {description = "25", data = 25},
                {description = "15", data = 15},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "MARBLED_SPEAR.HNG",
            label = "Hunger gain",
            options =
            {
                {description = "35", data = 35},
                {description = "25", data = 25},
                {description = "15", data = 15},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "MARBLED_SPEAR.HP",
            label = "Health gain",
            options =
            {
                {description = "35", data = 35},
                {description = "25", data = 25},
                {description = "15", data = 15},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "MARBLED_SPEAR.USE",
            label = "Uses",
            options =
            {
                {description = "225", data = 225},
                {description = "200", data = 200},
                {description = "150", data = 150},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "MARBLED_SPEAR.DMG",
            label = "伤害",
            options =
            {
                {description = "48.3", data = 48.3},
                {description = "42.5", data = 42.5},
                {description = "34.2", data = 34.2},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "MARBLED_SPEAR.CD",
            label = "冷却",
            options =
            {
                {description = "60秒", data = 60},
                {description = "45秒", data = 45},
                {description = "40秒", data = 40},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Bramble Chest"),
        {
            name = "BRAMBLECHEST.DMG",
            label = "Bramble damage",
            options =
            {
                {description = "510", data = 510},
                {description = "51",  data = 51},
                {description = "5.1",  data = 5.1},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Bramble Tower"),
        {
            name = "BRAMBLETOWER.DMG",
            label = "Bramble damage",
            options =
            {
                {description = "75", data = 75},
                {description = "51", data = 51},
                {description = "34", data = 34},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BRAMBLETOWER.HP",
            label = "Health",
            options =
            {
                {description = "700", data = 700},
                {description = "666", data = 666},
                {description = "600", data = 600},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BRAMBLETOWER.RGN",
            label = "Health Regen",
            options =
            {
                {description = "20", data = 20},
                {description = "15", data = 15},
                {description = "10", data = 10},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Forest Crown"),
        {
            name = "NATURE_HAT.DUR",
            label = "Durability",
            options =
            {
                {description = "9 天", data = 9},
                {description = "8 天", data = 8},
                {description = "5 天", data = 5},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "NATURE_HAT.HUNG",
            label = "Hunger reduction",
            options =
            {
                {description = "80%", data = 0.20},
                {description = "75%", data = 0.25},
                {description = "50%", data = 0.50},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "NATURE_HAT.SPD",
            label = "Speed reduction",
            options =
            {
                {description = "25%", data = 0.75},
                {description = "15%", data = 0.85},
                {description = "10%", data = 0.90},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Photosynthestaff"),
        {
            name = "NATURE_STAFF.USE",
            label = "Uses",
            options =
            {
                {description = "125", data = 125},
                {description = "100", data = 100},
                {description = "50",  data = 50},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "NATURE_STAFF.DMG",
            label = "伤害",
            options =
            {
                {description = "21", data = 21},
                {description = "17", data = 17},
                {description = "10", data = 10},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "NATURE_STAFF.CD",
            label = "冷却",
            options =
            {
                {description = "90秒", data = 90},
                {description = "60秒", data = 60},
                {description = "50秒", data = 50},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Wormwood Goop"),
        {
            name = "WORMWOOD_SALVE.HEAL",
            label = "Heal",
            options =
            {
                {description = "120", data = 120},
                {description = "100", data = 100},
                {description = "90",  data = 90},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Diabolical Robe"),
        {
            name = "HELL_ARMOR.ARMOR1",
            label = "Base Armor",
            options =
            {
                {description = "51%", data = 0.51},
                {description = "48%", data = 0.48},
                {description = "41%", data = 0.41},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "HELL_ARMOR.ARMOR2",
            label = "Evolved Armor",
            options =
            {
                {description = "95%", data = 0.95},
                {description = "92%", data = 0.92},
                {description = "86%", data = 0.86},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "HELL_ARMOR.DUR",
            label = "Durability",
            options =
            {
                {description = "2092", data = 2092},
                {description = "2020", data = 2020},
                {description = "1945",  data = 1945},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Helm of The Underworld"),
        {
            name = "HELL_HAT.EVA1",
            label = "Base Evasion",
            options =
            {
                {description = "44%", data = 0.44},
                {description = "33%", data = 0.33},
                {description = "22%", data = 0.22},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "HELL_HAT.EVA2",
            label = "Evolved Evasion",
            options =
            {
                {description = "77%", data = 0.77},
                {description = "66%", data = 0.66},
                {description = "55%", data = 0.55},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "HELL_HAT.ARMOR",
            label = "Armor",
            options =
            {
                {description = "51%", data = 0.51},
                {description = "48%", data = 0.48},
                {description = "41%", data = 0.41},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "HELL_HAT.DUR",
            label = "Durability",
            options =
            {
                {description = "2092", data = 2092},
                {description = "2020", data = 2020},
                {description = "1945",  data = 1945},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Scepter of the Eye of Sauron"),
        {
            name = "HELL_STAFF.USE",
            label = "USES",
            options =
            {
                {description = "225", data = 225},
                {description = "200", data = 200},
                {description = "150",  data = 150},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "HELL_STAFF.DMG",
            label = "基础伤害",
            options =
            {
                {description = "21", data = 21},
                {description = "17", data = 17},
                {description = "10", data = 10},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "HELL_STAFF.CD",
            label = "冷却",
            options =
            {
                {description = "800秒", data = 800},
                {description = "600秒", data = 600},
                {description = "500秒", data = 500},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "HELL_STAFF.SDM",
            label = "Set Damage Multiplier",
            options =
            {
                {description = "400%", data = 4},
                {description = "350%", data = 3.5},
                {description = "250%", data = 2.5},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Sea Crown"),
        {
            name = "WATER_HAT.ARMOR",
            label = "Max Armor",
            options =
            {
                {description = "85%", data = 0.85},
                {description = "80%", data = 0.8},
                {description = "70%", data = 0.7},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Neptune Trident"),
        {
            name = "WATER_SPEAR.DMG",
            label = "伤害",
            options =
            {
                {description = "51",   data = 51},
                {description = "42.5", data = 42.5},
                {description = "34",   data = 34},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "WATER_SPEAR.USE",
            label = "Uses",
            options =
            {
                {description = "3333", data = 3000},
                {description = "3000", data = 3000},
                {description = "2222", data = 2222},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "WATER_SPEAR.SDMG",
            label = "Spell damage",
            options =
            {
                {description = "75", data = 75},
                {description = "60", data = 60},
                {description = "33", data = 33},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "WATER_SPEAR.WDUR",
            label = "Spell wet duration",
            options =
            {
                {description = "25秒", data = 25},
                {description = "20秒", data = 20},
                {description = "10秒", data = 10},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "WATER_SPEAR.HDUR",
            label = "Hit wet duration",
            options =
            {
                {description = "6秒", data = 6},
                {description = "5秒", data = 5},
                {description = "3秒", data = 3},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "WATER_SPEAR.CD",
            label = "冷却",
            options =
            {
                {description = "100秒", data = 100},
                {description = "60秒",  data = 60},
                {description = "50秒",  data = 50},
                {description = "默认", data = false},
            },
            default = false
        },




        --title("Golden Scalemail"),
        {
            name = "ARMORGOLD.ARMOR",
            label = "Armor",
            options =
            {
                {description = "100%", data = 1},
                {description = "95%",  data = 0.95},
                {description = "90%",  data = 0.8},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Antler Whistle"),
        {
            name = "CHASNI_BIRDWHISTLE.USES1",
            label = "Uses",
            options =
            {
                {description = "4", data = 4},
                {description = "3", data = 3},
                {description = "2", data = 2},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "CHASNI_BIRDWHISTLE.USES2",
            label = "Nightmarish Uses",
            options =
            {
                {description = "3", data = 3},
                {description = "2", data = 2},
                {description = "1", data = 1},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Cocoon Tree"),
        {
            name = "CHASNI_COCOONTREE.SILK",
            label = "Silk produced",
            options =
            {
                {description = "6", data = 6},
                {description = "5", data = 5},
                {description = "3", data = 3},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "CHASNI_COCOONTREE.GROW",
            label = "Grow time",
            options =
            {
                {description = "6-7 天",  data = 6.5},
                {description = "4-5 天",  data = 4.5},
                {description = "3-4 天",   data = 3.5},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Expensive leather bag"),
        {
            name = "CROCPACK.ARMOR",
            label = "Armor",
            options =
            {
                {description = "70%", data = 0.7},
                {description = "65%", data = 0.65},
                {description = "50%", data = 0.5},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Med-Kit"),
        {
            name = "MEDICALKIT.CD",
            label = "冷却",
            options =
            {
                {description = "80秒", data = 80},
                {description = "60秒", data = 60},
                {description = "50秒", data = 50},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "MEDICALKIT.HEAL",
            label = "Heal",
            options =
            {
                {description = "25", data = 25},
                {description = "20", data = 20},
                {description = "10", data = 10},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Cursed Bat Bat"),
        {
            name = "UPGRADED_BATBAT.DMG",
            label = "基础伤害",
            options =
            {
                {description = "60", data = 60},
                {description = "51", data = 51},
                {description = "43", data = 43},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "UPGRADED_BATBAT.CRIT",
            label = "Crit Damage",
            options =
            {
                {description = "94", data = 94},
                {description = "85", data = 85},
                {description = "68", data = 68},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "UPGRADED_BATBAT.EMPT",
            label = "Empty Damage",
            options =
            {
                {description = "17", data = 17},
                {description = "10", data = 10},
                {description = "1", data = 1},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "UPGRADED_BATBAT.CD",
            label = "冷却",
            options =
            {
                {description = "25秒", data = 25},
                {description = "15秒", data = 15},
                {description = "10秒", data = 10},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "UPGRADED_BATBAT.FUEL",
            label = "Max Fuel",
            options =
            {
                {description = "20000", data = 20000},
                {description = "18000", data = 18000},
                {description = "15000", data = 15000},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Reinforced Boats"),
        {
            name = "UPGRADED_BOAT.HP",
            label = "HP",
            options =
            {
                {description = "1000", data = 1000},
                {description = "800", data = 800},
                {description = "600", data = 600},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Golden Fencing Sword"),
        {
            name = "UPGRADED_FENCEROTATOR.DMG",
            label = "伤害",
            options =
            {
                {description = "80.5", data = 80.5},
                {description = "76.5", data = 76.5},
                {description = "67.5", data = 67.5},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "UPGRADED_FENCEROTATOR.CHC",
            label = "Disarm chance",
            options =
            {
                {description = "50%",  data = 0.50},
                {description = "40%",  data = 0.4},
                {description = "25%",  data = 0.25},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Upgraded Miner Hat"),
        {
            name = "UPGRADED_MINERHAT.ARMOR",
            label = "Armor",
            options =
            {
                {description = "65%",  data = 0.65},
                {description = "60%",  data = 0.60},
                {description = "50%",  data = 0.50},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Exort Amulet"),
        {
            name = "UPGRADED_AMULET.DUR",
            label = "Durability",
            options =
            {
                {description = "400", data = 400},
                {description = "300", data = 300},
                {description = "200", data = 200},
                {description = "默认", data = false},
            },
            default = false
        },
        --title("Quas Amulet"),
        {
            name = "UPGRADED_BLUEAMULET.DUR",
            label = "Durability",
            options =
            {
                {description = "4000", data = 4000},
                {description = "3600", data = 3600},
                {description = "3000", data = 3000},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Grovel"),
        {
            name = "UPGRADED_SHOVEL.USES",
            label = "Uses",
            options =
            {
                {description = "12", data = 12},
                {description = "10", data = 10},
                {description = "5",  data = 5},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "UPGRADED_SHOVEL.RNG",
            label = "Range",
            options =
            {
                {description = "12", data = 12},
                {description = "10", data = 10},
                {description = "8",  data = 8},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Beastmaster's Whip"),
        {
            name = "UPGRADED_WHIP.USES",
            label = "Uses",
            options =
            {
                {description = "800", data = 800},
                {description = "700", data = 700},
                {description = "500", data = 500},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "UPGRADED_WHIP.FLW",
            label = "Max follower",
            options =
            {
                {description = "9",  data = 9},
                {description = "7",  data = 7},
                {description = "5",  data = 5},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Ka'el Sacred Scriptures"),
        {
            name = "BOOK_VOKER.DMG",
            label = "伤害",
            options =
            {
                {description = "21", data = 21},
                {description = "17", data = 17},
                {description = "10", data = 10},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BOOK_VOKER.EXO",
            label = "Exort damage",
            options =
            {
                {description = "7", data = 7},
                {description = "6", data = 6},
                {description = "5", data = 5},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BOOK_VOKER.QUAS",
            label = "Quas regen",
            options =
            {
                {description = "0.5", data = 0.5},
                {description = "0.4", data = 0.4},
                {description = "0.3", data = 0.3},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BOOK_VOKER.WEX",
            label = "Wex speed",
            options =
            {
                {description = "15%", data = 0.15},
                {description = "10%", data = 0.1},
                {description = "5%",  data = 0.05},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BOOK_VOKER.FAIL",
            label = "Fail penalty",
            options =
            {
                {description = "4", data = 4},
                {description = "3", data = 3},
                {description = "2", data = 2},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BOOK_VOKER.HFAIL",
            label = "Huge fail penalty",
            options =
            {
                {description = "10", data = 10},
                {description = "6",  data = 6},
                {description = "5",  data = 5},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BOOK_VOKER.AL_DMG",
            label = "Alacrity Damage",
            options =
            {
                {description = "25", data = 25},
                {description = "20", data = 20},
                {description = "10", data = 10},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BOOK_VOKER.AL_DUR",
            label = "Alacrity Duration",
            options =
            {
                {description = "25", data = 25},
                {description = "20", data = 20},
                {description = "15", data = 15},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BOOK_VOKER.FS_HP",
            label = "Forge Spirit HP",
            options =
            {
                {description = "550", data = 550},
                {description = "499", data = 499},
                {description = "400", data = 400},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BOOK_VOKER.FS_DMG",
            label = "Forge Spirit Damage",
            options =
            {
                {description = "55", data = 55},
                {description = "49", data = 49},
                {description = "40", data = 40},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BOOK_VOKER.FS_ASP",
            label = "Forge Spirit Atk Speed",
            options =
            {
                {description = "3", data = 1},
                {description = "2", data = 1.5},
                {description = "1", data = 2},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BOOK_VOKER.FS_ARN",
            label = "Forge Spirit Atk Range",
            options =
            {
                {description = "13", data = 13},
                {description = "12", data = 12},
                {description = "10", data = 10},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BOOK_VOKER.FS_DUR",
            label = "Forge Spirit Duration",
            options =
            {
                {description = "55", data = 55},
                {description = "49", data = 49},
                {description = "40", data = 40},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BOOK_VOKER.IW_DUR",
            label = "Icewall Duration",
            options =
            {
                {description = "20", data = 20},
                {description = "15", data = 15},
                {description = "10", data = 10},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "BOOK_VOKER.TD_DUR",
            label = "Tornado Duration",
            options =
            {
                {description = "7", data = 7},
                {description = "5", data = 5},
                {description = "3", data = 3},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Wind Conch"),
        {
            name = "CHASNI_WINDCONCH.USES",
            label = "Uses",
            options =
            {
                {description = "3", data = 3},
                {description = "2", data = 2},
                {description = "1", data = 1},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Tinkerbell"),
        {
            name = "TINKERBELL.DUR",
            label = "Tornado Duration",
            options =
            {
                {description = "5", data  = 5},
                {description = "10", data = 10},
                {description = "12", data = 12},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "TINKERBELL.COUNT",
            label = "Tornado Count",
            options =
            {
                {description = "3", data = 3},
                {description = "5", data = 5},
                {description = "7", data = 7},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Healing ward"),
        {
            name = "HEALINGWARD.SPD",
            label = "Speed",
            options =
            {
                {description = "2", data = 2},
                {description = "3", data = 3},
                {description = "5", data = 5},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "HEALINGWARD.HEAL",
            label = "Heal",
            options =
            {
                {description = "1%", data = 0.01},
                {description = "2%", data = 0.02},
                {description = "3%", data = 0.03},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "HEALINGWARD.RNG",
            label = "Range",
            options =
            {
                {description = "4", data = 4},
                {description = "5", data = 5},
                {description = "6", data = 6},
                {description = "默认", data = false},
            },
            default = false
        },

        --title("Axe's Axe"),
        {
            name = "AXEAXE.DMG",
            label = "伤害",
            options =
            {
                {description = "34", data = 34},
                {description = "51", data = 51},
                {description = "60", data = 60},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "AXEAXE.USES",
            label = "Uses",
            options =
            {
                {description = "333", data = 333},
                {description = "666", data = 666},
                {description = "888", data = 888},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "AXEAXE.RNG",
            label = "Range",
            options =
            {
                {description = "5",  data = 5},
                {description = "10", data = 10},
                {description = "15", data = 15},
                {description = "默认", data = false},
            },
            default = false
        },
        {
            name = "AXEAXE.WRK",
            label = "Work Multiplier",
            options =
            {
                {description = "2", data = 2},
                {description = "4", data = 4},
                {description = "5", data = 5},
                {description = "默认", data = false},
            },
            default = false
        },
    }
}
return info