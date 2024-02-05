if GLOBAL.TheNet:GetLocalUserName() then
    playername = GLOBAL.TheNet:GetLocalUserName()--playername = 玩家名称 （目前还不知道如何将它设置为仇恨目标）
else
    playername = "梅老板"--如果获取不到玩家名称...
end
local STRINGS = GLOBAL.STRINGS

STRINGS.PIG_TALK_FOLLOWWILSON = { "你是朋友", "我喜欢朋友", "你也想和我交易？", "今天我们结为兄弟！" }
STRINGS.PIG_TALK_PANICFIRE = { "热热热！", "谁有我倒霉！！！！！", "放火烧山怎么说！" }
STRINGS.PIG_TALK_LOOKATWILSON = { "这不贪一波？", "你不是猪人", "一个肉就想收买我？" }
STRINGS.PIG_TALK_RUNAWAY_WILSON = { "我不想沾染非气！", playername.."离远点！", "你想非礼我？", "那是我的地盘。" }
STRINGS.PIG_TALK_FIGHT = { "打爆你的蛋！", "干就完事了！", "卧槽！" }
STRINGS.PIG_TALK_PANIC = { "卧槽！！！！！", "太黑了！和"..playername.."一样黑！", "啊啊啊啊啊！！" }
STRINGS.PIG_GUARD_TALK_FIGHT = { "为了国王！", "看什么看！", "拯救国王！干翻"..playername }
STRINGS.PIG_GUARD_TALK_LOOKATWILSON = { "你能不能滚开？", "你走开", "你不能留下" }
STRINGS.PIG_TALK_GO_HOME = { "回家玩饥荒了！", "回家！回家！" }
STRINGS.PIG_TALK_ATTEMPT_TRADE = { "你要给我什么？", "但愿不要白嫖！" }
STRINGS.PIG_TALK_FIND_MEAT = { "来都来了", "奥利给！干了兄弟们！", "我吃东西！", "吃东西的时间到了！" }
--目前只知道这么多...你还知道什么？评论区见