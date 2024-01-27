local Text = require "widgets/text"
local searchrange_names = {"小","中等","大"}
local searchrange_list = {6,25,80}
local searchrange_colours = {{0.6,0.6,0.6,1},{0.8,0.8,0.8,1},{1,1,1,1}}
local TEMPLATES = require "widgets/redux/templates"

local function CreateButtonInfoHover(self,name,text,offset)
	if not self then return end
	offset = offset or {0,24}
	local identifier = name.."_text"
	self[identifier] = self[name]:AddChild(Text(BUTTONFONT,32))
	self[identifier]:SetPosition(unpack(offset))
	self[identifier]:SetString(text)
	self[identifier]:Hide()

	self[name]:SetOnGainFocus(function() self[identifier]:Show() end)
	self[name]:SetOnLoseFocus(function() self[identifier]:Hide() end)
end

AddClassPostConstruct("widgets/groundchestui",function(inst)
    local options_size = {x = 180+32, y = inst.size_y}

    CreateButtonInfoHover(inst,"optionsbutton","切换选项")
    CreateButtonInfoHover(inst,"refreshbutton","刷新")
    CreateButtonInfoHover(inst,"arrow_left","上一页")
    CreateButtonInfoHover(inst,"arrow_right","下一页")
    CreateButtonInfoHover(inst,"clearbutton","清除搜索")
    inst.UpdatePageText = function ()
        inst.page_text:SetString("页 "..inst.page)
    end

    inst.rangetext:SetText("范围: "..(searchrange_names[inst.searchrange_num] or tostring(inst.searchrange)))
    inst.rangetext_fn = function()
        inst.searchrange_num = (inst.searchrange_num % 3) + 1
		inst.searchrange = searchrange_list[inst.searchrange_num]
		inst.rangetext:SetText("范围: "..(searchrange_names[inst.searchrange_num] or tostring(inst.searchrange)))
		inst.rangetext:SetTextColour(searchrange_colours[inst.searchrange_num] or {1,1,1,1})
    end
    inst.rangetext:SetOnClick(inst.rangetext_fn)

    inst.options_text:SetString("选项")
    inst.skincheckbox:SetText("包含皮肤")
    inst.oceancheckbox:SetText("海中物品")
    inst.boatcheckbox:SetText("船舶模式")
    inst.stackcheckbox:SetText("无视已满组")
    inst.queuecheckbox:SetText("序列顺序")
end)