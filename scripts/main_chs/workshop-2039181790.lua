local STRINGS = GLOBAL.STRINGS


--MOD角色介绍汉化
STRINGS.CHARACTER_TITLES.wathom = "被遗忘的模仿者"
STRINGS.CHARACTER_NAMES.wathom = "Wathom"
STRINGS.CHARACTER_DESCRIPTIONS.wathom = "*顶级掠食者\n*肾上腺素飙升\n*引起动物恐慌\n*他跑得越快，摔得越重"
STRINGS.CHARACTER_QUOTES.wathom = "\"残酷，深渊。\""
STRINGS.CHARACTER_SURVIVABILITY.wathom = "渺茫"--生存几率

STRINGS.CHARACTER_TITLES.winky = "卑鄙的害虫"
STRINGS.CHARACTER_NAMES.winky = "Winky"
STRINGS.CHARACTER_DESCRIPTIONS.winky = "*是一只老鼠\n*可以挖掘相互连接的洞穴\n*'很弱，但很快'\n*可以吃令人恐惧的食物\n*讨厌失去东西"
STRINGS.CHARACTER_QUOTES.winky = "\"吱吱!\""

STRINGS.CHARACTER_TITLES.wixie = "犯罪者"
STRINGS.CHARACTER_NAMES.wixie = "Wixie"
STRINGS.CHARACTER_DESCRIPTIONS.wixie =
    "*擅长弹弓\n*有强大的推力\n*有幽闭恐惧症"
STRINGS.CHARACTER_QUOTES.wixie = "\"不是我！\""


--原版角色介绍汉化 目前使用\n来强行分割该MOD和那个MOD的翻译
    local willow_C_D = STRINGS.CHARACTER_DESCRIPTIONS.willow
    if string.match(willow_C_D,"\n󰀕Lighter lasts longer in the right hands\n󰀕Can ignite things in the cold") then
STRINGS.CHARACTER_DESCRIPTIONS.willow = string.gsub(willow_C_D,"\n󰀕Lighter lasts longer in the right hands\n󰀕Can ignite things in the cold","\n*󰀕打火机在右手上使用时间很长\n*󰀕能在冬天中点燃东西\n")--替换英文
    end

    local wolfgang_C_D = STRINGS.CHARACTER_DESCRIPTIONS.wolfgang
    if string.match(wolfgang_C_D,"(\n󰀕Gains mightiness when well fed)") then
STRINGS.CHARACTER_DESCRIPTIONS.wolfgang = string.gsub(wolfgang_C_D,"\n󰀕Gains mightiness when well fed","\n*󰀕吃饱后获得力量")
    end
    if string.match(wolfgang_C_D,"\n󰀕Too big to push around when mighty") then
STRINGS.CHARACTER_DESCRIPTIONS.wolfgang = string.gsub(STRINGS.CHARACTER_DESCRIPTIONS.wolfgang,"\n󰀕Too big to push around when mighty","\n*󰀕强大时太大而无法推动\n")
    else STRINGS.CHARACTER_DESCRIPTIONS.wolfgang = STRINGS.CHARACTER_DESCRIPTIONS.wolfgang.."\n"
    end

    local wx78_C_D = STRINGS.CHARACTER_DESCRIPTIONS.wx78
    if string.match(wx78_C_D,"\n󰀕Systems are not repaired via lightning") then
STRINGS.CHARACTER_DESCRIPTIONS.wx78 = string.gsub(wx78_C_D,"\n󰀕Systems are not repaired via lightning","\n*󰀕系统不能被闪电修复\n")
    end

    local wickerbottom_C_D = STRINGS.CHARACTER_DESCRIPTIONS.wickerbottom
    if string.match(wickerbottom_C_D,"\n󰀕Reading requires brainpower") then
STRINGS.CHARACTER_DESCRIPTIONS.wickerbottom = string.gsub(wickerbottom_C_D,"\n󰀕Reading requires brainpower","\n*󰀕阅读需要脑力\n")
    end

    local wes_C_D = STRINGS.CHARACTER_DESCRIPTIONS.wes
    if string.match(wes_C_D,"\n󰀕Expanded inner dialogue") then
STRINGS.CHARACTER_DESCRIPTIONS.wes = string.gsub(wes_C_D,"\n󰀕Expanded inner dialogue","\n*󰀕扩大内心对话\n")
    end

    local waxwell_C_D = STRINGS.CHARACTER_DESCRIPTIONS.waxwell
    if string.match(waxwell_C_D,"\n󰀕Can summon his old puppets") then
