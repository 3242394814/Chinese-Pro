local hover_text = "配置一天中的哪些时间点会触发自动保存。只有第一个启用的选项将被使用，除非频率被设置为多阶段。"
local on_off_options = {
    {description = "开启", data = true},
    {description = "关闭", data = false}
}
local info=
{
	name = "Advanced Auto-Save(高级自动保存)",
	description = "通过提供更多可配置性来改进自动保存功能。",
	configuration_options =
	{
		{
			name = "Save Frequency",
			label = "保存频率",
			hover = "配置自动保存触发的频率，或完全禁用自动保存。根据以下选项，选择“多个阶段”每天保存多次。",
			options = 
			{
				{description = "从不", data = false},
				{description = "多个阶段", data = 0},
				{description = "每天", data = 1},
				{description = "每隔一天", data = 2},
				{description = "每隔三天", data = 3},
				{description = "每隔四天", data = 4},
				{description = "每隔五天", data = 5},
			},
			default = 1
		},
		{
			name = "Dawn",
			label = "黎明保存",
			hover = hover_text,
			options = on_off_options,
			default = true
		},
		{
			name = "Dusk",
			label = "黄昏保存",
			hover = hover_text,
			options = on_off_options,
			default = false
		},
		{
			name = "Night",
			label = "晚上保存",
			hover = hover_text,
			options = on_off_options,
			default = false
		}
	}
}
return info