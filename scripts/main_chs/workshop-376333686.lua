AddPrefabPostInit("world",function()
	AddClassPostConstruct("widgets/badge",function(inst)
		local OldSetPercent = inst.SetPercent
		if OldSetPercent then
			function inst:SetPercent(val, max, ...)
				OldSetPercent(self, val, max, ...)
				self.maxnum:SetString(string.gsub(self.maxnum:GetString(),"Max:","最大值:"))
			end
		end
	end)
	AddClassPostConstruct("widgets/uiclock", function(inst)
		GLOBAL.STRINGS.UI.HUD.WORLD_CLOCKDAY = GLOBAL.LanguageTranslator:GetTranslatedString("STRINGS.UI.HUD.WORLD_CLOCKDAY")
	end)
	AddClassPostConstruct("widgets/statusdisplays", function(inst)
		if inst.season then
			local function UpdateText()
				if string.match(inst.season.num:GetString(),"to") then
					inst.season.num:SetString(string.gsub(inst.season.num:GetString(),"to","天到").."季")
				end
				inst.season.num:SetString(string.gsub(inst.season.num:GetString(),"FAILED","错误"))
			end
			local OldUpdateText = inst.season.UpdateText
			inst.season.UpdateText = function(self) OldUpdateText(self) UpdateText() end
			inst.season.OnGainFocus = function() OldUpdateText(true) UpdateText() end
			inst.season.OnLoseFocus = function() OldUpdateText(false) UpdateText() end
			inst.inst:ListenForEvent("cycleschanged", UpdateText, GLOBAL.TheWorld)
			inst.inst:ListenForEvent("seasonlengthschanged", UpdateText, GLOBAL.TheWorld)
		end
	end)
	AddClassPostConstruct("widgets/seasonclock", function(inst)
		function inst:GetRemainingString()
			local days_left = ""
			if self._dst then
				days_left = TheWorld.state.remainingdaysinseason
			else
				days_left = (1-GetSeasonManager().percent_season) * GetSeasonManager():GetSeasonLength()
			end
			local days_str = STRINGS.UI.HUD.CLOCKDAYS or STRINGS.UI.DEATHSCREEN.DAYS
			return "还剩" .. "\n" .. math.floor(days_left+0.5) .. " " .. days_str:lower()
		end
	end)
	AddClassPostConstruct("widgets/controls", function(inst)
		if inst.clock and inst.clock._text then
			inst.clock._text:SetScale(1, 1, 0)
		end
	end)
end)