STRINGS.CHARACTER_DESCRIPTIONS.waxwell = string.gsub(waxwell_C_D,"\n󰀕Can summon his old puppets","\n*󰀕可以召唤他的旧傀儡\n")
    end

    local wathgrithr_C_D = STRINGS.CHARACTER_DESCRIPTIONS.wathgrithr
    if string.match(wathgrithr_C_D,"\n󰀕Combat is less sustaining") then
STRINGS.CHARACTER_DESCRIPTIONS.wathgrithr = string.gsub(wathgrithr_C_D,"\n󰀕Combat is less sustaining","\n*󰀕对战斗不那么渴望\n")
    end

    local winona_C_D = STRINGS.CHARACTER_DESCRIPTIONS.winona
    if string.match(winona_C_D,"\n󰀕Generators are for workers only") then
STRINGS.CHARACTER_DESCRIPTIONS.winona = string.gsub(winona_C_D,"\n󰀕Generators are for workers only","\n*󰀕发电机仅供工人使用")
    end
    if string.match(winona_C_D, "\n󰀕Works hard until lunch") then
STRINGS.CHARACTER_DESCRIPTIONS.winona = string.gsub(STRINGS.CHARACTER_DESCRIPTIONS.winona,"\n󰀕Works hard until lunch","\n*󰀕努力工作到午饭\n")
    else STRINGS.CHARACTER_DESCRIPTIONS.winona = STRINGS.CHARACTER_DESCRIPTIONS.winona .."\n"
    end

    local warly_C_D = STRINGS.CHARACTER_DESCRIPTIONS.warly
    if string.match(warly_C_D, "\n󰀕Absorbs nutrients better, but prefers more variety") then
STRINGS.CHARACTER_DESCRIPTIONS.warly = string.gsub(warly_C_D,"\n󰀕Absorbs nutrients better, but prefers more variety","\n*󰀕更好地吸收营养，但更喜欢多样化")
    end
    if string.match(warly_C_D, "\n󰀕Is a certified butcher") then
STRINGS.CHARACTER_DESCRIPTIONS.warly = string.gsub(STRINGS.CHARACTER_DESCRIPTIONS.warly,"\n󰀕Is a certified butcher","\n*󰀕是认证屠夫\n")
    else STRINGS.CHARACTER_DESCRIPTIONS.warly = STRINGS.CHARACTER_DESCRIPTIONS.warly.."\n"
    end

    local wortox_C_D = STRINGS.CHARACTER_DESCRIPTIONS.wortox
    if string.match(wortox_C_D,"\n󰀕Some weak creatures have no meaningful Soul") then
STRINGS.CHARACTER_DESCRIPTIONS.wortox = string.gsub(wortox_C_D,"\n󰀕Some weak creatures have no meaningful Soul","\n*󰀕一些弱小的生物没有有意义的灵魂")
    end
    if string.match(wortox_C_D,"\n󰀕Souls take time to heal") then
STRINGS.CHARACTER_DESCRIPTIONS.wortox = string.gsub(STRINGS.CHARACTER_DESCRIPTIONS.wortox,"\n󰀕Souls take time to heal","\n*󰀕灵魂需要时间来治愈\n")
    else STRINGS.CHARACTER_DESCRIPTIONS.wortox = STRINGS.CHARACTER_DESCRIPTIONS.wortox.."\n"
    end

    local wormwood_C_D = STRINGS.CHARACTER_DESCRIPTIONS.wormwood
    if string.match(wormwood_C_D,"\n󰀕Is dangerously flammable") then
STRINGS.CHARACTER_DESCRIPTIONS.wormwood = string.gsub(wormwood_C_D,"\n󰀕Is dangerously flammable","\n*󰀕危险易燃\n")
    end  

    local walter_C_D = STRINGS.CHARACTER_DESCRIPTIONS.walter
    if string.match(walter_C_D,"*Not afraid of anything") then
STRINGS.CHARACTER_DESCRIPTIONS.walter = "*什么都不怕, 除了受伤 \n*是生存策略的大师 \n*有一个四条腿的朋友 \n*是一位专业的驯狗师 \n*讨厌看到无辜的动物受到伤害"
    end