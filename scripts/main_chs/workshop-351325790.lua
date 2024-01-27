AddPrefabPostInit("world",function()
	local ModSettings = require("tools/modsettings")
	ModSettings.AddControl(
	"workshop-351325790",
	"KEYBOARDTOGGLEKEY",
	"选项菜单",
	"B",
nil,
	false
)
ModSettings.AddControl(
	"workshop-351325790",
	"GEOMETRYTOGGLEKEY",
	"切换几何体",
	"V",
nil,
	false
)
ModSettings.AddControl(
	"workshop-351325790",
	"SNAPGRIDKEY",
	"栅格",
	"",
nil,
	false
)

	AddClassPostConstruct("screens/geometricoptionsscreen",function(inst)
		local geooptstrings = {
			title = "Geometric Placement 设置",
			subtitle_geometry = "布局",
			subtitle_geometry1 = "轴对齐",
			subtitle_geometry2 = "默认视角",
			subtitle_color = "配色方案",
			subtitle_misc = "杂项",
			subtitle_refresh = "刷新速率",
			subtitle_gridsize = "网格尺寸",
			subtitle_gridsize1 = "小网格",
			subtitle_gridsize2 = "墙体",
			subtitle_gridsize3 = "沙袋",
			subtitle_gridsize4 = "地皮",
			subtitle_color_good = "无阻碍",
			subtitle_color_bad = "有阻碍",
		}
		for k,v in pairs(geooptstrings) do
			if inst[k] then inst[k]:SetString(v) end
		end

		local color_buttons = {
			redgreen = "红/绿",
			redblue = "红/蓝",
			blackwhite = "黑/白",
			blackwhiteoutline = "描边",
			custom = "自定义",
			preset = "预设方案",
		}
		for k,v in pairs(color_buttons) do
			if inst.color_buttons and inst.color_buttons[k] then
				inst.color_buttons[k]:SetText(v)
			end
		end

		local hover_color_buttons = {
			redgreen = "游戏中使用的标准红色和绿色",
			redblue = "将蓝色替代绿色，对红绿色盲有帮助",
			blackwhite = "黑色表示被阻碍，白色表示可以放置，通常更易识别",
			blackwhiteoutline = "黑色和白色，但带有轮廓线，提高可见性",
			custom = "自定义每种类型的点的颜色或隐藏设置",
			preset = "切换回预设选择模式，可以快速选择颜色方案",
		}
		for k,v in pairs(hover_color_buttons) do
			if inst.color_buttons and inst.color_buttons[k] then
				inst.color_buttons[k]:SetHoverText(v)
			end
		end
		
		local geometries = {
			square = "与世界X-Z坐标系对齐。墙和地皮始终使用该布局。",
			diamond = "旋转45\176的矩形.默认视角下看起来是矩形。",
			x_hexagon = "顶边平行于X轴的正六边形",
			flat_hexagon = "默认视角下顶部为边的正六边形",
			z_hexagon = "顶边平行于Z轴的正六边形",
			pointy_hexagon = "默认视角下顶部为角的正六边形",
		}
		for k,v in pairs(geometries) do
			if inst.geometry_buttons and inst.geometry_buttons[k] then
				inst.geometry_buttons[k]:SetHoverText(v)
			end
		end
		
		local toggle_strings = {
			On = "禁用MOD，除非按住CTRL键",
			Off= "启用MOD，除非按住CTRL键"
		}
		local function toggle_trans()
			local val = toggle_strings[inst.toggle_button:GetText()] 
			if val then
				inst.toggle_button:SetHoverText(val)
			end
			inst.toggle_button:SetText(inst.toggle_button:GetText()=="On" and "开启" or "关闭")
		end
		if inst.toggle_button then
			local oldtogglecb=inst.toggle_button.onclick
			inst.toggle_button:SetOnClick(function()
				if oldtogglecb then oldtogglecb() end
				toggle_trans()
			end)
			toggle_trans()
		end
		local toggle_buttons = {
			grid_button="是否显示建造网格",
			placer_button="是否显示占位符（所放置物品的影子）",
			cursor_button="显示鼠标拿取的物品，仅显示数字还是全部隐藏",
			smart_spacing_button="智能间距\n放置的物品可能不是理想的位置",
			till_grid_button="耕地网格辅助\n显示/隐藏在耕地上使用网格辅助犁地",
		}
		for k,v in pairs(toggle_buttons) do
			if inst[k] then
				inst[k]:SetHoverText(v)
			end
		end

		if inst.key_binds_button then
			inst.key_binds_button:SetText("快捷键")
		end

		if inst.refresh then
			local refreshtext = inst.refresh.text
			inst.refresh.text = nil
			inst.refresh:SetHoverText("网格的刷新速度，调高会使它响应更快，但可能造成卡顿。")
			inst.refresh.text = refreshtext
			if inst.refresh.options[11] then
				inst.refresh.options[11].text = "不限"
			end
		end
		if inst.close_button then
			inst.close_button:SetText("关闭")
		end

		-- local color_type_descriptions = {
		-- 	{"细/中：", "", "大：", "", "投影：", "", "区域分界线："}
		-- }

		-- local color_type_hovers = {
		-- 	_GOOD = "无阻碍物，可以放置此处",
		-- 	_BAD = "有阻碍物，无法放置此处",
		-- 	[""] = "网格点颜色\n为位于时",
		-- 	TILE = "地皮轮廓颜色\n为位于时",
		-- 	PLACER = "显示物品投影颜色\n为位于时",
		-- 	NEARTILE = "用于表示区域内分界线轮廓颜色",
		-- }
		--目前我找不到方法替换原内容（如果有大佬会弄 请联系冰冰羊0.0）


	end)
end)