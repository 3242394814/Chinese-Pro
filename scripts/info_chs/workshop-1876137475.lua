local info=
{
	name = "Stat Change Display(状态变化显示)",
	description = "当三维随着变化而跳动时，显示你的三维数据发生了多少变化",
	configuration_options = {
		{
			name = "fontsize",
			label = "字体大小",
			hover = "设置统计数字的大小",
			options = {
				{
					description = "50",
					data = 50
				},
				{
					description = "45",
					data = 45
				},
				{
					description = "40",
					data = 40
				},
				{
					description = "33 (默认)",
					data = 33
				},
				{
					description = "25",
					data = 25
				},
				{
					description = "20",
					data = 20
				},
				{
					description = "15",
					data = 15
				},
				{
					description = "10",
					data = 10
				},
			},
			default = 33
		},
	}
}
return info