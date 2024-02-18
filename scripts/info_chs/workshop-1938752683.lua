local version = KnownModIndex:GetModInfo("workshop-1938752683").version
local function AddCustomConfig(name, label, hover, options, default)
    return { name = name, label = label, hover = hover or "", options = options, default = default }
end

local function AddSectionTitle(title,CH_label)
    return AddCustomConfig(title, CH_label, "", { { description = "", data = 0 } }, 0)
end

local function BuildBooleanConfig(desc_str, hover_str)
    return {
        { description = desc_str and desc_str.off or "否", hover = hover_str and hover_str.off or "", data = false },
        { description = desc_str and desc_str.on or "是", hover = hover_str and hover_str.on or "", data = true }
    }
end

local function BuildNumConfig(startNum, endNum, step, percent)
    local numTable = {}
    local iterator = 1
    local suffix = percent and "%" or ""
    for i = startNum, endNum, step or 1 do
        numTable[iterator] = { description = i .. suffix, data = percent and i / 100 or i }
        iterator = iterator + 1
    end
    return numTable
end

local string = ""
local keys = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","F1","F2","F3","F4","F5","F6","F7","F8","F9","F10","F11","F12","LAlt","RAlt","LCtrl","RCtrl","LShift","RShift","Tab","Capslock","Space","-","=","Backspace","Insert","Home","Delete","End","Pageup","Pagedown","Print","Scrollock","Pause",".","/",";","(",")","\\","↑","↓","←","→"}
local keylist = {}
for i = 1, #keys do
    keylist[i] = { description = keys[i], data = "KEY_" .. string.upper(keys[i]) }
