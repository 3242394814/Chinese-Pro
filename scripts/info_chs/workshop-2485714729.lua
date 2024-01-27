if KnownModIndex:GetModInfo("workshop-2485714729").name == "Color Adjustments" then
    modname ="Color Adjustments(色彩调节)"
else
    modname = KnownModIndex:GetModInfo("workshop-2485714729").name
end


local info=
{
    name=modname,
}
return info