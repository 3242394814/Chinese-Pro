name = "Chinese++ Pro"
version = "3.2.2"
description = "当前版本：" ..version .. --"\n更新日期：2024年2月5日\n" ..
[[

汉化你的客户端/服务器 MOD名称、MOD介绍、MOD设置 甚至MOD内容！
这既是客户端模组 也是服务器模组，当客户端启用此模组后 开服时服务器也会自动启用此模组
支持汉化的MOD与更新日志请在创意工坊查看

本MOD内含冰冰羊的自用汉化包，修改了一些令人不爽的汉化内容，可与【中文语言包】同时开启~
新增高清字体！如果还有其他修改字体的MOD，请不要与此MOD的高清字体同时开启
容易导致崩溃

󰀔汉化其它模组信息功能：当前未生效×]]
author = "冰冰羊"
api_version = 10
priority = -100001

dst_compatible = true--兼容联机版
forge_compatible = true--兼容熔炉
gorge_compatible = true--兼容暴食
dont_starve_compatible = false--不兼容单机版

all_clients_require_mod = true--所有人都需要下载 -为了保证汉化效果 此MOD既是客户端MOD 也是服务器MOD QwQ
client_only_mod = true
server_only_mod = false
server_filter_tags = {"Chinese++ Pro "..version}--服务器Tag 在服务器列表中搜索此Tag可以查看安装了此模组的服务器

icon_atlas = "images/modicon.xml"
icon = "modicon.tex"

folder_name = folder_name or "workshop-"
if not folder_name:find("workshop-") then
	name = name .. " - 本地版"
    function MOD_MODE()
        return
        {
        name = "Test-Mode",
        label = "模组运行环境",
        options = { { description = "本地", data = "Chinese-Pro" }, },
        default = "Chinese-Pro"
        }
    end
else
    function MOD_MODE()
        return
        {
        name = "Test-Mode",
        label = "模组运行环境",
        options = { { description = "创意工坊", hover="此模组是从创意工坊下载的", data = "workshop-2941527805" }, },
        default = "workshop-2941527805"
        }
    end
end

local function SkipSpace(name, client_config)--空一行。如果填写了name则显示为标题。如果client_config为true则只显示在客户端设置页面上 用开服工具(例如鸽子鸽开服工具)就看不到了
	return { name = name, hover = "", options = { { description = "", data = false }, }, default = false, client = client_config}
end

local function mainConfig(name, label, hover, default, client_config)--选项名称(name),显示在游戏里的名称[如果没有则显示name](label),介绍(hover),默认选项(default),是不是给客户端设置的选项(client_config)
    if client_config then
    v_name = "client_"..name
    v_hover = "当对应的MOD开启时，自动加载汉化文件。此开关仅跟随客户端设置而非服务器"
    else
    v_name = "server_"..name
    v_hover = "当对应的MOD开启时，自动加载汉化文件"
    end

	return {
		name = v_name,
		label = label,
		hover = hover,
		options =
        {
            { description = "自动检测并开启", data = true, hover = v_hover },
			{ description = "关闭", data = false, hover = "关闭？所以是有问题嘛？有问题请去评论区留言哦QAQ" }, },
		default = default,
        client = client_config,
	    }
end

