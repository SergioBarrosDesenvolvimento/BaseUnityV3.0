-----------------------------------------------------------------------------------------------------------------------------------------
--[ vRP ]--------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
--[ CONEXÃO ]----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
Resg = Tunnel.getInterface("Fox_MedicoOFF")
-----------------------------------------------------------------------------------------------------------------------------------------
--[ VARIÁVEIS ]----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------------------
--[ REANIMAR ]---------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("resgate",function(source,args)
	local ped = PlayerPedId()
	local loc = GetEntityCoords(ped)
	local x = loc[1]
	local y = loc[2]
	TriggerServerEvent("resgateEnd",x,y)
end)
RegisterNetEvent('reanimarMorto')
AddEventHandler('reanimarMorto',function()
	local ped = PlayerPedId()
	local finished = false
	local reviver = nil
	
		if reviver == nil then
			reviver = ped
			TriggerEvent("cancelando",true)
			playAnim(false,{"amb@medic@standing@tendtodead@base","base"},{"mini@cpr@char_a@cpr_str","cpr_pumpchest"},true)
			TriggerEvent("progress",15000,"reanimando")
			SetTimeout(15000,function()
				SetEntityHealth(reviver,110)
				local newped = ClonePed(reviver,GetEntityHeading(reviver),true,true)
				TaskWanderStandard(newped,10.0,10)
				local model = GetEntityModel(reviver)
				SetModelAsNoLongerNeeded(model)
				Citizen.InvokeNative(0xAD738C3085FE7E11,reviver,true,true)
				TriggerServerEvent("trydeleteped",PedToNet(reviver))
				vRP._stopAnim(false)
				TriggerServerEvent("reanimar:pagamento")
				TriggerEvent("cancelando",false)
			end)
			finished = true
		end

	EndFindPed(handle)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ MACAS DO HOSPITAL ]------------------------------------------------------------------------------------------------------------------ 
-----------------------------------------------------------------------------------------------------------------------------------------
local macas = {
	{ ['x'] = 322.08, ['y'] = -585.41, ['z'] = 43.29, ['x2'] = 322.7, ['y2'] = -587.04, ['z2'] = 44.21, ['h'] = 164.18 }, 
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- DEITANDO
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local idle = 100
		for k,v in pairs(macas) do
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			if Vdist(v.x,v.y,v.z,x,y,z) <= 1.1 then
				idle = 5
				drawTxt("~g~E~w~  PARA COLOCAR SEU AMIGO NA CAMA",4,0.5,0.90,0.50,255,255,255,200)
				if IsControlJustPressed(0,38) then
					Resg.renimamorto()	
				end
			
			end
		end
		Citizen.Wait(idle)
	end
end)
RegisterNetEvent('revivendoMuerto')
AddEventHandler('revivendoMuerto',function()
	for k,v in pairs(macas) do
		local ped = PlayerPedId()
		local x,y,z = table.unpack(GetEntityCoords(ped))
		if Vdist(v.x,v.y,v.z,x,y,z) <= 1.1 then
			TriggerEvent('tratamento-macas')
			TriggerEvent('resetDiagnostic')
			TriggerEvent('resetWarfarina')
			SetEntityCoords(ped,v.x2,v.y2,v.z2)
			SetEntityHeading(ped,v.h)
			playAnim(false,{"amb@world_human_sunbathe@female@back@idle_a","idle_a"},true)
		end
	end
end)

RegisterNetEvent('tratamento-macas')
AddEventHandler('tratamento-macas',function()
	TriggerEvent("cancelando",true)
	repeat
		SetEntityHealth(PlayerPedId(),GetEntityHealth(PlayerPedId())+7)
		Citizen.Wait(2000)
	until GetEntityHealth(PlayerPedId()) >= 400 or GetEntityHealth(PlayerPedId()) <= 100
	TriggerEvent("Notify","importante","Tratamento concluido.")
	TriggerEvent("cancelando",false)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ TRATAMENTO ]-------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
