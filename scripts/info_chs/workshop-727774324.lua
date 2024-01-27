local info={
  name="Craft Pot(智能锅)",
  description = "你不认为烹饪和手工制作很相似吗？",
  configuration_options =
  {
    {
      name = "lock_uncooked",
      label = "锁定未煮过的",
      options =
      {
          {description = "关", data = false},
          {description = "开", data = true},
      },
      default = false
    },
    {
      name = "invert_controller",
      label = "反转控制器",
      options =
      {
          {description = "关", data = false},
          {description = "开", data = true},
      },
      default = false
    },
    {
        name = "has_popup",
        label = "弹出成分菜单",
        options =
        {
            {description = "显示", data = true},
            {description = "隐藏", data = false},
        },
        default = true
    }
  }
}
return info