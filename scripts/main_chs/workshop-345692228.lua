AddPrefabPostInit("world",function()
	AddClassPostConstruct("widgets/minimapwidget",function(inst)
		local OldSetOpen = inst.SetOpen
		if OldSetOpen then
			inst.SetOpen=function(self, state)
				OldSetOpen(self, state)
				if self.togglebutton then
					self.togglebutton:SetText(state and "关闭小地图" or "打开小地图")
				end
			end
			inst:SetOpen(true)
		end
	end)
end)