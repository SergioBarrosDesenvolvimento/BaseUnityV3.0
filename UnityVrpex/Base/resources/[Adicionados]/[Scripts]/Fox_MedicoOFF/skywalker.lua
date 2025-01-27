-----------------------------------------------------------------------------------------------------------------------------------------
--[ vRP ]--------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
--[ CONEXÕES ]---------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
Resg = {}
Tunnel.bindInterface("Fox_MedicoOFF",Resg)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ VARIÁVEL ]---------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
local idgens = Tools.newIDGenerator()
local blips = {}
-----------------------------------------------------------------------------------------------------------------------------------------
--[ WEBHOOK ]----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------------------
--[ RESGATE ]----------------------------------------------------------------------------------------------------------------------------
 ----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("resgateEnd")
AddEventHandler("resgateEnd",function(x,y)
	local source = source
 	local user_id = vRP.getUserId(source)
 	local player = vRP.getUserSource(user_id)

 	local colaboradordmla = vRP.getUsersByPermission("resgate.permissao")
 	local paramedicos = 0
	local answered = false
	for k,v in ipairs(colaboradordmla) do
		paramedicos = paramedicos + 1
	end

	if parseInt(#colaboradordmla) == 0 then
		TriggerClientEvent("Notify",source,"importante", "Não há <b>colaboradores do departamento médico</b> em serviço no momento.")
	elseif  parseInt(#colaboradordmla) >= 1 then
		for l,w in pairs(colaboradordmla) do
			local player = vRP.getUserSource(parseInt(w))
			local nuser_id = vRP.getUserId(player)
			local user_id = vRP.getUserId(source)
			local identitys = vRP.getUserIdentity(user_id)
			if player and player ~= uplayer then
				async(function()
				vRPclient.playSound(player,"Out_Of_Area","DLC_Lowrider_Relay_Race_Sounds")
				TriggerClientEvent('chatMessage',player,"CHAMADO",{19,197,43},"[PRECISO DE AJUDA] Enviado por ^1"..identitys.name.." "..identitys.firstname.."^0 ["..user_id.."], ")
				local ok = vRP.request(player,"PRECISO DE AJUDA: Aceitar o chamado de <b>"..identitys.name.." "..identitys.firstname.."</b>?",120)
					if ok then
						if not answered then
							answered = true
							local identity = vRP.getUserIdentity(nuser_id)
							TriggerClientEvent("Notify",source,"importante","Chamado atendido por <b>"..identity.name.." "..identity.firstname.."</b>, aguarde no local.")
							TriggerClientEvent("Notify",player,"sucesso","Chamado atendido, vá até o local.")
							vRPclient.playSound(source,"Event_Message_Purple","GTAO_FM_Events_Soundset")
							vRPclient.playSound(player,"Event_Message_Purple","GTAO_FM_Events_Soundset")
							vRPclient._setGPS(player,x,y)
						else
							TriggerClientEvent("Notify",player,"importante","Chamado ja foi atendido por outra pessoa.")
							vRPclient.playSound(player,"CHECKPOINT_MISSED","HUD_MINI_GAME_SOUNDSET")
						end
						local id = idgens:gen()
						blips[id] = vRPclient.addBlip(player,x,y,z,358,71,"Chamado",0.6,false)
						SetTimeout(300000,function() vRPclient.removeBlip(player,blips[id]) idgens:free(id) end)
					end
				end)
			end
		end
		TriggerClientEvent("Notify",source,"importante", "Atualmente, <b>"..paramedicos.." colaboradores do departamento médico</b> estão em serviço.")
	end

	
end)

function Resg.renimamorto()
	local source = source
	local user_id = vRP.getUserId(source)
	local player = vRPclient.getNearestPlayer(source,2)
	if player then
		local ok = vRP.request(source,"Você aceita pagar por este tratamento R$: 5.000</b>?",120)
		if ok then
			if vRP.tryPayment(user_id,5000) then
			TriggerClientEvent("revivendoMuerto",player)
			end
		end
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
--[ FUNÇÕES ]----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
function Resg.checkServices()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local dmla = vRP.getUsersByPermission("paramedico.permissao")
		if parseInt(#dmla) == 0 then
			return true
		end
	end
end

