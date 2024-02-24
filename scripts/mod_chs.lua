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
		if fileexists(MODROOT.."scripts/info_chs/"..v..".lua") and GetModConfigData("mod_info_Chs",true) then--检测本模组内的MOD信息翻译文件（补充: v1.CH_label 是我的翻译文件内新定义的一个东西）
			info_list[v] = require("info_chs/"..v)
		end
        if fileexists(MODROOT.."scripts/main_chs/"..v..".lua") then -- 检测本模组内的游戏内汉化文件
            table.insert(main_list,v)
        end
	end

-- 汉化游戏内MOD语言
for _, v in ipairs(main_list) do
    if GetModConfigData("client_"..v,true) and ismodloaded(v) then -- 跟随客户端设置
        modimport("scripts/main_chs/" .. v)
    end
    if GetModConfigData("server_"..v) and ismodloaded(v) then -- 跟随服务器设置
        modimport("scripts/main_chs/" .. v)
    end
end

-- 汉化模组名称、介绍、配置 by.冰冰羊
if GetModConfigData("mod_info_Chs",true) then
    local old_modname = KnownModIndex.GetModInfo
    KnownModIndex.GetModInfo = function(self, modname)
        local modinfo = old_modname(self, modname)
        local newinfo = info_list[modname]
        if newinfo and type(newinfo) == "table" then
            if modinfo and type(modinfo) == "table" then
                if not modinfo.old_name then -- 判断是否运行过汉化代码
                    modinfo.old_name = modinfo.name -- 保存旧名称用于兼容其他模组内的GetModActualName
                    modinfo.name = newinfo.name or modinfo.name      -- 笔记：modinfo.folder_name 表示MOD路径名称（workshop-xxx）
                    modinfo.description = newinfo.description or modinfo.description
                    if modinfo.configuration_options and type(modinfo.configuration_options) == "table" then
                        for _, v in pairs(modinfo.configuration_options) do
                            if newinfo.configuration_options and type(newinfo.configuration_options) == "table" then
                                for _, v1 in pairs(newinfo.configuration_options) do
                                    if v.name ~= "" and v.name == v1.name then -- 方式1：通过对比 name 来找到目标内容 进行翻译
                                        if v.name ~= "" and v.name == v1.name then
                                            v.label = v1.CH_label or v1.label or v.label
                                            v.hover = v1.hover or v.hover
                                            if v.options then
                                                for n, m in pairs(v.options) do
                                                    if m and v1.options and v1.options[n] then
                                                        if m.data == v1.options[n].data then -- data数据对得上才能汉化
                                                            m.description = v1.options[n].description or m.description
                                                            m.hover = v1.options[n].hover or m.hover
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                        break
                                    elseif v.label == v1.label and v1.CH_label then -- 方式2：对比label来找到目标内容进行翻译
                                        v.label = v1.CH_label
                                        v.hover = v1.hover or v.hover
                                        if v.options then
                                            for n, m in pairs(v.options) do
                                                if m and v1.options and v1.options[n] then
                                                    if m.data == v1.options[n].data then
                                                        m.description = v1.options[n].description or m.description
                                                        m.hover = v1.options[n].hover or m.hover
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        return modinfo
    end

-- 为了兼容其他模组使用GetModActualName来定位自己，我们需要修改官方的逻辑 加一个modinfo.old_name
    KnownModIndex.GetModActualName = function(self, fancyname)
        for i,v in pairs(self.savedata.known_mods) do
            if v and v.modinfo and v.modinfo.name then
                if v.modinfo.name == fancyname then
                    return i
                elseif v.modinfo.old_name == fancyname then
                    return i
                end
            end
        end
    end

-- 强制汉化某些模组内容
local old_UpdateModInfo = KnownModIndex.UpdateModInfo -- 看起来进行有关MODS操作的时候就会执行这个函数 那我就HOOK一下它吧
KnownModIndex.UpdateModInfo = function(...)
    old_UpdateModInfo(...)
    modimport("scripts/mods_chs_fix")
end

end