local disable_save_slot_toggle_options = {
  { description = "无", data = false },
}

for i = 0, 25 do
  disable_save_slot_toggle_options[i + 2] = {
    description = "Control + " .. ("").char(65 + i),
    data = 97 + i
  }
end

-- 5% to 100% with steps of 5
local percentage_options = {}
for i = 1, 20 do
  local percentage = i * 5
  local data = percentage / 100
  percentage_options[i] = {
    description = percentage .. "%",
    data = data
  }
end

local offset_options = {}
for i = 0, 16 do
  local data = 1 + (i * .25)
  local extra_offset = (data - 1) * 100
  offset_options[i+1] = {
    description = i == 0 and "默认" or "+" .. extra_offset .. "%",
    data = data
  }
end

local info={
  name = "Save Equipment Slots(保存物品插槽)",
  description = "保存物品的物品栏插槽，并确保它们始终返回到已保存的插槽。如果已保存的插槽被占用，物品将自动重新排列以腾出空间。",
  configuration_options =
  {
    {
      name = "apply_to_items",
      label = "应用于哪些物品",
      hover = "配置应保存的物品类型。",

      options = {
        { description = "装备", data = "100" },
        { description = "装备+食物", data = "110" },
        { description = "装备+治疗物", data = "101" },
        { description = "装备+食物+治疗物", data = "111" },
        { description = "所有物品", data = "all" },
      },

      default = "100"
    },

    {
      name = "show_slot_icons",
      label = "显示插槽图标",
      hover = "在已保存的插槽上方显示已保存物品的图标.\n"..
              "单击图标以清除该物品的已保存插槽。",

      options = {
        { description = "显示", data = true },
        { description = "隐藏", data = false },
      },

      default = true
    },

    {
      name = "slot_icon_opacity",
      label = "插槽图标不透明度",
      hover = "设置插槽图标的不透明度。",
      options = percentage_options,
      default = .75
    },

    {
      name = "slot_icon_scale",
      label = "插槽图标比例",
      hover = "设置插槽图标的比例。",

      options = percentage_options,
      default = .75
    },

    {
      name = "slot_icon_offset",
      label = "插槽图标垂直偏移",
      hover = "设置插槽图标的垂直偏移\n" ..
              "表示为1格物品高度的百分比。",

      options = offset_options,
      default = 1
    },

    {
      name = "disable_save_slots_toggle",
      label = "禁用保存插槽切换键",
      hover = "用于打开/关闭保存插槽的组合键。",
      options = disable_save_slot_toggle_options,
      default = false
    },

    {
      name = "save_slots_initial_state",
      label = "保存插槽初始状态",
      hover = "“保存插槽”行为的初始状态。\n"..
              "仅在配置切换键时使用。",

      options = {
        { description = "开启", data = true },
        { description = "关闭", data = false },
      },

      default = true
    },

    {
      name = "disable_slot_icon_click_when_save_slots_off",
      label = "禁用插槽图标单击",
      hover = "控制何时禁用单击插槽图标。",
      options = {
        { description = "从不", data = false },
        { description = "如果保存插槽：关闭", data = true },
      },
      default = false
    },

    {
      name = "allow_equip_for_space",
      label = "允许自动装备，腾出空间",
      hover = "允许装备一个物品，以便为进入的物品腾出空间。",
      options = {
        { description = "开启", data = true },
        { description = "关闭", data = false },
      },

      default = true
    },

    {
      name = "reserve_saved_slots",
      label = "保留保存的插槽",
      hover = "确定保存的槽是否为它们对应的物品保留\n"..
              "并且这只发生在如果有其他空位的时候。",

      options = {
        { description = "从不", data = false },
        { description = "如果有空闲插槽", data = "if_free_slots" },
        { description = "总是", data = "always" },
      },

      default = false
    },

    {
      name = "dst_save_items_on_spawn",
      label = "DST：保存物品槽位",
      hover = "保存物品栏中所有物品的槽位。\n "..
              "当恢复或进入洞穴时，帮助恢复保存的插槽。\n",

      options = {
        { description = "开启", data = true },
        { description = "关闭", data = false },
      },

      default = true
    },

  }
}
return info