local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

oRP = {}
Tunnel.bindInterface(GetCurrentResourceName(),oRP)
vCLIENT = Tunnel.getInterface(GetCurrentResourceName())

function oRP.CheckPerm()
	local source = source
	local user_id = vRP.getUserId(source)
	for k,v in pairs(Config.Permissions) do
		if vRP.hasPermission(user_id,v) then
			return true
		end
	end
end

-- DEVENVOLVIDO  BY  PH NEVES

function oRP.paymentMethod(status)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.getInventoryWeight(user_id) + 1 > vRP.getInventoryMaxWeight(user_id) then
            TriggerClientEvent("Notify",source,"negado",Config.Notify.BackpackFull,5000)
            return
        end
		for k,v in pairs(Config.GiveItem) do
			if vRP.hasPermission(user_id, Config.Permissions.Grove) then
				if v == Config.GiveItem.Grove then
					local escolheritem = math.random(#Config.GiveItem.Grove)
					local nomeitem = Config.GiveItem.Grove[escolheritem]
					local quantityitem = Config.GiveItem.Grove.Quantity
					vRP.giveInventoryItem(user_id,nomeitem,math.random(quantityitem[1],quantityitem[2]))
				end
			elseif vRP.hasPermission(user_id, Config.Permissions.Ballas) then
				if v == Config.GiveItem.Ballas then
					local escolheritem = math.random(#Config.GiveItem.Ballas)
					local nomeitem = Config.GiveItem.Ballas[escolheritem]
					local quantityitem = Config.GiveItem.Ballas.Quantity
					vRP.giveInventoryItem(user_id,nomeitem,math.random(quantityitem[1],quantityitem[2]))
				end
			elseif vRP.hasPermission(user_id, Config.Permissions.Crips) then
				if v == Config.GiveItem.Crips then
					local escolheritem = math.random(#Config.GiveItem.Crips)
					local nomeitem = Config.GiveItem.Crips[escolheritem]
					local quantityitem = Config.GiveItem.Crips.Quantity
					vRP.giveInventoryItem(user_id,nomeitem,math.random(quantityitem[1],quantityitem[2]))
				end
			elseif vRP.hasPermission(user_id, Config.Permissions.Bloods) then
				if v == Config.GiveItem.Bloods then
					local escolheritem = math.random(#Config.GiveItem.Bloods)
					local nomeitem = Config.GiveItem.Bloods[escolheritem]
					local quantityitem = Config.GiveItem.Bloods.Quantity
					vRP.giveInventoryItem(user_id,nomeitem,math.random(quantityitem[1],quantityitem[2]))
				end
			elseif vRP.hasPermission(user_id, Config.Permissions.Bratva) then
				if v == Config.GiveItem.Bratva then
					local escolheritem = math.random(#Config.GiveItem.Bratva)
					local nomeitem = Config.GiveItem.Bratva[escolheritem]
					local quantityitem = Config.GiveItem.Bratva.Quantity
					vRP.giveInventoryItem(user_id,nomeitem,math.random(quantityitem[1],quantityitem[2]))
				end
			elseif vRP.hasPermission(user_id, Config.Permissions.Mafia) then
				if v == Config.GiveItem.Mafia then
					local escolheritem = math.random(#Config.GiveItem.Mafia)
					local nomeitem = Config.GiveItem.Mafia[escolheritem]
					local quantityitem = Config.GiveItem.Mafia.Quantity
					vRP.giveInventoryItem(user_id,nomeitem,math.random(quantityitem[1],quantityitem[2]))
				end
			elseif vRP.hasPermission(user_id, Config.Permissions.Motoclub) then
				if v == Config.GiveItem.Motoclub then
					local escolheritem = math.random(#Config.GiveItem.Motoclub)
					local nomeitem = Config.GiveItem.Motoclub[escolheritem]
					local quantityitem = Config.GiveItem.Motoclub.Quantity
					vRP.giveInventoryItem(user_id,nomeitem,math.random(quantityitem[1],quantityitem[2]))
				end
			elseif vRP.hasPermission(user_id, Config.Permissions.Driftking) then
				if v == Config.GiveItem.Driftking then
					local escolheritem = math.random(#Config.GiveItem.Driftking)
					local nomeitem = Config.GiveItem.Driftking[escolheritem]
					local quantityitem = Config.GiveItem.Driftking.Quantity
					vRP.giveInventoryItem(user_id,nomeitem,math.random(quantityitem[1],quantityitem[2]))
				end
			end
		end
	end
end

-- DEVENVOLVIDO  BY  PH NEVES