local boolean = {{description = "是", data = true}, {description = "否", data = false}}
local string = ""
--原版 local keys = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","F1","F2","F3","F4","F5","F6","F7","F8","F9","F10","F11","F12","LAlt","RAlt","LCtrl","RCtrl","LShift","RShift","Tab","Capslock","Space","Minus","Equals","Backspace","Insert","Home","Delete","End","Pageup","Pagedown","Print","Scrollock","Pause","Period","Slash","Semicolon","Leftbracket","Rightbracket","Backslash","Up","Down","Left","Right"}
local keys = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","F1","F2","F3","F4","F5","F6","F7","F8","F9","F10","F11","F12","LAlt","RAlt","LCtrl","RCtrl","LShift","RShift","Tab","Capslock","Space","-","=","Backspace","Insert","Home","Delete","End","Pageup","Pagedown","Print","Scrollock","Pause",".","/",";","(",")","\\","↑","↓","←","→"}
local keylist = {}
for i = 1, #keys do
    keylist[i] = {description = keys[i], data = "KEY_"..string.upper(keys[i])}
end
keylist[#keylist + 1] = {description = "关闭", data = false}

local mouse_options = {{description = "替换", data = "alternative"}, {description = "默认", data = "default"}, {description = "关闭", data = false}}
local telepoof_options = {{description = "关闭", data = false}, {description = "0.3", data = 0.3}, {description = "0.4", data = 0.4}, {description = "0.5", data = 0.5}}
local drop_options = {{description = "放置在网格上", data = "drop_on_grid"}, {description = "正常掉落", data = "normal_drop"}, {description = "关闭", data = false}}

local function AddConfig(label, name, options, default, hover)
    return {label = label, name = name, options = options, default = default, hover = hover or ""}
end

local info={
    name="Advanced Controls(高级控制)",
    configuration_options =
    {
    AddConfig("替代鼠标操作", "mouse_actions_cfg", mouse_options, "alternative", "替代鼠标左键单击操作 现在是步行 而不是检查\n(这允许玩家通过单击其他步行玩家来跟随)"),
    AddConfig("改进使用鼠标拖动时的移动", "improved_mouse_dragging", boolean, true, "继续到松开鼠标左键时鼠标光标所在的位置"),
    AddConfig("双击鼠标右键进行传送", "telepoof_doubleclick", telepoof_options, false, "设置双击速度"),
    AddConfig("物品丢弃选项", "drop_options_cfg", drop_options, "drop_on_grid", "Shift/Ctrl + 右键单击从您的物品栏中丢弃物品\n如果可能,请始终将物品放在墙上网格上"),
    AddConfig("攻击重定向", "reset_target_cfg", boolean, true, "松开攻击键时重置上一个攻击目标,下一个目标将是离你的角色最近的生物"),
    AddConfig("攻击时禁用延迟补偿", "attack_disables_lag_comp", boolean, false, "按下攻击键时禁用延迟补偿"),
    AddConfig("右键地图行走时启用延迟补偿", "map_enables_lag_comp", boolean, false, "右键单击地图时启用延迟补偿"),
    AddConfig("默认启用强制攻击", "force_attack_default", boolean, false),
    AddConfig("强制攻击切换键", "force_attack_key", keylist, "KEY_F1"),
    AddConfig("延迟补偿切换键", "lag_comp_key", keylist, "KEY_F2"),
    AddConfig("仅攻击动作键", "only_attack_key", keylist, "KEY_LSHIFT", "按住此键仅允许左键攻击动作"),
    AddConfig("禁止攻击墙壁", "disable_attack_wall", boolean, true, "使用强制攻击时禁止攻击墙"),
    AddConfig("禁止攻击沙刺", "disable_attack_sandspike", boolean, true, "禁止攻击蚁狮召唤的沙刺"),
    AddConfig("禁止攻击龟堆", "disable_attack_slurtle", boolean, true, "禁止使用攻击技能攻击龟堆"),
    AddConfig("中立暗影生物", "force_attack_shadow", boolean, true, "暗影生物在戴骨盔时是中立的,需要强制攻击"),
    AddConfig("中立蜘蛛和巢穴", "force_attack_spider", boolean, true, "在玩韦伯时中立蜘蛛和蜘蛛窝,需要强制攻击"),
    AddConfig("中立眼球草", "force_attack_lureplant", boolean, true, "玩家现在中立眼球草,需要强制攻击才能打到它"),
    AddConfig("中立嗡嗡蜜蜂", "force_attack_beeguard", boolean, true, "中立蜂后召唤的嗡嗡蜜蜂,现在需要强制攻击"),
    AddConfig("禁止吃稀有食物", "disable_rare_food", boolean, true, "防止你不小心吃到稀有的制作材料,鹿眼球,远古犀牛的守护者之角,曼德拉草")
    }
}
return info