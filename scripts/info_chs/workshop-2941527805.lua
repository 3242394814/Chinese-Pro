local old_description = KnownModIndex:GetModInfo("workshop-2941527805").description or ""
local new_description = string.gsub(old_description,"󰀔汉化其它模组信息功能：当前未生效×","󰀔汉化其它模组信息功能：当前已生效！")
local info=
{
    description=new_description
}
return info