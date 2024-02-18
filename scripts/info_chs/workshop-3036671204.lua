if KnownModIndex:GetModInfo("workshop-3036671204").name == "Coloured Percent" then
    modname = "Coloured Percent(着色百分比)"
else
    modname = KnownModIndex:GetModInfo("workshop-3036671204").name
end
------------------------------
-- 本地功能使事情变得更漂亮

local function NumericalConfig(name, label, hover, default)
    local base_config = 	{
		name = name,
		label = label,
		hover = hover,
	}
    return base_config
end

local function Header(title,CH_label)
	return { name = "", label = title, CH_label = CH_label, hover = "", options = { {description = "", data = false}, }, default = false, }
end

local function SkipSpace()
	return { name = "", label = "", hover = "", options = { {description = "", data = false}, }, default = false, }
end
------------------------------
local info=
{
    name = modname,
    description = [[根据耐久度更改物品栏中百分比文本的颜色，使其更明显，或仅出于偏好！可配置。]],
    configuration_options = {
        Header("100% Colours","100% 颜色"),
        NumericalConfig("MaxR", "高：红色值", "当耐久度较高时，物品的红色RGB值。", 0),
        NumericalConfig("MaxG", "高：绿色值", "当耐久度较高时，物品的绿色RGB值。", 1),
        NumericalConfig("MaxB", "高：蓝色值", "当耐久度较高时，物品的蓝色RGB值。", 0),
        SkipSpace(),
        Header("0% Colours","0% 颜色"),
        NumericalConfig("MinR", "低：红色值", "当耐久度较低时，物品的红色RGB值。", 1),
        NumericalConfig("MinG", "低：绿色值", "当耐久度较低时，物品的绿色RGB值。", 0),
        NumericalConfig("MinB", "低：蓝色值", "当耐久度较低时，物品的蓝色RGB值。", 0),
    }
}
return info