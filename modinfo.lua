name = "Chinese++ Pro"
version = "3.2"
description = "当前版本：" ..version .. --"\n更新日期：2024年1月27日\n" ..
[[
    
汉化你的客户端/服务器 MOD名称、MOD介绍、MOD设置 甚至MOD内容！
支持汉化的MOD与更新日志请在创意工坊查看

本MOD内含冰冰羊的自用汉化包，修改了一些令人不爽的汉化内容，可与【中文语言包】同时开启~
新增高清字体！如果还有其他高清字体MOD，请不要与此MOD的高清字体同时开启！
容易导致崩溃

󰀔汉化其它模组信息功能：当前未生效×]]
author = "冰冰羊"
api_version = 10
priority = -100001

dst_compatible = true
forge_compatible = true
gorge_compatible = true
dont_starve_compatible = false

all_clients_require_mod = true
client_only_mod = true
server_only_mod = false
server_filter_tags = {"Chinese++ Pro "..version}

icon_atlas = "images/modicon.xml"
icon = "modicon.tex"

local function SkipSpace(name)
	return { name = name, hover = "", options = { { description = "", data = false }, }, default = false, }
end

local function mainConfig(name, label, hover, default)
	return {
		name = name,
		label = label,
		hover = hover,
		options =
        {
            { description = "自动检测并开启", data = true, hover = "当对应的MOD开启时，自动加载汉化文件" },
			{ description = "关闭", data = false, hover = "关闭？所以是有问题嘛？有问题请去评论区留言哦QAQ" }, },
		default = default,
	    }
end

configuration_options =
{
    SkipSpace("游戏内汉化"),
    {
        name = "clearfont",
        label = "高清字体",
		hover = "是否启用高清字体(思源黑体)",
        options =
        {
            {description = "开启", hover = "如果开启了其它高清字体MOD，请关闭这个！" , data = true},
            {description = "关闭", hover = "已关闭" , data = false},
        },
        default = true
    },
    {
        name = "冰冰羊的个人汉化",
        label = "冰冰羊的中文翻译优化",
        hover = "修改了一些令人不爽的汉化内容、添加了一些提示、汉化岛屿冒险MOD的世界设置（推荐开启）",
        options =
        {
        {description = "开启",hover = "打开 打开 一定要打开",data = true},
        {description = "关闭",hover = "为什么要关掉？ QAQ",data = false},
        },
        default = true,
    },
    {
        name = "Pigman_Strings",
        label = "󰀐语言包",
        hover = "想体验煤式猪人语言包吗？开启这个选项试试吧。但是猪人喊的名字是你自己！",
        options =
        {
        {description = "开启",hover = "",data = true},
        {description = "关闭",hover = "",data = false},
        },
        default = false,
    },
    SkipSpace("常用模组"),
    mainConfig("workshop-376333686","Combined Status(综合状态显示汉化)","汉化游戏内Combined Status显示的内容\n 例如：Max → 最大值",true),
    mainConfig("workshop-351325790","Geometric Placement(几何布局)汉化","汉化游戏内Combined Status的设置页面\n部分内容汉化太麻烦了...如果你会汉化的话请联系作者！",true),
    mainConfig("workshop-345692228","MiniMap HUD(小地图)开关按钮汉化","MiniMap HUD模组的小地图开关按钮汉化",true),
    mainConfig("workshop-352373173","Gesture Wheel(动作表情轮盘)汉化","将轮盘表情的英文名替换为中文名\n例如：/toast → 干杯",true),

    SkipSpace("大型模组"),
    mainConfig("workshop-2039181790","永不妥协游戏内人物介绍汉化","永不妥协人物介绍汉化\n需要更多的汉化内容请搭配\"永不妥协 全汉化\"模组",true),
    mainConfig("workshop-1918927570","Re-Gorge-itated(暴食) 游戏内汉化","Re-Gorge-itated 模组游戏内汉化\n（暂时不包括沃利等人物的台词汉化）",true),
    mainConfig("workshop-1938752683","ReForged(熔炉) 游戏内汉化","调用熔炉MOD中的中文简体语言来汉化熔炉MOD的游戏内页面",true),

    SkipSpace("辅助型/冷门模组"),
    mainConfig("workshop-2621090176","Wormholes/Sinkholes Icons For Server\n虫洞/天坑的服务器图标翻译优化","替换那些令人难以捉摸的机翻内容",true),
    mainConfig("workshop-2010472942","Reign of Runts(侏儒的统治)汉化","汉化Reign of Runts游戏内部分内容",true),
    mainConfig("workshop-1298780476","Nightmare phase indicator 中文宣告优化","将Nightmare phase indicator模组的宣告内容替换为我的内容",true),
    mainConfig("workshop-2994120042","Telepoof mode on/off\n(懒人传送杖传送功能开关)游戏内汉化","汉化 Telepoof mode on/off 游戏内的开关文字",true),
    mainConfig("workshop-2976382468","Bone Helm Shadow Toggle\n(开关显示影怪) 提示汉化","汉化 Bone Helm Shadow Toggle 里按下快捷键时的提示内容",true),
    mainConfig("workshop-1903101575","Auto-Join 汉化","汉化首页底部的\nRejoin→重新加入 Cancel→取消",true),
    mainConfig("workshop-2480826828","Ground Chest汉化","汉化游戏内UI页面",true),
    mainConfig("workshop-1948762120","暴食(客户端)主页面文本汉化","Re-Gorge-itated (Client) 模组汉化",true),

    SkipSpace("冒险模式系列"),
    mainConfig("workshop-1847959350","Adventure Mode(冒险模式)汉化","汉化Adventure Mode模组内文本\n目前由于主体模组每章章节的标题使用英文字符串写死了 无法汉化",true),
    mainConfig("workshop-756229217","Teleportato(世界折跃)汉化","汉化Teleportato模组",true),

    SkipSpace(" "),
    SkipSpace("MOD信息汉化"),
    {
        name = "mod_info_Chs",
        label = "MOD信息汉化",
        hover = "汉化的内容有：MOD名称、MOD介绍、MOD配置\n支持汉化的MOD请在创意工坊查看",
        options =
        {
            {description = "全部开启",hover = "如果有翻译不当的地方，请反馈！",data = true},
            {description = "全部关闭",hover = "有什么问题！？去反馈！！！",data = false},
        },
        default = true,
    },
    SkipSpace(" "),
    {
        name = "TestMode",
        label = "本地测试模式(作者用的，别开！)",
        hover = "给作者本地测试用的开关,请不要打开！\n开启后不会有任何新功能或汉化内容，所以请不要尝试",
        options =
        {
            {description = "开启",hover = "",data = "Chinese-Pro"},
            {description = "关闭",hover = "",data = "workshop-2941527805"},
        },
        default = "workshop-2941527805",
    }
}