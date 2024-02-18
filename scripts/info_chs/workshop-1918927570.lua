local version = KnownModIndex:GetModInfo("workshop-1918927570").version

local empty = { { description = "", data = 0 } }
local function Title(title, label, hover)
	return {
		name = title,
		label = label,
		hover = hover,
		options = empty,
		default = 0,
	}
end
local SEPARATOR = Title("")

local function Option(desc, data, hover)
	return {
		description = desc,
		data = data,
		hover = hover or "",
	}
end

local function Config(name, label, hover, options, default)
	return {
		name = name,
		label = label,
		hover = hover or "",
		options = options,
		default = default
	}
end

local opt_def = {
	Option("开启", true),
	Option("关闭", false),
}
local info={
	name = "Re-Gorge-itated(暴食)",
	description = "版本: " .. version,
	configuration_options =
	{
		Title("Vote","投票"),

		Config(
			"kick",
			"启用投票踢人",
			"玩家可以在大厅投票踢其他人",
			opt_def,
			true
		),

		Config(
			"gamemode",
			"启用更改游戏模式",
			"玩家可以投票更改当前游戏模式",
			opt_def,
			true
		),

		Config(
			"perks",
			"启用选择角色的能力",
			"玩家可以选择自己角色的能力",
			opt_def,
			true
		),

		SEPARATOR,
		Title("Gameplay","游戏模式"),

		Config(
			"fixed_gamemode",
			"固定游戏模式",
			"服务器将只运行这种游戏模式",
			opt_def,
			false
		),

		Config(
			"gamemodesign",
			"游戏模式信息标志",
			"Change farming soil edge texture to the new one\n原作者似乎写错了这行说明",
			opt_def,
			false
		),

		Config(
			"newsoil",
			"启用新的土壤边缘纹理",
			"将耕作土壤边缘纹理更改为新纹理",--原内容："Change farming soil edge texture to the new one",
			opt_def,
			false
		),

		Config(
			"specialevents",
			"启用特殊事件",
			"更改特别活动:冬季盛宴，万圣节之夜。",
			opt_def,
			false
		),

		Config(
			"changablefemusic",
			"更改大厅音乐",
			"厌倦了暴食主题？（你怎么敢…）把它换成新的！",
			opt_def,
			true
		),

		Config(
			"forceendmatch",
			"启用强制完成比赛命令",
			"输了？赶紧结束这场噩梦吧！（仅限管理员使用）\n指令：TheNet:SendSlashCmdToServer(\"endmatch\")",
			opt_def,
			false
		),
	}
}
return info