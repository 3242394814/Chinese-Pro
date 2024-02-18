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


--原版角色介绍汉化 目前使用\n来强行分割该MOD和永不妥协全汉化的MOD翻译
STRINGS.CHARACTER_DESCRIPTIONS.willow = string.gsub(STRINGS.CHARACTER_DESCRIPTIONS.willow,"\n󰀕Lighter lasts longer in the right hands\n󰀕Can ignite things in the cold","\n*󰀕打火机在右手上使用时间很长\n*󰀕能在冬天中点燃东西\n")

STRINGS.CHARACTER_DESCRIPTIONS.wolfgang = string.gsub(STRINGS.CHARACTER_DESCRIPTIONS.wolfgang,"\n󰀕Gains mightiness when well fed","\n*󰀕吃饱后获得力量")
STRINGS.CHARACTER_DESCRIPTIONS.wolfgang = string.gsub(STRINGS.CHARACTER_DESCRIPTIONS.wolfgang,"\n󰀕Too big to push around when mighty","\n*󰀕强大时太大而无法推动")
STRINGS.CHARACTER_DESCRIPTIONS.wolfgang = STRINGS.CHARACTER_DESCRIPTIONS.wolfgang.."\n"

STRINGS.CHARACTER_DESCRIPTIONS.wx78 = string.gsub(STRINGS.CHARACTER_DESCRIPTIONS.wx78,"\n󰀕Systems are not repaired via lightning","\n*󰀕系统不能被闪电修复\n\n")--因为永不妥协全汉化没有在这句话的翻译前面加一个\n 所以我得多加一个

STRINGS.CHARACTER_DESCRIPTIONS.wickerbottom = string.gsub(STRINGS.CHARACTER_DESCRIPTIONS.wickerbottom,"\n󰀕Reading requires brainpower","\n*󰀕阅读需要脑力\n")

STRINGS.CHARACTER_DESCRIPTIONS.wes = string.gsub(STRINGS.CHARACTER_DESCRIPTIONS.wes,"\n󰀕Expanded inner dialogue","\n*󰀕扩大内心对话\n")

STRINGS.CHARACTER_DESCRIPTIONS.waxwell = string.gsub(STRINGS.CHARACTER_DESCRIPTIONS.waxwell,"\n󰀕Can summon his old puppets","\n*󰀕可以召唤他的旧傀儡\n")

STRINGS.CHARACTER_DESCRIPTIONS.wathgrithr = string.gsub(STRINGS.CHARACTER_DESCRIPTIONS.wathgrithr,"\n󰀕Combat is less sustaining","\n*󰀕对战斗不那么渴望\n")

STRINGS.CHARACTER_DESCRIPTIONS.winona = string.gsub(STRINGS.CHARACTER_DESCRIPTIONS.winona,"\n󰀕Generators are for workers only","\n*󰀕发电机仅供工人使用")
STRINGS.CHARACTER_DESCRIPTIONS.winona = string.gsub(STRINGS.CHARACTER_DESCRIPTIONS.winona,"\n󰀕Works hard until lunch","\n*󰀕努力工作到午饭")
STRINGS.CHARACTER_DESCRIPTIONS.winona = STRINGS.CHARACTER_DESCRIPTIONS.winona .."\n"

STRINGS.CHARACTER_DESCRIPTIONS.warly = string.gsub(STRINGS.CHARACTER_DESCRIPTIONS.warly,"\n󰀕Absorbs nutrients better, but prefers more variety","\n*󰀕更好地吸收营养，但更喜欢多样化")
STRINGS.CHARACTER_DESCRIPTIONS.warly = string.gsub(STRINGS.CHARACTER_DESCRIPTIONS.warly,"\n󰀕Is a certified butcher","\n*󰀕是认证屠夫")
STRINGS.CHARACTER_DESCRIPTIONS.warly = STRINGS.CHARACTER_DESCRIPTIONS.warly.."\n"

STRINGS.CHARACTER_DESCRIPTIONS.wortox = string.gsub(STRINGS.CHARACTER_DESCRIPTIONS.wortox,"\n󰀕Some weak creatures have no meaningful Soul","\n*󰀕一些弱小的生物没有有意义的灵魂")
STRINGS.CHARACTER_DESCRIPTIONS.wortox = string.gsub(STRINGS.CHARACTER_DESCRIPTIONS.wortox,"\n󰀕Souls take time to heal","\n*󰀕灵魂需要时间来治愈")
STRINGS.CHARACTER_DESCRIPTIONS.wortox = STRINGS.CHARACTER_DESCRIPTIONS.wortox.."\n"

STRINGS.CHARACTER_DESCRIPTIONS.wormwood = string.gsub(STRINGS.CHARACTER_DESCRIPTIONS.wormwood,"\n󰀕Is dangerously flammable","\n*󰀕危险易燃\n")

STRINGS.CHARACTER_DESCRIPTIONS.walter = string.gsub(STRINGS.CHARACTER_DESCRIPTIONS.walter,"%*Not afraid of anything, except getting hurt \n%*Is a master of survival tactics \n%*Has a four%-legged friend \n%*Is an expert dog trainer \n%*Hates to see innocent animals get hurt",
"*什么都不怕, 除了受伤 \n*是生存策略的大师 \n*有一个四条腿的朋友 \n*是一位专业的驯狗师 \n*讨厌看到无辜的动物受到伤害")
STRINGS.CHARACTER_DESCRIPTIONS.walter = string.gsub(STRINGS.CHARACTER_DESCRIPTIONS.walter,"%*Has a helpful four%-legged friend\n%*Not afraid of anything, except getting hurt\n%*...Or Woby getting hurt\n%*Has no interest in fashion\nHas unique scouts knowledge and tools!",
"*有一个乐于助人的四足朋友\n*什么都不怕,除了受伤\n* ...或者沃比受伤\n*对时尚不感兴趣\n有独特的球探知识和工具！")