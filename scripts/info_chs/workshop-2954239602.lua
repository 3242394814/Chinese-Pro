local info=
{
    name="Bone Armor Cooldown Visualization(骨甲冷却时间可视化)",
    description="为骨甲添加冷却可视化效果",
    configuration_options =
    {
        {
            name = "hasSound",
            label = "关闭冷却时播放声音",
            options =
            {
                {description = "否", data = false},
                {description = "是", data = true},

            },
            default = false,
        },
        {
            name = "cooldownColor",
            label = "冷却时间颜色",
            options =
            {
                {description = "黑色", data = 0.0},
                {description = "蓝色", data = 0.4},

            },
            default = 0.0,
        }
    }
}
return info