configuration_options =
{
    SkipSpace("游戏内汉化"),
    {
        name = "try_off_clearfont",
        label = "关闭高清字体",
		hover = "当启用此选项后 如果客户端的“高清字体”设置为\"自动\"(默认选项) 那么将不再加载高清字体\n防止未订阅此模组的人不喜欢高清字体功能",
        options =
        {
            {description = "启用", hover = "启用此功能" , data = true},
            {description = "禁用", hover = "不启用此功能" , data = false},
        },
        default = false,
    },
    {
        name = "clear_font",
        label = "高清字体",
		hover = "是否启用高清字体(思源黑体)",
        options =
        {
            {description = "自动", hover = "如果服务器启用了此模组的“关闭高清字体”功能则不加载高清字体" , data = "auto"},
            {description = "开启", hover = "如果启用了“自动检测是否有其它字体模组”功能且检测到其它字体模组，则不加载高清字体" , data = true},
            {description = "关闭", hover = "不加载高清字体功能" , data = false},
        },
        default = "auto",
        client = true,
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
        client = true,
    },
    {
        name = "Pigman_Strings",
        label = "梅式󰀐语言包",
        hover = "将游戏中猪人的台词变得和bilibili·踏雪寻梅3124的猪人一样骚",
        options =
        {
        {description = "开启",hover = "",data = true},
        {description = "关闭",hover = "",data = false},
        },
        default = false,
        client = true,
    },
    SkipSpace("常用模组",true),
    mainConfig("workshop-376333686","Combined Status(综合状态显示汉化)","汉化游戏内Combined Status显示的内容\n 例如：Max → 最大值",true,true),
    mainConfig("workshop-351325790","Geometric Placement(几何布局)汉化","汉化游戏内Combined Status的设置页面\n部分内容汉化太麻烦了...如果你会汉化的话请联系作者！",true,true),
    mainConfig("workshop-345692228","MiniMap HUD(小地图)开关按钮汉化","MiniMap HUD模组的小地图开关按钮汉化",true,true),
    mainConfig("workshop-352373173","Gesture Wheel(动作表情轮盘)汉化","将轮盘表情的英文名替换为中文名\n例如：/toast → 干杯",true,true),

    SkipSpace("大型模组"),
    mainConfig("workshop-2039181790","永不妥协游戏内人物介绍汉化","永不妥协人物介绍汉化\n需要更多的汉化内容请搭配\"永不妥协 全汉化\"模组",true),
    mainConfig("workshop-1918927570","Re-Gorge-itated(暴食) 游戏内汉化","Re-Gorge-itated 模组游戏内汉化\n（暂时不包括沃利等人物的台词汉化）",true),
    mainConfig("workshop-1938752683","ReForged(熔炉) 游戏内汉化","调用熔炉MOD中的中文简体语言来汉化熔炉MOD的游戏内页面",true),

    SkipSpace("辅助型/冷门模组"),
    mainConfig("workshop-2621090176","Wormholes/Sinkholes Icons For Server\n虫洞/天坑的服务器图标翻译优化","修正游戏内原作者写反的“取消”和“接受”",true),
    mainConfig("workshop-2010472942","Reign of Runts(侏儒的统治)汉化","汉化Reign of Runts游戏内部分内容",true),
    mainConfig("workshop-1298780476","Nightmare phase indicator 中文宣告优化","将Nightmare phase indicator模组的宣告内容替换为我的内容",true,true),
    mainConfig("workshop-2994120042","Telepoof mode on/off\n(懒人传送杖传送功能开关)游戏内汉化","汉化 Telepoof mode on/off 游戏内的开关文字",true,true),
    mainConfig("workshop-2976382468","Bone Helm Shadow Toggle\n(开关显示影怪) 提示汉化","汉化 Bone Helm Shadow Toggle 里按下快捷键时的提示内容",true,true),
    mainConfig("workshop-1903101575","Auto-Join 汉化","汉化首页底部和服务器列表右下角的\nRejoin→重新加入 Cancel→取消",true,true),
    mainConfig("workshop-2480826828","Ground Chest汉化","汉化游戏内UI页面",true,true),
    mainConfig("workshop-1948762120","暴食(客户端)主页面文本汉化","Re-Gorge-itated (Client) 模组汉化",true,true),

    SkipSpace("冒险模式系列"),
    mainConfig("workshop-1847959350","Adventure Mode(冒险模式)汉化","汉化Adventure Mode模组内文本\n目前由于主体模组每章章节的标题使用英文字符串写死了 无法汉化",true),
    mainConfig("workshop-756229217","Teleportato(世界折跃)汉化","汉化Teleportato模组",true),

    SkipSpace(" ",true),
    SkipSpace("MOD信息页面汉化",true),
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
        client = true,
    },
    SkipSpace(" "),
    SkipSpace("其它"),
    {
        name = "check_mod",
        label = "自动检测是否有其它字体模组",
        hover = "开启后:如果检测到其它的字体模组则停止加载本模组的高清字体。但如果你想从其它字体\n切换到本模组的高清字体则需要关闭它们然后重新启动一次游戏（不然游戏自己也会崩溃）",
        options =
        {
            {description = "开启",hover = "",data = true},
            {description = "关闭",hover = "",data = false},
        },
        default = true,
        client = true,
    },
    MOD_MODE(),
}