local function InGame() 
    return GLOBAL.ThePlayer and GLOBAL.ThePlayer.HUD and not GLOBAL.ThePlayer.HUD:HasInputFocus()
end
local function CheckForSkeletonHat()
    local head_item
    if GLOBAL.EQUIPSLOTS.HEAD then
        head_item = GLOBAL.ThePlayer.replica.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HEAD)
    else
        head_item = GLOBAL.ThePlayer.replica.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HAT)
    end
    if head_item and head_item.prefab == "skeletonhat" then
        return true
    else
        return false
    end
end

GLOBAL.TheInput:AddKeyDownHandler(GLOBAL.GetModConfigData("keybind","workshop-2976382468"),function()
	if InGame() and GLOBAL.TheWorld and CheckForSkeletonHat() == true then
		if GLOBAL.ThePlayer and GLOBAL.ThePlayer.components and GLOBAL.ThePlayer.components.talker then
			GLOBAL.ThePlayer.components.talker:Say("BHT: 影怪显示 "..(GLOBAL.ThePlayer.hasshadowsenabled and "开启" or "关闭"))
		end
	end
end)