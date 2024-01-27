if GetModConfigData("冰冰羊的个人汉化") then
    LoadPOFile("scripts/BBGOAT_chs.po", "zh")
    --GLOBAL.TranslateStringTable( GLOBAL.STRINGS ) --游戏内文本汉化
end

if GetModConfigData("Pigman_Strings") then
	modimport("scripts/Pigman_Strings")
end
--公共函数部分
function fileexists(name)
	local f=GLOBAL.io.open(name,"r")
	if f~=nil then
		GLOBAL.io.close(f)
		return true
	else
		return false
	end
end

modimport("scripts/mod_chs")--MOD汉化

--ModIndex:GetModFancyName(modname)--获取模组花式名称
--当本模组开启时，自动插入到服务器模组中
local this_mod = GetModConfigData("Test_Mode")
local OldGetEnabledServerModNames = GLOBAL.ModManager.GetEnabledServerModNames
GLOBAL.ModManager.GetEnabledServerModNames=function(self)
	local server_mods = OldGetEnabledServerModNames(self)
		if GLOBAL.IsNotConsole() then
		table.insert(server_mods, this_mod)--将本模组插入到服务器模组列表中。开启洞穴时、直接复制存档文件夹到专服时也会加载此模组
		end
	return server_mods
end

-- 高清字体
if GetModConfigData("clearfont") then
	
	if GLOBAL.KnownModIndex:IsModEnabled("workshop-2403997762") then
		print("Chinese++ Pro:检测到冲突的模组：高清字体 本次取消加载本模组的高清字体！")
		return
	end

    TheSim = GLOBAL.TheSim
    
	local Assets = {}
	if fileexists("../data/fonts/normal.zip") then
		table.insert(Assets,GLOBAL.Asset("FONT", "../data/fonts/normal.zip"))
	else
		table.insert(Assets,GLOBAL.Asset("FONT", MODROOT.."fonts/normal.zip"))
	end
	if fileexists("../data/fonts/normal_outline.zip") then
		table.insert(Assets,GLOBAL.Asset("FONT", "../data/fonts/normal_outline.zip"))
	else
		table.insert(Assets,GLOBAL.Asset("FONT", MODROOT.."fonts/normal_outline.zip"))
	end

	local FONT_TABLE = {
		DEFAULTFONT = "cnfont_outline",
		DIALOGFONT = "cnfont_outline",
		TITLEFONT = "cnfont_outline",
		UIFONT = "cnfont_outline",
		BUTTONFONT = "cnfont",
		NEWFONT = "cnfont",
		NEWFONT_SMALL = "cnfont",
		NEWFONT_OUTLINE = "cnfont_outline",
		NEWFONT_OUTLINE_SMALL = "cnfont_outline",
		NUMBERFONT = "cnfont_outline",
		TALKINGFONT = "cnfont_outline",
		CHATFONT = "cnfont",
		HEADERFONT = "cnfont",
		CHATFONT_OUTLINE = "cnfont_outline",
		SMALLNUMBERFONT = "cnfont_outline",
		BODYTEXTFONT = "cnfont_outline",
		CODEFONT = "cnfont",
	}
	
	local function registerfont()
		TheSim:UnloadFont("cnfont")
		TheSim:UnloadFont("cnfont_outline")
		TheSim:UnloadPrefabs({"cnfonts_"..modname})
		TheSim:RegisterPrefab("cnfonts_"..modname, Assets, {})
		TheSim:LoadPrefabs({"cnfonts_"..modname})
		if fileexists("../data/fonts/normal.zip") then
			TheSim:LoadFont("../data/fonts/normal.zip", "cnfont")
		else
			TheSim:LoadFont(MODROOT.."fonts/normal.zip", "cnfont")
		end
		if fileexists("../data/fonts/normal_outline.zip") then
			TheSim:LoadFont("../data/fonts/normal_outline.zip", "cnfont_outline")
		else
			TheSim:LoadFont(MODROOT.."fonts/normal_outline.zip", "cnfont_outline")
		end
		TheSim:SetupFontFallbacks("cnfont", GLOBAL.DEFAULT_FALLBACK_TABLE)
		TheSim:SetupFontFallbacks("cnfont_outline", GLOBAL.DEFAULT_FALLBACK_TABLE_OUTLINE)
		for k,v in pairs(FONT_TABLE) do
			GLOBAL[k]=v
		end
	end
	
	local OldStart=GLOBAL.Start
	GLOBAL.Start=function()
		registerfont()
		OldStart()
	end
	
	local OldRegisterPrefabs=GLOBAL.ModManager.RegisterPrefabs
	GLOBAL.ModManager.RegisterPrefabs = function(...)
		OldRegisterPrefabs(...)
		registerfont()
	end

end