local tratamento = false
RegisterNetEvent("tratamento")
AddEventHandler("tratamento",function()
    local ped = PlayerPedId()
    local health = GetEntityHealth(ped)
    local armour = GetPedArmour(ped)

    SetEntityHealth(ped,health)
    SetPedArmour(ped,armour)
	
	if emMaca then
		if tratamento then
			return
		end

		tratamento = true
		TriggerEvent("Notify","sucesso","Tratamento iniciado, aguarde a liberação do <b>profissional médico.</b>.",8000)
		TriggerEvent('resetWarfarina')
		TriggerEvent('resetDiagnostic')
		

		if tratamento then
			repeat
				Citizen.Wait(600)
				if GetEntityHealth(ped) > 101 then
					SetEntityHealth(ped,GetEntityHealth(ped)+1)
				end
			until GetEntityHealth(ped) >= 240 or GetEntityHealth(ped) <= 101
				TriggerEvent("Notify","sucesso","Tratamento concluido.",8000)
				tratamento = false
		end
	else
		TriggerEvent("Notify","negado","Você precisa estar deitado em uma maca para ser tratado.",8000)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------   MEDICO OFF
-----------------------------------------------------------------------------------------------------------------------------------------------

contador = 0
local macasoff = {
	{ ['x'] = 364.82, ['y'] = -585.81, ['z'] = 44.22, ['h'] = 240.5 }, 
}
RegisterCommand('medicooff',function(source,args,rawCommand) --COMANDO /semems
    local user_id = vRP.getUserId(source)
    local source = source
	local ped = PlayerPedId()
	local pagamento = 5000
	--if vRP.hasPermission(user_id,"policia.permissao") or vRP.hasPermission(user_id,"paramedico.permissao") then
        if contador == 0 then
			for k,v in pairs(macasoff) do
				if GetEntityHealth(ped) <= 101 then --VERIFICA SE A PESSOA ESTÁ EM COMA
					if Resg.checkServices() then
						contador = 900 
						TriggerEvent("Notify","importante","Uma equipe está sendo enviada para sua localização.chegada em 8 minutos",60000)
						Wait(60000)
						if GetEntityHealth(ped) <= 101 then --VERIFICA SE A PESSOA ESTÁ EM COMA
							TriggerEvent("Notify","importante","Fique calmo estamos a 7 minutos de Você",60000)
							Wait(60000)
							if GetEntityHealth(ped) <= 101 then --VERIFICA SE A PESSOA ESTÁ EM COMA
								TriggerEvent("Notify","importante","Estamos indo o mais rapido possivel em 6 minutos estaremos ai",60000)
								Wait(60000)
								if GetEntityHealth(ped) <= 101 then --VERIFICA SE A PESSOA ESTÁ EM COMA
									TriggerEvent("Notify","importante","Um pneu furou mais ja ja chegaremos",60000)
									Wait(60000)
									if GetEntityHealth(ped) <= 101 then --VERIFICA SE A PESSOA ESTÁ EM COMA
										TriggerEvent("Notify","importante","ok estamos quase ai 4 minutos",60000)
										Wait(60000)
										if GetEntityHealth(ped) <= 101 then --VERIFICA SE A PESSOA ESTÁ EM COMA
											TriggerEvent("Notify","importante","Aguente firme estamos quase ai",60000)
											Wait(60000)
											if GetEntityHealth(ped) <= 101 then --VERIFICA SE A PESSOA ESTÁ EM COMA
												TriggerEvent("Notify","importante","2 minutinho aguente firme",60000)
												Wait(60000)
												if GetEntityHealth(ped) <= 101 then --VERIFICA SE A PESSOA ESTÁ EM COMA
													TriggerEvent("Notify","importante","Ja te avistamos! Fique calmo",60000)
													Wait(30000)
													if GetEntityHealth(ped) <= 101 then --VERIFICA SE A PESSOA ESTÁ EM COMA
														TriggerEvent("Notify","importante","Já estou chegando.",60000)
														DoScreenFadeOut(1000)
														Wait(5000)
														DoScreenFadeIn(1000)
														Wait(5000)
														DoScreenFadeOut(1000)
														Wait(5000)
														DoScreenFadeIn(1000)
														Wait(5000)
														if GetEntityHealth(ped) <= 101 then --VERIFICA SE A PESSOA ESTÁ EM COMA
															DoScreenFadeOut(1000)
															TriggerEvent("Notify","importante","O que aconteceu? Vou tentar reanimar você.",60000)
															Wait(2000)
															vRP.tryFullPayment(user_id,pagamento) -- VALOR A SER PAGO
															TriggerEvent("Notify","sucesso","Voce pagou <b>$"..pagamento.. " dólares</b> para reanimar!") --Notify
															SetTimeout(5000,function()
																TriggerEvent('tratamento-macas')
																TriggerEvent('resetDiagnostic')
																TriggerEvent('resetWarfarina')
																SetEntityCoords(ped,v.x,v.y,v.z)
																SetEntityHeading(ped,v.h)
																contador = 900 --DEFINE OS SEGUNDOS PARA USAR NOVAMENTE --     900 = 15 MINUTOS
																playAnim(false,{"amb@world_human_sunbathe@female@back@idle_a","idle_a"},true)
																Wait(3000)
																TriggerEvent("Notify","sucesso","Tudo certo! Já vou indo.Tome mais cuidado") --Notify
																DoScreenFadeIn(1000)
															end)
														else
															TriggerEvent("Notify","negado","Voce ja foi Reanimado!O Medico voutou para o Hospital!") --Notify
														end
													else
														TriggerEvent("Notify","negado","Voce ja foi Reanimado!O Medico voutou para o Hospital!") --Notify
													end
												else
													TriggerEvent("Notify","negado","Voce ja foi Reanimado!O Medico voutou para o Hospital!") --Notify
												end
											else
												TriggerEvent("Notify","negado","Voce ja foi Reanimado!O Medico voutou para o Hospital!") --Notify
											end
										else
											TriggerEvent("Notify","negado","Voce ja foi Reanimado!O Medico voutou para o Hospital!") --Notify
										end
									else
										TriggerEvent("Notify","negado","Voce ja foi Reanimado!O Medico voutou para o Hospital!") --Notify
									end
								else
									TriggerEvent("Notify","negado","Voce ja foi Reanimado!O Medico voutou para o Hospital!") --Notify
								end
							else
								TriggerEvent("Notify","negado","Voce ja foi Reanimado!O Medico voutou para o Hospital!") --Notify
							end
						else
							TriggerEvent("Notify","negado","Voce ja foi Reanimado!O Medico voutou para o Hospital!") --Notify
						end
				    else
				        TriggerEvent("Notify","negado","Existem membros do Departamento Médico em serviço!") --Notify
				    end
				else
				    TriggerEvent("Notify","negado","Voce precisa estar em coma!") --Notify
				end
			end
        else
            TriggerEvent("Notify","negado","Voce precisa esperar "..contador.." segundos pra usar novamente!") --Notify
        end
	--else
		--TriggerEvent("Notify","negado","Voce nao tem permissao para usar esse comando!") --Notify
	--end
end)

Citizen.CreateThread(function()
    while true do
		if contador > 0 then
			contador = contador - 1
		end
		Citizen.Wait(1000)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ FUNÇÕES ]----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
function drawTxt(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end

RegisterNetEvent('tratamento-macas')
AddEventHandler('tratamento-macas',function()
	TriggerEvent("cancelando",true)
	repeat
		SetEntityHealth(PlayerPedId(),GetEntityHealth(PlayerPedId())+1)
		Citizen.Wait(700)
	until GetEntityHealth(PlayerPedId()) >= 400 or GetEntityHealth(PlayerPedId()) <= 100
	TriggerEvent("Notify","importante","Tratamento concluido.")
	TriggerEvent("cancelando",false)
end)

-- CODIGO DE ANIMAÇÃO --
function playAnim(upper,seq,looping)
	local ped = PlayerPedId()
	if seq.task then
		stopAnim(true)
		if seq.task == "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER" then
			local coords = GetEntityCoords(ped)
			TaskStartScenarioAtPosition(ped,seq.task,coords.x,coords.y,coords.z-1,GetEntityHeading(ped),0,0,false)
		else
			TaskStartScenarioInPlace(ped,seq.task,0,not seq.play_exit)
		end
	else
		stopAnim(upper)
		local flags = 0
		if upper then flags = flags + 48 end
		if looping then flags = flags + 1 end
		Citizen.CreateThread(function()
			RequestAnimDict(seq[1])
			while not HasAnimDictLoaded(seq[1]) do
				RequestAnimDict(seq[1])
				Citizen.Wait(10)
			end
			if HasAnimDictLoaded(seq[1]) then
				animDict = seq[1]
				animName = seq[2]
				animFlags = flags
				if flags == 49 then
					animActived = true
				end
				TaskPlayAnim(ped,seq[1],seq[2],3.0,3.0,-1,flags,0,0,0,0)
			end
		end)
	end
end
function stopAnim(upper)
	animActived = false
	ClearPedTasks(PlayerPedId())	
end