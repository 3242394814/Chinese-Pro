local function AddOption(name,label,hover,options,default)
    return  {
        name = name,
        label = label,
        hover = hover,
        options = options,
        default = default,
        }
end

local function FormatOption(description,data,hover)
   return {description = description, data = data, hover = hover} 
    
end

-- local function AddEmptySeperator(seperator)
--     return AddOption("" , seperator , "" , FormatOption("",0) , 0)
-- end

local keys_opt = {
    FormatOption("无--",0),
    FormatOption("A",97),
    FormatOption("B",98),
    FormatOption("C",99),
    FormatOption("D",100),
    FormatOption("E",101),
    FormatOption("F",102),
    FormatOption("G",103),
    FormatOption("H",104),
    FormatOption("I",105),
    FormatOption("J",106),
    FormatOption("K",107),
    FormatOption("L",108),
    FormatOption("M",109),
    FormatOption("N",110),
    FormatOption("O",111),
    FormatOption("P",112),
    FormatOption("Q",113),
    FormatOption("R",114),
    FormatOption("S",115),
    FormatOption("T",116),
    FormatOption("U",117),
    FormatOption("V",118),
    FormatOption("W",119),
    FormatOption("X",120),
    FormatOption("Y",121),
    FormatOption("Z",122),
    FormatOption("--无--",0),
    FormatOption(".",46),
    FormatOption("/",47),
    FormatOption(";",59),
    FormatOption("(",91),
    FormatOption(")",93),
    FormatOption("F1",282),
    FormatOption("F2",283),
    FormatOption("F3",284),
    FormatOption("F4",285),
    FormatOption("F5",286),
    FormatOption("F6",287),
    FormatOption("F7",288),
    FormatOption("F8",289),
    FormatOption("F9",290),
    FormatOption("F10",291),
    FormatOption("F11",292),
    FormatOption("F12",293),
    FormatOption("↑",273),
    FormatOption("↓",274),
    FormatOption("→",275),
    FormatOption("←",276),
    FormatOption("PageUp",280),
    FormatOption("PageDown",281),
    FormatOption("Home",278),
    FormatOption("Insert",277),
    FormatOption("Delete",127),
    FormatOption("End",279),
    FormatOption("--无",0),
}

local bool_opt = {
    FormatOption("关闭",false),
    FormatOption("开启",true),
}

local search_ranges = {
    FormatOption("小",1),
    FormatOption("中等",2),
    FormatOption("大",3),
}

local percent_opt = {}
for i = 0,19 do
	percent_opt[i+1] = FormatOption((i*5).."%",i*0.05)
end
percent_opt[1].hover = "不褪色"

local queue_types = {
    FormatOption("否",false,"将根据最接近的物品进行拾取"),
    FormatOption("是",true,"物品将按照排队顺序进行拾取"),
}

local positions = {
    FormatOption("否",false,"UI将始终位于顶部位置"),
    FormatOption("是",true,"UI将位于最后移动的位置"),
}

local info=
{
    name="Ground Chest(地面箱子)",
    description = "打开一个UI，查看地上的物品并与之交互。",
    configuration_options = {
        AddOption("ui_button","UI 开关键","按此按钮以显示/隐藏Ground Chest界面",keys_opt,114), -- 默认按键为“R”
        AddOption("searchrange","搜索范围","默认查找地面物品的范围(6/25/80格)",search_ranges,2),
        AddOption("includeskins","包含皮肤","是否显示物品的默认皮肤，或将不同皮肤物品分别显示",bool_opt,false),
        AddOption("ignoreocean","海中物品","是否显示海中物品",bool_opt,false),
        AddOption("boatmode","船舶模式","是否忽略不在船上的物品",bool_opt,false),
        AddOption("ignorestacks","无视已满组","是否可以通过物品拾取序列拾取全满的一组物品",bool_opt,false),
        AddOption("queuetype","序列顺序","是否根据序列的先后顺序拾取?",queue_types,false),
        AddOption("uselastposition","窗口位置记忆","是否记住操作界面的位置?",positions,false),
        AddOption("uifade","界面羽化","如不点选界面，则将其透明化。\n百分比越高，界面越透明",percent_opt,0.50),
    }
}
return info