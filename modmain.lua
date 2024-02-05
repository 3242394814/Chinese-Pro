if GetModConfigData("冰冰羊的个人汉化",true) then
    LoadPOFile("scripts/BBGOAT_chs.po", "zh")
    --GLOBAL.TranslateStringTable( GLOBAL.STRINGS ) --同时应用到游戏内文本汉化
end

if GetModConfigData("Pigman_Strings",true) then--煤式猪人语言包
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

--ModIndex:GetModFancyName(modname)--笔记:获取模组花式名称

--部分翻译需要让服务器也加载此MOD才能生效。当本模组开启时，会自动插入到服务器模组中
local this_mod = GetModConfigData("Test-Mode")
local OldGetEnabledServerModNames = GLOBAL.ModManager.GetEnabledServerModNames
GLOBAL.ModManager.GetEnabledServerModNames=function(self)
	local server_mods = OldGetEnabledServerModNames(self)
		if GLOBAL.IsNotConsole() then
		table.insert(server_mods, this_mod)--将本模组插入到服务器模组列表中。开启洞穴时、直接复制存档文件夹到专服时也会加载此模组
		end
	return server_mods
end

--检测是否有其它字体模组
local function ismodloaded(name)
	if GLOBAL.KnownModIndex:IsModEnabled(name) then return true end
	for _, v in ipairs(GLOBAL.KnownModIndex:GetModsToLoad()) do
		if v == name then return true end
	end
end

if GetModConfigData("check_mod",true) then
	if
		ismodloaded("workshop-2697699832") or
		ismodloaded("workshop-678340265") or
		ismodloaded("workshop-2408210241") or
		ismodloaded("workshop-2548665665") or
		ismodloaded("workshop-2908253266") or
		ismodloaded("workshop-2536466536") or
		ismodloaded("workshop-2771766820") or
		ismodloaded("workshop-2908218000") or
		ismodloaded("workshop-2908204672") or
		ismodloaded("workshop-1948672481") or
		ismodloaded("workshop-2777522581") or
		ismodloaded("workshop-1950096199") or
		ismodloaded("workshop-2403997762") or
		ismodloaded("workshop-1947681600") or
		ismodloaded("workshop-1950033847") or
		ismodloaded("workshop-1947732315") or
		ismodloaded("workshop-2552315006") or
		ismodloaded("workshop-1947687544") or
		ismodloaded("workshop-1947686229") or
		ismodloaded("workshop-2476520859") or
		ismodloaded("workshop-1948684537")
	then
		font_Conflict_MOD = true
		print("Chinese++ Pro:检测到其它字体模组！本次不加载本模组的高清字体功能")
	end
end

-- 高清字体
local function load_clear_font()
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

if GetModConfigData("clear_font",true) == true and not font_Conflict_MOD then
	load_clear_font()
elseif GetModConfigData("clear_font",true) == "auto" and not font_Conflict_MOD and not GetModConfigData("try_off_clearfont") then--“高清字体”=自动 and 没有冲突模组 and 没有开启“关闭高清字体”
	load_clear_font()
end