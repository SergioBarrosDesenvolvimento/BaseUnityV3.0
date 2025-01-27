-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy  = module("vrp","lib/Proxy")
local Tools  = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
src = {}
Tunnel.bindInterface(GetCurrentResourceName(),src)
vCLIENT = Tunnel.getInterface(GetCurrentResourceName())

minutes = 60
UtilsClass = {}

local cooldown = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- hasPermissions
-----------------------------------------------------------------------------------------------------------------------------------------
function src.hasPermissions(configuration)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        local permissions = config.permissions[configuration]
        return vRP.hasPermissions(user_id, permissions)
    end
    return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- buyItem
-----------------------------------------------------------------------------------------------------------------------------------------
function src.buyItem(data, current)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        local itens = config.shops[current]
        local item = itens[data.item]
        local quantity = tonumber(data.quantity)
        local price = tonumber(data.price)

        if not item.limiter(source, user_id, quantity) then
            if vRP.tryFullPayment(user_id,price) then
                item.callback(source, user_id, quantity)
                return true
            end
        end
    end
    return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- takeItem
-----------------------------------------------------------------------------------------------------------------------------------------
function src.takeItem(weapon, current)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then

        local check = false
        if config.itensGroups[weapon] then
            for k, v in pairs(config.itensGroups[weapon]) do
                if vRP.hasGroup(user_id, v) then
                    check = true
                end
            end
        else
            check = true
        end

        if check then
            local itens = config.itens[current]
            local item = itens[weapon]
    
            item.callback(source, user_id)
            return true
        end
    end
    return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- takeItem
-----------------------------------------------------------------------------------------------------------------------------------------
function UtilsClass:giveKitItens(source, user_id, itens)
    if cooldown[user_id] == nil then
        cooldown[user_id] = {}
    end

    for k, v in pairs(itens) do
        if cooldown[user_id][k] == nil then
            cooldown[user_id][k] = v.cooldown
            vRP.giveInventoryItem(user_id, k, v.amount)
        end
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- thread Cooldown
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
    while true do
        for k, v in pairs(cooldown) do
            for _, item in pairs(v) do
                if cooldown[k][_] > 0 then
                    cooldown[k][_] = cooldown[k][_] - 1
                end

                if cooldown[k][_] == 0 and cooldown[k][_] ~= nil then
                    cooldown[k][_] = nil
                end
            end
        end
        Wait(1000)
    end
end)