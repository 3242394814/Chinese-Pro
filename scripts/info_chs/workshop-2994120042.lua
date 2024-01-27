local info=
{
   name = "Telepoof mode on/off(传送模式 开启/关闭)",
   description = "打开/关闭您的懒人传送杖的传送功能！",
   configuration_options =
   {
      {
         name = "INIT_TELEPOOF_MODE",
         label = "传送开关默认状态",
         hover = "加入服务器或在世界各地/洞穴之间旅行时，懒人法杖的传送功能默认为打开/关闭",
         options = {
            {description = "开", data = true},
            {description = "关", data = false},
         },
         default = true,
      },
   }
}
return info