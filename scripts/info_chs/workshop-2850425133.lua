local description = KnownModIndex:GetModInfo("workshop-2850425133").description

description = string.gsub(description,"Brightens the map and improves visibility by removing the fog on previously explored areas of the map. But it may be harder to track your own icon on the map %(this may be fixed later%).",
"通过消除先前探索过的地图区域上的雾，使地图变亮并提高可见性。但在地图上追踪自己的图标可能会更困难（这可能会在稍后解决）。")
description = string.gsub(description,"This is a client%-side mod, so it doesn't require the server to have it. Check out my Gridless Map mod too!","这是一个客户端mod，所以它不需要服务器拥有它。也可以看看我的Gridless Map(无网格地图)mod！")
description = string.gsub(description,"Changelog:","更新记录：")
description = string.gsub(description, "%*NEW%* Fixed an issue where learning maps didn't work.", "*新增* 修复了学习地图不起作用的问题。")
description = string.gsub(description, "Fixed the blinding white screen as a ghost.", "修复了令人眼花缭乱的白色屏幕像鬼影一样。")
description = string.gsub(description, [[Added a workaround for the bug where map scrolls and bottled messages wouldn't reveal anything on the map until you relogged or changed shards. The mod will re%-enable fog so the map can show the new areas revealed.]],
"添加了一个解决方法，以解决以下错误：\n在重新记录或穿越世界(上下洞穴)之前，地图滚动和阅读瓶中信不会显示地图上的任何内容。  mod将重新启用雾，以便地图可以显示新显示的区域。\n")
description = string.gsub(description,"THIS DOES NOT REVEAL OR EXPLORE ANY EXTRA PART OF THE MAP. It just makes the fog of war %(grey%-tinted%) area untinted.","这不会揭示或探索地图的任何额外部分。它只会使战争迷雾（灰色）区域变为无色。")

local info =
{
    name = "Fogless Map(无雾地图)",
    description = description,
}
return info