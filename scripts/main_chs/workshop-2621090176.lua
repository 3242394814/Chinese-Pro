local language = "zh"
local rename_wormholes
local rename_caves

local env = GLOBAL.getfenv(1)
env["\114\101\110\97\109\101\95\119\111\114\109\104\111\108\101\115"] = rename_wormholes
env["\114\101\110\97\109\101\95\99\97\118\101\115"] = rename_caves

local strings = {
    RENAME_WORMHOLE = {
        en = "Rename Wormhole",
        zh = "重命名虫洞",
        de = "Wurmloch umbenennen",
        es = "Renombrar agujero de gusano",
        fr = "Renommer le trou de ver",
        ru = "Переименовать червоточину",
        ko = "웜홀 이름 바꾸기",
    },
    RENAME_SINKHOLE = {
        en = "Rename Sinkhole",
        zh = "重命名虫洞",
        de = "Erdloch umbenennen",
        es = "Cambiar el nombre del sumidero",
        fr = "Renommer le gouffre",
        ru = "Переименовать воронку",
        ko = "싱크홀 이름 바꾸기",
    },
    ACCEPT = {
        en = "Accept",
        zh = "接受",
        de = "Akzeptieren",
        es = "Acepte",
        fr = "Accepter",
        ru = "Принять",
        ko = "동의",
    },
    CANCEL = {
        en = "Cancel",
        zh = "取消",
        de = "Abbrechen",
        es = "Cancelar",
        fr = "Annuler",
        ru = "Отмена",
        ko = "취소",
    },
}


rename_wormholes = {
    prompt = strings.RENAME_WORMHOLE[language],
    animbank = "ui_board_5x3",
    animbuild = "ui_board_5x3",
    menuoffset = GLOBAL.Vector3(6, -70, 0),
    cancelbtn = { text = strings.CANCEL[language], cb = nil, control = GLOBAL.CONTROL_CANCEL },
    acceptbtn = {   text = strings.ACCEPT[language],
                    cb = function(inst, doer, widget)
                        local text = widget:GetText()
                        SendModRPCToServer(MOD_RPC["Wormhole_Icons_Server"]["ChangeName"],inst,text)
                    end,
                    control = GLOBAL.CONTROL_ACCEPT },
}

rename_caves = {
    prompt = strings.RENAME_SINKHOLE[language],
    animbank = "ui_board_5x3",
    animbuild = "ui_board_5x3",
    menuoffset = GLOBAL.Vector3(6, -70, 0),
    cancelbtn = { text = strings.CANCEL[language], cb = nil, control = GLOBAL.CONTROL_CANCEL },
    acceptbtn = {   text = strings.ACCEPT[language],
                    cb = function(inst, doer, widget)
                        local text = widget:GetText()
                        SendModRPCToServer(MOD_RPC["Wormhole_Icons_Server"]["ChangeNameSinkhole"],inst,text)
                    end,
                    control = GLOBAL.CONTROL_ACCEPT },
}

local RenameWormhole = function(inst,wormhole)
    if inst and inst.HUD then
        inst.HUD:ShowWriteableWidget(wormhole,rename_wormholes)
    end
end

AddClientModRPCHandler("Wormhole_Icons_Server", "RenameWormhole", RenameWormhole)

local function RenameSinkhole(inst,sinkhole)
    if inst and inst.HUD then
        inst.HUD:ShowWriteableWidget(sinkhole,rename_caves)
    end
end

AddClientModRPCHandler("Wormhole_Icons_Server", "RenameSinkhole", RenameSinkhole)