AddPrefabPostInit("world",function()
	AddClassPostConstruct("widgets/gesturebadge",function(inst)
		local translate = {
			rude = "粗鲁",
			annoyed = "恼怒",
			sad = "伤心",
			joy = "愉悦",
			facepalm = "捂脸",
			wave = "挥手",
			dance = "跳舞",
			pose = "摆姿势",
			kiss = "亲吻",
			bonesaw = "锯骨",
			happy = "开心",
			angry = "生气",
			sit = "坐下",
			squat = "蹲下",
			sleepy = "困倦",
			yawn = "打哈欠",
			swoon= "晕倒",
			chicken = "火鸡舞",
			robot = "机器舞",
			step = "踢踏舞",
			fistshake = "握拳",
			flex = "秀肌肉",
			impatient = "不耐烦",
			cheer = "欢呼",
			laugh = "大笑",
			shrug = "耸肩",
			slowclap = "缓慢拍手",
			carol = "歌颂",
			dance2 = "跳舞2",
			dance3 = "跳舞3",
			run = "跑步",
			thriller="惊悚",
			choochoo="欧耶",
			plsgo="走开",
			ez="放轻松",
			box="擦玻璃",
			bicycle="骑车",
			comehere="过来",
			wasted="疲惫",
			buffed="升级",
			pushup="俯卧",
			fakebed="睡觉",
			shocked="电击",
			dead="死亡",
			spooked="见鬼",
			angry2="生气2",
			annoyed2="恼怒2",
			gdi="该死的",
			pose2="动作2",
			pose3="动作3",
			pose4="动作4",
			pose5="动作5",
			grats="祝贺",
			sigh="叹气",
			heya="嘿呀",
            toast="干杯",
		}
		if inst.text then
			local text=string.gsub(inst.text:GetString(),"/","")
			if translate[text] then
				inst.text:SetString(translate[text])
				inst.text:SetScale(1,1,1)
				local pos=inst.text:GetPosition()
				inst.text:SetPosition(0,pos.y,0)
				local w,h=inst.text:GetRegionSize()
				inst.bg:SetScale(.012*(w+3),.5,0)
			end
		end
	end)
end)