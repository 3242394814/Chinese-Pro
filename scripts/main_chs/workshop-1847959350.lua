
local STRINGS = GLOBAL.STRINGS

-- 如果DST的开发者删除了一些strings，请使用以下strings：
-- 文件中的一些字符串是硬编码的，例如adventure_portal.lua 在 Teleportato mod 或 在 maxwellintro.lua
--大部分strings已被设置为强制使用 by.冰冰羊

if STRINGS.UI==nil then
  STRINGS.UI = {}
end
if STRINGS.NAMES==nil then
  STRINGS.NAMES = {}
end
--if STRINGS.UI.UNLOCKMAXWELL==nil then
  STRINGS.UI.UNLOCKMAXWELL =  {
                                  TITLE = "同情？",
                                  BODY1 = "钥匙看起来很合适 你可以自由",
                                  BODY2 ="，但我怀疑抓捕%s的人会高兴...",
                                  YES = "是",
                                  NO = "否",
                              }
--end                        
--if STRINGS.NAMES.MAXWELLLIGHT==nil then
  STRINGS.NAMES.MAXWELLLIGHT = "麦斯威尔之光"
--end
if STRINGS.MAXWELL_ADVENTURETHRONE==nil then
  STRINGS.MAXWELL_ADVENTURETHRONE = {
                                      LEVEL_6 =
                                      {
                                          INTRO =
                                          {
                                              ONE = "这就是结局？",
                                          },
                                          HIT =
                                          {
                                              ONE = "王座不会让你那么做的。我试过了。",
                                          },
                                          NOUNLOCK =
                                          {
                                              ONE = "噢，我真傻。我竟敢心存希望",
                                          },
                                          PHONOGRAPHON =
                                          {
                                              ONE = "我想那是我应得的",
                                          },
                                          PHONOGRAPHOFF =
                                          {
                                              ONE = "谢谢你。那首歌我早就听烦了",
                                          },
                                      },
                                  }
end
--if STRINGS.MAXWELL_ADVENTUREINTROS==nil then
  STRINGS.MAXWELL_ADVENTUREINTROS = {
                                  LEVEL_1 =
                                  {
                                      ONE = "哦，你找到了我的传送门，是吗？",
                                      TWO = "你会觉得你现在有点长进了。",
                                      --THREE = "奇怪的机器过去对你不太好",
                                      THREE = "嗯。来试试更有挑战性的事情吧，好吗？",
                                      --FIVE = "让我们看看，当气温低于40度时，你是否同样热情",
                                  },
                                  LEVEL_2 =
                                  {
                                      ONE = "你好好看着，你活了下来",
                                      TWO = "搞定一个，还有四个！",
                                      --TWO = "别得意，你又不是第一个",
                                      --THREE = "让我们看看你到底有多厉害",
                                      --FOUR = "我的意思是，",
                                      --FIVE = "我很乐意检查你的内脏，只要独眼巨鹿把你搞定了。",
                                  },
                                  LEVEL_3 =
                                  {
                                      ONE = "什么？你还在这儿？",
                                      TWO = "不错。但是你在前面的时候应该停下来",
                                      --TWO = "一切都必须我自己做吗？",
                                      --THREE = "猎犬！处理掉这个害虫！",
                                  },
                                  LEVEL_4 =
                                  {
                                      ONE = "嘿，朋友",
                                      TWO = "你真是很冒险啊",
                                      THREE = "回去，否则我就要用非常手段了啊",
                                  },
                                  TWOLANDS =
                                  {
                                      ONE = "你好，朋友",
                                      TWO = "我们来做个交易。你可以待在这。甚至定居下来",
                                      THREE = "我提供食物，金子和猪，你所需要的一切",
                                      FOUR = "我想要的回报只是一份停战协定",
                                  },
                                  LEVEL_5 =
                                  {
                                      ONE = "你这个傲慢、无知、可怜的蝼蚁！",
                                      TWO = "不要激起大麦斯威尔的愤怒！",
                                      THREE = "再靠近一步你会后悔的……",
                                  },
                                  LEVEL_6 =
                                  {
                                      ONE = "好吧，就是这样。",
                                      TWO = "你找到我了。现在，你打算怎么办？",
                                      TELEPORTFAIL = "你不觉得我已经试过了？",
                                      TELEPORTFAIL2 = "这就是结局。我们无路可逃。",
                                      COMBATFAIL =
                                      {
                                          "这就是你想要的？",
                                          "谁允许你这么做的？",
                                      },
                                      CONVERSATION =
                                      {
                                          "这就是结局？",
                                          "原谅我没有站起来",
                                          "你真的很好玩，但我已经厌倦这个游戏了",
                                          "或者是它们厌倦我了",
                                          "哼。他们用了很长时间",
                                          "他们会让你看到可怕又美丽的东西",
                                          "它会改变你，就像改变我一样",
                                          "最好别反抗",
                                          "我来的时候已经没有什么了",
                                          "只有尘埃，虚空，还有他们",
                                          "从那以后我学会了很多。我建造了很多",
                                          "但即使是国王也有无能为力的时候",                
                                          "你不能改变游戏规则",
                                          "我不知道他们要什么。他们……他们只是看着",
                                          "除非你靠得太近。然后...",
                                          "啊，有一个原因让我保持清醒",
                                          "那里是哪年来着？这里的时间有些不一样",
                                          "继续，待一会儿。陪陪我们",
                                          "或把钥匙放到箱子里。由你决定",
                                          "无论如何，你只是在拖延必将发生的事情",
                                          "有时，现实就是那样",
                                          "我想我说的够多了",
                                          "..."
                                      }
                                  },
                              }
