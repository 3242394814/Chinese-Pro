GLOBAL.setmetatable(env, {__index = function(t, k) return GLOBAL.rawget(GLOBAL, k) end})

function fileexists(name)
	local f=io.open(name,"r")
	if f~=nil then
		io.close(f)
		return true
	else
		return false
	end
end

function ismodloaded(name)
	if KnownModIndex:IsModEnabled(name) then return true end
	for _, v in ipairs(KnownModIndex:GetModsToLoad()) do
		if v == name then return true end
	end
end




local info_list = {}
local main_list = {}

-- 加载MOD配置汉化
local modlist=KnownModIndex:GetModNames()
	for _,v in ipairs(modlist) do
		if fileexists(MODROOT.."scripts/info_chs/"..v..".lua") and GetModConfigData("mod_info_Chs",true) then--检测本模组内的配置汉化文件
			info_list[v] = require("info_chs/"..v)
		end
        if fileexists(MODROOT.."scripts/main_chs/"..v..".lua") then--检测本模组内的游戏内汉化文件
            table.insert(main_list,v)
        end
	end

--汉化游戏内MOD语言
for _, v in ipairs(main_list) do
    if GetModConfigData("client_"..v,true) and ismodloaded(v) then--跟随客户端设置
        modimport("scripts/main_chs/" .. v)
    end
    if GetModConfigData("server_"..v) and ismodloaded(v) then--跟随服务器设置
        modimport("scripts/main_chs/" .. v)
    end
end

--汉化模组名称、介绍、配置 by.冰冰羊
if not InGamePlay() or ismodloaded("workshop-2893492379") then--如果 不在游戏中 或 开启了“游戏内主菜单”模组 那么进行汉化
    local old_modname = KnownModIndex.GetModInfo
    KnownModIndex.GetModInfo = function(self, modname)
        local modinfo = old_modname(self, modname)
        local newinfo = info_list[modname]
        if newinfo then
            if modinfo and type(modinfo) == "table" then
                modinfo.name = newinfo.name or modinfo.name      --笔记：modinfo.folder_name 表示MOD路径名称（workshop-xxx）
                modinfo.description = newinfo.description or modinfo.description
                if modinfo.configuration_options and type(modinfo.configuration_options) == "table" then
                    for _, v in pairs(modinfo.configuration_options) do
                        if newinfo.configuration_options and type(newinfo.configuration_options) == "table" then
                            for _, v1 in pairs(newinfo.configuration_options) do
                                if v.name ~= "" and v.name == v1.name then--所以说 如果你想写SkipSpace或是Header或者别的没有配置项的标题 请不要把name设置成空白字符串 然后标题写在label里，不然我没法汉化:( 正确的做法是name = 标题 label不要写 就像这个模组的modinfo里的SkipSpace一样
                                    if v.name ~= "" and v.name == v1.name then--So if you want to write SkipSpace or Header or other titles without configuration items, please don't set the name to an empty string and write the title in the label, otherwise I can't localize it:( The correct approach is to set name = title and not write the label, just like SkipSpace in the modinfo of this module
                                        v.label = v1.label or v.label
                                        v.hover = v1.hover or v.hover
                                        if v.options then
                                            for n, m in pairs(v.options) do
                                                if m and v1.options and v1.options[n] then
                                                    m.description = v1.options[n].description or m.description
                                                    m.hover = v1.options[n].hover or m.hover
                                                end
                                            end
                                        end
                                    end
                                    break
                                end
                            end
                        end
                    end
                end
            end
        end
        return modinfo
    end
end