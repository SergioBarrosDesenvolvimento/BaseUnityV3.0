local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

src = {}
Tunnel.bindInterface(GetCurrentResourceName(), src)
vSERVER = Tunnel.getInterface(GetCurrentResourceName())

local ArsenalClass = {
    open = false,
    current = '',
    shops = {},
    itens = {},
}

function ArsenalClass:getItens(id)
    if self.itens[id] then 
        return self.itens[id]
    end

    local itens = {}
    local data = config.itens[id]

    if not data then 
        return {}
    end

    for k,v in pairs(data) do 
        table.insert(itens, {
            typeWeapon = v.type,
            nameWeapon = v.name,
            spawnWeapon = k,
            caliberWeapon = v.caliber,
            colorWeapon = v.color,
            imageWeapon = v.image
        })
    end

    pcall(function()
        table.sort(itens,function(a,b) return b.price > a.price end)
    end)

    self.itens[id] = itens
    return itens
end

function ArsenalClass:getShop(id)
    if self.shops[id] then 
        return self.shops[id]
    end

    local itens = {}
    local data = config.shops[id]

    if not data then 
        return {}
    end

    for k,v in pairs(data) do 
        table.insert(itens, {
            typeProduct = v.type, 
            nameProduct = v.name,
            priceProduct = v.price,
            spawnProduct = k,
            imageProduct = v.image,
            colorProduct = v.color
        })
    end

    pcall(function()
        table.sort(itens,function(a,b) return b.positon > a.position end)
    end)

    self.shops[id] = itens
    return itens
end

function ArsenalClass:openArsenal(id,show)
    self.current = id

    pcall(function() -- LIDAR COM EFEITO DE BLUR
        if not show then 
            return TriggerScreenblurFadeOut(1500)
        end
        TriggerScreenblurFadeIn(1500) 
    end)

    SetNuiFocus(show,show)
    SendNUIMessage({action = 'openNUI', data = show })
    self.open = show

    print(id,show)

    -- exports.conexao_hud:hideHud(show)
end

Citizen.CreateThread(function()
    while true do 
        local msec = 1000

        local player = PlayerPedId()
        local playerCoords = GetEntityCoords(player) 

        for k,v in pairs(config.locations) do 
            if #(playerCoords - v.coords) <= ( v.distance or 5.0 ) and not ArsenalClass.open then
                local x,y,z = table.unpack(v.coords)

                DrawText3Ds(x,y,z + 0.7,v.text)
                DrawMarker(27,x,y,z - 0.90,0,0,0,0,180.0,130.0,2.0,2.0,1.0,config.drawColor[1],config.drawColor[2],config.drawColor[3],config.drawColor[4],0.2,0.5,0.5,0.5)
            
                if IsControlJustPressed(0,38) and vSERVER.hasPermissions(v.configuration) then 
                    ArsenalClass:openArsenal(v.configuration,true)
                end
            
                msec = 3
            end
        end

        Citizen.Wait(msec)
    end
end)

RegisterNuiCallback('fetchProductsEvent',function(data,callback)
    callback(ArsenalClass:getShop(ArsenalClass.current))
end)

RegisterNuiCallback('fetchWeaponsEvent',function(data,callback)
    callback(ArsenalClass:getItens(ArsenalClass.current))
end)

RegisterNuiCallback('handleWeapon',function(data,callback)
    vSERVER.takeItem(data.weapon, ArsenalClass.current)
    callback(false)
end)

RegisterNuiCallback('handleBuy',function(data,callback)
    callback(vSERVER.buyItem(data,ArsenalClass.current))
end)

RegisterNuiCallback('handleClearWeapons',function(_,callback)
    TriggerEvent('Notify','sucesso','Todas as suas <b>armas</b> foram retiradas!')
    RemoveAllPedWeapons(PlayerPedId())
    callback(true)
end)

RegisterNuiCallback('closeNUI',function()
    ArsenalClass:openArsenal(ArsenalClass.current,false)
end)

function src.giveWeapons(weapons)
    local player = PlayerPedId()

    for k,v in pairs(weapons) do 
        SetPedAmmo(player,GetHashKey(k),0)
        RemoveWeaponFromPed(player,GetHashKey(k))    
    end

    vRP.giveWeapons(weapons)
end

function DrawText3Ds(x,y,z,text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.4, 0.4)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
end