--end
if STRINGS.MAXWELL_ADVENTURE_HEAD==nil then
  STRINGS.MAXWELL_ADVENTURE_HEAD = {
                                      LEVEL_4 =
                                      {
                                          ONE = "好吧。记住这是你的选择。",
                                      },
                                      LEVEL_6 =
                                      {
                                          ONE = "你和我并没有什么不同。",
                                          TWO =
                                          {
                                              ONE = "这就是我把你带来这里的原因。",
                                              TWO = "这就是我把他们所有人带来这里的原因。",
                                          },
                                          THREE =
                                          {
                                              ONE = "哦，你以为你是第一个？",
                                              TWO = "哈！",
                                          },
                                          FOUR =
                                          {
                                              ONE = "只是...",
                                              TWO = "我已经习惯于胜利。",
                                          },
                                      },
                                  }
end
if STRINGS.MAXWELL_SANDBOXINTROS==nil then
  STRINGS.MAXWELL_SANDBOXINTROS = {
                                      ONE = "喂！小哥，你看上去状态不佳",
                                      TWO = "你最好在夜晚来临前找点吃的！",
                                  }
end
--if STRINGS.UI.ENDGAME==nil then
  STRINGS.UI.ENDGAME = {
                          TITLE = "剧终",
                          BODY1 = "轮回又将开始。",
                          BODY2 = "会有出路吗？\n也许%s也会厌倦这个肮脏的地方，\n并使用%s的新权力来引诱不知情的小朋友。\n\n掌控此地的神秘生物仍潜伏在暗处，新的挑战即将揭晓。\n\n直到那时，\n-《饥荒》团队-",
                          YES = "为了科学！",
                       }
--end
-- ####################################################################################

--以上是目前仍在DST中活动的字符串。
--但我也使用了一些未注释的字符串，我们将把它们放在下面的新字符串表中：
if STRINGS.MAXWELL_ADVENTUREINTROS.ACR == nil then
    STRINGS.MAXWELL_ADVENTUREINTROS.ACR = {}
end
if STRINGS.MAXWELL_ADVENTUREINTROS.KOW == nil then
    STRINGS.MAXWELL_ADVENTUREINTROS.KOW = {}
end
if STRINGS.MAXWELL_ADVENTUREINTROS.GIA == nil then
    STRINGS.MAXWELL_ADVENTUREINTROS.GIA = {}
end
if STRINGS.MAXWELL_ADVENTUREINTROS.ARCHI == nil then
    STRINGS.MAXWELL_ADVENTUREINTROS.ARCHI = {}
end
if STRINGS.MAXWELL_ADVENTUREINTROS.DARKNESS == nil then
    STRINGS.MAXWELL_ADVENTUREINTROS.DARKNESS = {}
end

STRINGS.MAXWELL_SANDBOXINTROS.MAXWELLINTRO_EXPLORE = "我想你还有一些探索的空间"
STRINGS.MAXWELL_ADVENTUREINTROS.ACR.ONE = "今天早上，露水掉了下来，砰的一声特别令人作呕..."
STRINGS.MAXWELL_ADVENTUREINTROS.ACR.TWO = "我要去找zem..."
STRINGS.MAXWELL_ADVENTUREINTROS.KOW.ONE = "你好好看着，你活了下来"
STRINGS.MAXWELL_ADVENTUREINTROS.KOW.TWO = "现在别傻了，你不是第一个"
STRINGS.MAXWELL_ADVENTUREINTROS.KOW.THREE = "让我们看看你到底是什么做的"
STRINGS.MAXWELL_ADVENTUREINTROS.KOW.FOUR = "我的意思是，"
STRINGS.MAXWELL_ADVENTUREINTROS.KOW.FIVE = "等独眼巨鹿把你弄死，我会好好检查你的内脏的"
STRINGS.MAXWELL_ADVENTUREINTROS.GIA.ONE = "伙计，别灰心"
STRINGS.MAXWELL_ADVENTUREINTROS.GIA.TWO = "你可能会发现很难保持衣冠楚楚"
STRINGS.MAXWELL_ADVENTUREINTROS.ARCHI.ONE = "什么？你还在这里？"
STRINGS.MAXWELL_ADVENTUREINTROS.ARCHI.TWO = "我必须自己做所有事情吗？"
STRINGS.MAXWELL_ADVENTUREINTROS.ARCHI.THREE = "猎犬！处理掉这个害虫！"
STRINGS.MAXWELL_ADVENTUREINTROS.DARKNESS.ONE = "我给你留了点东西..."
STRINGS.MAXWELL_ADVENTUREINTROS.DARKNESS.TWO = "但我认为这对你没有帮助"
STRINGS.MAXWELL_ADVENTUREINTROS.DARKNESS.THREE = "你知道我喜欢夜间的什么吗？"
STRINGS.MAXWELL_ADVENTUREINTROS.DARKNESS.FOUR = "所有的蜘蛛"