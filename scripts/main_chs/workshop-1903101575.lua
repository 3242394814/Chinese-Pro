AddClassPostConstruct("widgets/autojoin/rejoinbutton", function(inst)
    local state = inst.icon:GetState()
    if state == MOD_AUTO_JOIN.STATE.DEFAULT or state == MOD_AUTO_JOIN.STATE.DEFAULT_FOCUS then
        inst:SetText("重新加入", true)--先覆盖一遍内容
    end
end)

AddClassPostConstruct("widgets/autojoin/rejoinbutton", function(RejoinButton)
    function RejoinButton:SetState(state, ignore_focus)
        if self.icon and (not self.focus or ignore_focus) then
            self.icon:SetState(state)
            self:Update()
        end
    end

    function RejoinButton:Update()
        local state = self.icon:GetState()
        if state == MOD_AUTO_JOIN.STATE.DEFAULT or state == MOD_AUTO_JOIN.STATE.DEFAULT_FOCUS then
            self:SetText("重新加入", true)
            self:SetOnClick(self.rejoin_cb)
        else
            self:SetText("取消", true)
            self:SetOnClick(self.cancel_cb)
        end

        -- text
        self.text:SetPosition(1, -38)
        self.text_shadow:SetPosition(-1, -40)
    end
end)