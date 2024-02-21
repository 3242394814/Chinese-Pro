LoadPOFile("scripts/languages/chinese_s_reforged.po", "zh")
local STRINGS = GLOBAL.STRINGS

STRINGS.UI.ACHIEVEMENTS_PANEL = {
	TAB = "成就",
}
STRINGS.UI.NEWS_PANEL = {
	TAB = "新闻",
	SERVER = {
		TITLE = "服务器",
		BODY = "欢迎来到我的熔炉服务器，请尊重他人，勇往直前",
	},
	EVENTS = {
		TITLE = STRINGS.UI.CUSTOMIZATIONSCREEN.SPECIALEVENT,
		--TITLE = "Mod Contest",
		BODY = "当前没有活动",
		--BODY = "Klei is currently running an event where users can vote for their favorite spooky themed mod. If you like Hallowed Forge and want to help us win, then go to their discord and vote for us! Be sure to check out the other mods that have been submitted and feel free to vote for whichever you want, but remember you only get one vote (You can change your vote at any time though).\n_________________________________\nVote Here: discord:klei",
	},
	PATCH_NOTES = "更新日志",
}

STRINGS.REFORGED.PERKS.winona.cooldown.DESCRIPTION = "*所有技能冷却时间加快10%。\n\n\n\n擅长:\n近战, 吹箭, 魔杖"
STRINGS.REFORGED.PERKS.warly.cookpot.TITLE = "主厨"
STRINGS.REFORGED.PERKS.warly.cookpot.DESCRIPTION = "*烹饪食物更快。\n*沃利烹饪的食物增加了收益。\n擅长:\n近战, 魔杖"
STRINGS.REFORGED.PERKS.wortox.soul_drain.DESCRIPTION = "*拥有带有灵魂跳跃功能的灵魂权杖。\n*被动地吸取敌人的灵魂。\n\n擅长:\n近战"
STRINGS.REFORGED.PERKS.wormwood.bloom.DESCRIPTION = "*发射植物制成的标枪。\n*只要不受到伤害，花就会随着时间的推移而绽放。\n\n擅长:\n吹箭, 魔杖"
STRINGS.REFORGED.PERKS.wurt.wet.DESCRIPTION = "*可以使用所有可用的武器。\n*近战攻击会使敌人浑身湿透，使其行动迟缓，易受电击伤害。\n\n擅长:\n近战, 吹箭, 魔杖, 书本"
STRINGS.REFORGED.PERKS.walter.woby.DESCRIPTION = "*带来了他的朋友沃比。\n*沃比可以作为辅助来减少冷却时间。\n\n擅长:\n吹箭"
STRINGS.REFORGED.PERKS.wanda.rewind.DESCRIPTION = "*倒转死亡的时间。\n*法术持续时间延长 10%。\n\n擅长:\n近战, 书本, 法杖"
STRINGS.REFORGED.PERKS.spectator.spy.TITLE = "摄像机"
STRINGS.REFORGED.PERKS.spectator.spy.DESCRIPTION = "*自由摄像机。\n*摄像机可以跟踪特定的玩家。"
STRINGS.REFORGED.PERKS.random.TITLE = "完全随机"
STRINGS.REFORGED.PERKS.random.DESCRIPTION = "选择一个随机角色和一个随机特长。"
STRINGS.REFORGED.PERKS.random.STARTING_ITEMS = "随机选择的角色装备的初始物品。"
STRINGS.REFORGED.PERKS.random.base_random.TITLE = "基础随机"
STRINGS.REFORGED.PERKS.random.base_random.DESCRIPTION = "选择一个随机的角色和特长，在原始熔炉中!"
STRINGS.REFORGED.PERKS.random.base_random.STARTING_ITEMS = "随机选择的角色装备的初始物品"
STRINGS.CHARACTER_DETAILS.FORGE_STARTING_ITEMS_TITLE = "带着这个进入熔炉"

STRINGS.NAMES.PORTALSTAFF = "回溯权杖"
STRINGS.ACTIONS.CASTAOE.PORTAL_ACTIVATE = "传送"
STRINGS.ACTIONS.CASTAOE.PORTAL_TARGET = "设置传送位置"
STRINGS.REFORGED.WEAPONS.PORTALSTAFF = {
    NAME = "回溯权杖",
    DESC = "有了这根华丽的法杖，就能随心所欲地穿越时空。",
    ABILITIES = {
        SET_DESTINATION = {
            NAME = "设置目的地",
            DESC = "这也是你进行时间旅行的地方。",
        },
        SUMMON_RIFT = {
            NAME = "召唤裂隙",
            DESC = "在时间结构上撕开一个洞。",
        },
    },
}
local function SetItemsDescribeStrings(item_name, strings)
	for character,str in pairs(strings) do
		STRINGS.CHARACTERS[string.upper(character)].DESCRIBE[string.upper(item_name)] = str
	end
end
local PORTALSTAFF_STRINGS = {
	GENERIC      = "有了这种科学，我们不可能输！",
	WAXWELL      = "这正合我的胃口。",
	WOLFGANG     = "棍子上的小钟。",
	WX78         = "我想在敌人成为威胁之前消灭他们",
	WILLOW       = "它不会喷火，所以它是差劲的",
	WENDY        = "如果当时我有这个……",
	WOODIE       = "看起来很花哨，但不是我喜欢的风格。",
	WICKERBOTTOM = "操纵时间对我们来说应该很有用。",
	WATHGRITHR   = "现在不是看时钟的时候。",
	WEBBER       = "这样把时间打乱真的安全吗？",
	WINONA       = "等我们离开这里后，我会调查它内部是如何运作的。",
	WORTOX       = "这是侵权的行为，愚蠢的凡人。",
	WORMWOOD     = "滴答滴答。",
	WARLY        = "它可以作为厨房的计时器吗？",
	WURT         = "我现在必须忍住不嚼这个。",
}
SetItemsDescribeStrings("PORTALSTAFF", PORTALSTAFF_STRINGS)

STRINGS.NAMES.SPICE_BOMB = "香料炸弹"
STRINGS.ACTIONS.CASTAOE.SPICE_BOMB_HEAL    = "治疗炸弹"
STRINGS.ACTIONS.CASTAOE.SPICE_BOMB_ATTACK  = "攻击炸弹"
STRINGS.ACTIONS.CASTAOE.SPICE_BOMB_DEFENSE = "防御炸弹"
STRINGS.ACTIONS.CASTAOE.SPICE_BOMB_SPEED   = "速度炸弹"

STRINGS.NAMES.LAVAARENA_GAUNTLET = "长手套"

STRINGS.UI.WXPLOBBYPANEL.LEVEL = "等级 {val}"