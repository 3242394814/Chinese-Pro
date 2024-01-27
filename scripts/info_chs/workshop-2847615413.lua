if KnownModIndex:GetModInfo("workshop-2847615413").name == "Gridless Map" then
    modname ="Gridless Map(无网格地图)"
else
    modname = KnownModIndex:GetModInfo("workshop-2847615413").name
end



local info=
{
    name = modname,
    description = [[通过清除贴图与移除地图的网格覆盖来提高可见性。

还可以看看我的 Fogless Map(无雾地图) mod!]],
}
return info