if GLOBAL.TheNet:GetLocalUserName() then
    playername = GLOBAL.TheNet:GetLocalUserName()--playername = 玩家名称
else
    playername = "你这个B"--如果获取不到玩家名称...
end
local STRINGS = GLOBAL.STRINGS

STRINGS.PIG_TALK_LOOKATWILSON = { "你是谁？", "你不是猪人", "这不贪一波？" }
STRINGS.PIG_TALK_RUNAWAY_WILSON = { "我不想沾染非气！", "离远点！", "你退后！", "那是我的地盘。" }
STRINGS.PIG_TALK_FIGHT = { "打爆你的蛋！", "你完蛋了！", "嗷嗷嗷！" }
STRINGS.PIG_TALK_PANIC = { "卧槽！！！！！", "太黑了！和"..playername.."一样黑！", "啊啊啊啊啊！！" }
STRINGS.PIG_GUARD_TALK_FIGHT = { "为了国王！", "看什么看！", "拯救国王！干翻"..playername }
STRINGS.PIG_TALK_GO_HOME = { "回家玩饥荒了！", "回家！回家！" }

--目前只能知道这么多...你还知道什么？评论区见