end
keylist[#keylist + 1] = { description = "无", data = false }

local filters = { "熔炉", "秋天白天", "秋天黄昏", "秋天夜晚", "雪天白天", "雪天黄昏", "雪天夜晚", "夏天白天", "夏天黄昏", "夏天夜晚", "春天白天", "春天黄昏", "春天夜晚", "疯狂的白天", "疯狂的黄昏", "疯狂的夜晚", "紫色月亮", "海难-温和季-白天", "海难-雨天-白天", "海难-雨季-白天", "海难-火山", "海狸", "洞穴", "真菌(Fungus)", "幽灵", "本身(Identity)", "鼹鼠视野 关闭", "鼹鼠视野 开启", "废墟-黑暗(Ruins Dark)", "废墟-昏暗(Ruins Dim)", "废墟-灯（Ruins Light）", "Sinkhole", "暴食" }
local filter_list = {}
for i = 1, #filters do
    filter_list[i] = { description = filters[i], data = i }
end

local lobby_tabs = {
    { description = "新的", data = "news" },
    { description = "游戏设置", data = "settings" },
    { description = "成就", data = "achievements" },
    { description = "历史", data = "history" },
}
local difficulties = {
    { description = "普通", data = "normal", hover = "普通!" },
    { description = "困难", data = "hard", hover = "更加艰难的熔炉体验!" },
}
local gametypes = {
    { description = "熔炉", data = "forge", hover = "熔炉!" },
    { description = "红灯/绿灯", data = "classic_rlgl", hover = "经典的红灯绿灯!" },
    { description = "四灯", data = "rlgl", hover = "红灯绿灯，但有更多的灯!" },
}
local modes = {
    { description = "熔炉 S1", data = "forge_s01", hover = "原版熔炉体验!" },
    { description = "熔炉 S2", data = "forge_s02", hover = "二周年熔炉!" },
    { description = "ReForged", data = "reforged", hover = "由ReForged团队重新平衡的熔炉!" },
}
local wave_sets = {
    { description = "熔炉模式 2018版", data = "swineclops", hover = "2018版本的熔炉体验!" },
    { description = "熔炉模式 经典版本", data = "classic", hover = "OG版本的熔炉体验!" },
    { description = "犀牛", data = "rhinocebros", hover = "玩到犀牛兄弟" },
    { description = "猪猩战士", data = "boarillas", hover = "玩到猪猩战士" },
    { description = "愤怒的一半", data = "half_the_wrath", hover = "更轻松的Forge 2018体验" },
    { description = "沙盒模式", data = "sandbox", hover = "没有生成任何东西，可以自由地做您想做的任何事情，对于测试非常有用!!" },
}

local info={
    name = "ReForged(熔炉)",
    description = "与系统战斗！在您自己的服务器上玩熔炉！\n\n版本: "..version,
    configuration_options = {
    AddSectionTitle("Lobby Options","大厅选项"),
    AddCustomConfig("FORCE_START_DELAY_TIME", "设置游戏开始", "离强制开始游戏还有多久？", BuildNumConfig(5, 12 * 5, 5), 30),
    AddCustomConfig("SERVER_LEVEL", "显示玩家服务器等级", "显示玩家的服务器等级。如果为false，则会显示玩家的客户端等级。", BuildBooleanConfig(), false),
    AddCustomConfig("SERVER_ACHIEVEMENTS", "显示服务器的成就", "显示玩家的服务器成就。如果为false，则会显示玩家的客户端成就。", BuildBooleanConfig(), false),
    AddCustomConfig("LOBBY_GEAR", "大厅角色装备", "如果启用，大厅角色将佩戴其起始装备。", BuildBooleanConfig(), true),
    AddCustomConfig("DEFAULT_LOBBY_TAB", "默认大厅选项卡", "选择默认选中的大堂选项卡。", lobby_tabs, "news"),

    AddSectionTitle("Player HUD Options","玩家 HUD 选项"),
    AddCustomConfig("HIDE_INDICATORS", "隐藏播放机指示器", "完全禁止显示播放器指示器。", BuildBooleanConfig(), true),
    AddCustomConfig("SPECTATOR_ON_DEATH", "死亡变成观众", "死亡时玩家获得旁观者控制。", BuildBooleanConfig(), false),
    AddCustomConfig("GIFT_SIDE", "礼物位置", "礼物图标的位置。", { { description = "左上角", data = "left" }, { description = "右上角", data = "right" }, }, "right"),
    AddCustomConfig("PLAYER_DEBUFF_DISPLAY", "buff显示", "如何显示玩家buff.", { { description = "无", data = "none" }, { description = "小图标", data = "mini" }, }, "mini"),
    AddCustomConfig("DISPLAY_TEAMMATES_DEBUFFS", "团队debuff", "显示队友的减益状态。", BuildBooleanConfig(), false),
    AddCustomConfig("DISPLAY_TARGET_BADGE", "显示目标奖章", "显示当前目标奖章。", BuildBooleanConfig(), true),
    AddCustomConfig("PING_KEYBIND", "Ping位置", "指定要ping一个位置的键。", keylist, "KEY_R"),
    AddCustomConfig("PING_TRANSPARENCY", "Ping透明度", "修改ping横幅的透明度。", BuildNumConfig(5, 100, 5, true), 100),
    AddCustomConfig("MAX_MESSAGES", "最大聊天消息数", "设置一次保存多少条消息。", BuildNumConfig(20, 200, 10), 100),
    AddCustomConfig("SHOW_CHAT_ICON", "在聊天中显示玩家头像", "在聊天消息旁边显示玩家头像。", BuildBooleanConfig(), false),

    AddSectionTitle("Damage Number Options","伤害数值选项"),
    AddCustomConfig("DAMAGE_NUMBER_OPTIONS", "显示伤害数值", "是否显示伤害数值.", { { description = "默认", data = "default" }, { description = "主要的", data = "elemental" }, { description = "关闭", data = "off" }, }, "default"),
    AddCustomConfig("DAMAGE_NUMBER_PLAYERS", "受到的伤害数值", "显示对玩家造成的伤害数字。", BuildBooleanConfig({ off = "关", on = "开" }), false),
    AddCustomConfig("DAMAGE_NUMBER_FONT_SIZE", "伤害数值字体大小", "选择伤害数值的字体大小。默认32.", BuildNumConfig(1, 100), 32),
    AddCustomConfig("DAMAGE_NUMBER_HEIGHT", "伤害数值高度", "选择在目标上方显示的伤害值高度。默认40.", BuildNumConfig(1, 100), 40),

    AddSectionTitle("Visual Options","视觉选项"),
    AddCustomConfig("DEFAULT_FILTER", "滤镜设置", "滤镜设置(aka changes the colour cube used).", filter_list, 1),
    AddCustomConfig("ADJUST_FILTER", "更改当前筛选器", "指定要更改当前筛选器的键。", keylist, false),
    AddCustomConfig("EVENT_TRACKING", "活动区域", "允许某些竞技场根据当前事件进行更改。", BuildBooleanConfig({ off = "关", on = "开" }), true),

    AddSectionTitle("Detailed Summary Options","详细摘要选项"),
    AddCustomConfig("ONLY_SHOW_NONZERO_STATS", "仅显示非零统计信息", "仅显示值大于零的匹配的统计信息", BuildBooleanConfig(), true),
    AddCustomConfig("DISPLAY_COLORED_STATS", "彩色统计信息", "根据您的团队统计排名，为统计文本涂上金色、银色、青铜色或白色。", BuildBooleanConfig(), true),
    AddCustomConfig("DEFAULT_ROTATION", "Mvp徽章默认旋转", "MVP徽章在默认摘要屏幕和详细摘要屏幕上具有相同的旋转", BuildBooleanConfig(), false),
    AddCustomConfig("ROTATION", "MVP徽章定制旋转", "如果默认旋转为关，则调整详细摘要屏幕上MVP徽章的旋转", BuildNumConfig(-10, 10), 0),

    AddSectionTitle("Gameplay Settings","游戏设置"),
    AddCustomConfig("DIFFICULTY", "难度", "改变难度!", difficulties, "normal"),
    AddCustomConfig("GAMETYPE", "游戏类型", "改变游戏类型！", gametypes, "forge"),
    AddCustomConfig("MODE", "模式", "改变游戏模式！", modes, "reforged"),
    AddCustomConfig("WAVESET", "进攻波设置", "将进攻波波数据更改为新的数据！", wave_sets, "swineclops"),

    AddSectionTitle("Mutators","怪物变异"),
    AddCustomConfig("MOB_DAMAGE_DEALT", "怪物伤害", "修改怪物造成的伤害。", BuildNumConfig(50, 200, 25, true), 1),
    AddCustomConfig("MOB_DAMAGE_TAKEN", "怪物受到的伤害", "修改怪物受到的伤害", BuildNumConfig(50, 200, 25, true), 1),
    AddCustomConfig("MOB_HEALTH", "怪物生命值", "修改怪物的生命值。", BuildNumConfig(50, 200, 25, true), 1),
    AddCustomConfig("MOB_SPEED", "怪物速度倍数", "修改怪物的移动速度。", BuildNumConfig(50, 200, 25, true), 1),
    AddCustomConfig("MOB_ATTACK_RATE", "怪物攻击速倍数", "修改怪物的攻击速率。", BuildNumConfig(0, 200, 10, true), 1),
    AddCustomConfig("MOB_SIZE", "怪物大小倍数", "修改怪物的大小", BuildNumConfig(50, 200, 25, true), 1),
    AddCustomConfig("BATTLESTANDARD_EFFICIENCY", "战旗效能", "修改战旗的有效性。", BuildNumConfig(50, 200, 25, true), 1),
    AddCustomConfig("NO_SLEEP", "敌人不睡觉", "敌人再也睡不着了。", BuildBooleanConfig({ off = "关", on = "开" }), false),
    AddCustomConfig("NO_REVIVES", "没有复活", "玩家不能互相复活。", BuildBooleanConfig({ off = "关", on = "开" }), false),
    AddCustomConfig("NO_HUD", "无玩家HUD", "无法查看任何玩家血量或物品", BuildBooleanConfig({ off = "关", on = "开" }), false),
    AddCustomConfig("FRIENDLY_FIRE", "友军火力", "玩家现在可以互相伤害了。", BuildBooleanConfig({ off = "关", on = "开" }), false),
    --AddCustomConfig("UNBREAKABLE_SHIELDS", "Shields Can't Be Broken", "Alt attacks won't break shields anymore.", BuildBooleanConfig({off = "关", on = "开"}), false),
    AddCustomConfig("MOB_DUPLICATOR", "怪物倍数", "修改刷出的怪物数量。", BuildNumConfig(1, 10, 1), 1),

    --AddSectionTitle("Performance"),
    --AddCustomConfig("ALL_FX", "Enable FX", "Enables FX to be created.", BuildBooleanConfig({off = "关", on = "开"}), true),
    --AddCustomConfig("ENVIRONMENT_FX", "Enable Environment FX", "Enables environment FX to be created.", BuildBooleanConfig({off = "关", on = "开"}), true),
    --AddCustomConfig("ATTACK_FX", "Enable Attack FX", "Enables attack FX to be created.", BuildBooleanConfig({off = "关", on = "开"}), true),

    AddSectionTitle("Vote","投票"),
    AddCustomConfig("VOTE_KICK", "投票踢人", "允许非管理员投票踢其他玩家。", BuildBooleanConfig({ off = "关", on = "开" }), true),
    AddCustomConfig("VOTE_FORCE_START", "投票强制开始游戏", "允许非管理员投票强制开始游戏。", BuildBooleanConfig({ off = "关", on = "开" }), true),
    AddCustomConfig("VOTE_GAME_SETTINGS", "游戏设置投票", "允许玩家投票更改游戏设置。", BuildBooleanConfig({ off = "关", on = "开" }), true),

    AddSectionTitle("Other","其它"),
    AddCustomConfig("JOINABLE_MIDMATCH", "中场加入", "允许玩家加入中场比赛。", BuildBooleanConfig({ off = "关", on = "开" }), true),
    AddCustomConfig("SPECTATORS_ONLY", "只有观众才能参加比赛", "只允许玩家以观众身份参加比赛。", BuildBooleanConfig({ off = "关", on = "开" }), true),
    AddCustomConfig("RESERVE_SLOTS", "保留位置", "非观众如果在比赛中掉线，将为他们预留空位。", BuildBooleanConfig({ off = "关", on = "开" }), true),
    AddCustomConfig("COMMAND_SPAM_BAN_TIME", "禁止时间", "用户因向服务器发送命令而被禁止的时间（分钟）。", BuildNumConfig(0, 60, 5), 10),
    AddCustomConfig("SANDBOX", "启用沙盒", "将沙盒进攻波添加到进攻波列表中。", BuildBooleanConfig({ off = "关", on = "开" }), false),
    AddCustomConfig("DEBUG", "启用调试模式", "添加调试键和其他一些东西，以便更容易调试。", BuildBooleanConfig({ off = "关", on = "开" }), false),
    }
}
return info