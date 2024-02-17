local description = KnownModIndex:GetModInfo("workshop-3047284293").description
description = description:gsub("Tired of the Advertisements taking entire screen%? With this button all is solved.", "厌倦了广告占据整个屏幕？使用此按钮即可解决所有问题。")
description = description:gsub("What's New:", "最近更新：")
description = description:gsub("Button Size Changed", "更改按钮大小")
description = description:gsub("Version:", "版本：")

local info=
{
	name = "Hide MOTD Button(隐藏公告按钮)",
	description = description,
}
return info