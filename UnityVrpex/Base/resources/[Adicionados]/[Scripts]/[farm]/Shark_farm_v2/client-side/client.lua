-----------------------------------------------------------------------------------------------------------------------------------------
-- Shark Farm
-----------------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRPS = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Shark = {}
Tunnel.bindInterface("shark_farm_v2",Shark)
vSERVER = Tunnel.getInterface("shark_farm_v2")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local InRoute = false
local Blips = nil
local aberto = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- Shark Farm
-----------------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------------------
-- OPEN FARM
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local ped = PlayerPedId()
		local PlayerCoord = GetEntityCoords(ped)
		local sleep = 1000
		for k,v in pairs(Cfg.FarmConfig) do
			local Distance = GetDistanceBetweenCoords(v["StartCoord"][1],v["StartCoord"][2],v["StartCoord"][3],PlayerCoord[1],PlayerCoord[2],PlayerCoord[3])
			if Distance < 3 then
				sleep = 3
				DrawText3D(v["StartCoord"][1],v["StartCoord"][2],v["StartCoord"][3],"~b~[E]~w~ Abrir Farm")
				if Distance < 1 then
					if not aberto then
						if IsControlJustReleased(0, 38) then
							if vSERVER.CheckOrg(k) then
								TransitionToBlurred(1000)
								SetNuiFocus(true,true)
								SendNUIMessage({ action = "openSystem", InRoute = InRoute, farm = k  })
								aberto = true
							end
						end
					end
				end
			end
		end
		Wait(sleep)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSESYSTEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("closeSystem",function(data)
	SetNuiFocus(false,false)
	SendNUIMessage({ action = "closeSystem" })
	TransitionFromBlurred(1000) --DESBORRA
	aberto = false
end)


function Shark.CloseSystem()
	SetNuiFocus(false,false)
	SendNUIMessage({ action = "closeSystem" })
	TransitionFromBlurred(1000) --DESBORRA
	aberto = false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- INFORMAÇÕES SOBRE O UPGRADWE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("requestinfos",function(data,cb)
	cb(vSERVER.levelIdentify(data.farm))
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- LISTANDO FARMES (DEIXEI COMO EXEMPLO DE SUGESTÃO)
-----------------------------------------------------------------------------------------------------------------------------------------
function listarfarms(farm)
	local OrgName = farm--vSERVER.CheckOrg()
	local Table = {}
	for k,v in pairs(Cfg.FarmConfig[OrgName]["ItemFarm"]) do
		table.insert(Table,{ k = v["ItemSpawn"], name = itemName(v["ItemSpawn"]), Org = OrgName, Route = k, Lvl = vSERVER.GetLvl(OrgName) })
	end

	return Table
end

function listarRotas(farm)
	local OrgName = farm--vSERVER.CheckOrg()
	local Table = {}
	for k,v in pairs(Cfg.FarmCoords[farm]) do
		table.insert(Table,{ nome = k })
	end

	return Table
end

RegisterNUICallback("requestitens",function(data,cb)
	local listarfarms = listarfarms(data.farm)
	local listarrotas = listarRotas(data.farm)
	if listarfarms and listarrotas then
		cb({ listarfarms = listarfarms, listarrotas = listarrotas })
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("upar",function(data)
	if vSERVER.UpgradeFarm(data.farm) then
		SendNUIMessage({ action = "attupar" })
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- Iniciar Farm
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("encerrarrota",function(data)
	if DoesBlipExist(Blips) then
		RemoveBlip(Blips)
		Blips = nil
	end
	Selected = 1
	InRoute = false
	SendNUIMessage({ action = "attupar", InRoute = InRoute })
end)


RegisterNUICallback("IniciarFarm",function(data)
	if not InRoute then
		if Cfg.FarmCoords[data.org][data.tipo] then
			local Selected = 1
			InRoute = true
			SendNUIMessage({ action = "attupar", InRoute = InRoute })
			if DoesBlipExist(Blips) then
				RemoveBlip(Blips)
				Blips = nil
			end

			Marker(Cfg.FarmCoords[data.org][data.tipo][Selected][1],Cfg.FarmCoords[data.org][data.tipo][Selected][2],Cfg.FarmCoords[data.org][data.tipo][Selected][3],data.rota)

			TriggerEvent("Notify","verde","Rota iniciada.",false,5000)
			
			while InRoute do
				local TimeDistance = 3
				local Ped = PlayerPedId()
				if not IsPedInAnyVehicle(Ped) then
					local Coords = GetEntityCoords(Ped)
					local Vector = vec3(Cfg.FarmCoords[data.org][data.tipo][Selected][1],Cfg.FarmCoords[data.org][data.tipo][Selected][2],Cfg.FarmCoords[data.org][data.tipo][Selected][3])
					local Distance = #(Coords - Vector)
					DrawTxt("~b~PRESSIONE F7 ~w~SE DESEJA FINALIZAR A ROTA",4,0.015,0.10,0.35,255,255,255,180)
					DrawTxt("~b~DIRIJA-SE ~w~ AO LOCAL DEMARCADO ",4,0.015,0.13,0.35,255,255,255,180)
					
					if Distance <= 2.0 then
						DrawText3D(Cfg.FarmCoords[data.org][data.tipo][Selected][1],Cfg.FarmCoords[data.org][data.tipo][Selected][2],Cfg.FarmCoords[data.org][data.tipo][Selected][3],"~b~[E]~w~ Coletar")
						if IsControlJustReleased(0, 38) then
							FreezeEntityPosition(Ped, true)
							if vSERVER.PaymentCollect(data.org,data.rota,data.nivel) then
								if Selected >= #Cfg.FarmCoords[data.org][data.tipo] then
									Selected = 1
									if data.tipo == "aleatoria" then
										Selected = math.random(#(Cfg.FarmCoords[data.org][data.tipo][Selected]))
									end
								else
									Selected = Selected + 1
									if data.tipo == "aleatoria" then
										Selected = math.random(#(Cfg.FarmCoords[data.org][data.tipo][Selected]))
									end
								end 
								RemoveBlip(Blips)
								Marker(Cfg.FarmCoords[data.org][data.tipo][Selected][1],Cfg.FarmCoords[data.org][data.tipo][Selected][2],Cfg.FarmCoords[data.org][data.tipo][Selected][3],data.rota)
							end	
							FreezeEntityPosition(Ped, false)
						end
					end
					if IsControlJustReleased(0, 168) then
						if DoesBlipExist(Blips) then
							RemoveBlip(Blips)
							Blips = nil
						end
						Selected = 1
						InRoute = false
					end
				end

				Wait(TimeDistance)
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- BUTTONMAKERACE
-----------------------------------------------------------------------------------------------------------------------------------------
local FarmcTable = {}
local BlipscTable = {}
local CheckPoint = 0
local CreateRoute = false

if Cfg.HelpTakeCoords["HelpTakeCoord"] then
	RegisterCommand(Cfg.HelpTakeCoords["TakeCoordCommand"],function(source,args)
		local ped = PlayerPedId()
		if args[1] then
			if CreateRoute then
				CreateRoute = false
				TriggerEvent("Notify","amarelo",Cfg.HelpTakeCoords["Notifys"]["StopTakeCoords"],false,5000)
				SetUserRadioControlEnabled(true)
			else
				CreateRoute = true
				TriggerEvent("Notify","verde",Cfg.HelpTakeCoords["Notifys"]["StartTakeCoords"],false,5000)
			end
			while CreateRoute do
				local coords = GetEntityCoords(ped)
				local heading = GetEntityHeading(ped)
				DrawTxt("~b~E~w~  Nova Coordenada",4,0.015,0.86,0.35,255,255,255,180)
				DrawTxt("~b~H~w~  Finalizar Rota",4,0.015,0.88,0.35,255,255,255,180)
				DrawTxt("~b~X~w~  Resetar Rota",4,0.015,0.90,0.35,255,255,255,180)
				if IsControlJustPressed(1,38) then
					CheckPoint = CheckPoint + 1
					TriggerEvent("Notify","verde","Coordenada "..CheckPoint.." inserida",false,5000)
					table.insert(FarmcTable, { Coords = coords, Heading = heading })
					CleanFarmcBlips()
					MakeFarmcBlips()
				end
				if IsControlJustPressed(1,74) then
					vSERVER.CreateNewRoute(FarmcTable,args[1],args[2])
					CleanFarmcBlips()
					FarmcTable = {}
					CheckPoint = 0
					TriggerEvent("Notify","verde",Cfg.HelpTakeCoords["Notifys"]["StopTakeCoords"],false,5000)
					CreateRoute = false
				end
				if IsControlJustPressed(1,73) then
					FarmcTable = {}
					CleanFarmcBlips()
					CheckPoint = 0
					TriggerEvent("Notify","verde",Cfg.HelpTakeCoords["Notifys"]["ResetTakeCoords"],false,5000)
				end

				for k,v in pairs(FarmcTable) do
					DrawMarker(2,FarmcTable[k]["Coords"][1],FarmcTable[k]["Coords"][2],FarmcTable[k]["Coords"][3] - 0.50,0,0,0,0,0,0,0.5,0.5,0.5,23, 145, 255,155,1,1,1,1)
				end
				Wait(3)
			end
		else
			TriggerEvent("Notify","vermelho","Insira um nome para a Rota.",false,5000)
		end
	end)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLEANBLIPS
-----------------------------------------------------------------------------------------------------------------------------------------
function CleanBlips()
	for Number,Bliped in pairs(Blips) do
		if DoesBlipExist(Bliped) then
			RemoveBlip(Bliped)
			Blips[Number] = nil
		end
	end

	Blips = {}
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLEANBLIPS
-----------------------------------------------------------------------------------------------------------------------------------------
function CleanFarmcBlips()
	for Number,Bliped in pairs(BlipscTable) do
		if DoesBlipExist(Bliped) then
			RemoveBlip(Bliped)
			BlipscTable[Number] = nil
		end
	end

	BlipscTable = {}
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- MakeFarmcBlips
-----------------------------------------------------------------------------------------------------------------------------------------
function MakeFarmcBlips()
	for k,v in pairs(FarmcTable) do
		BlipscTable[k] = AddBlipForCoord(FarmcTable[k]["Coords"][1],FarmcTable[k]["Coords"][2],FarmcTable[k]["Coords"][3])
		SetBlipSprite(BlipscTable[k],1)
		SetBlipColour(BlipscTable[k],3)
		SetBlipScale(BlipscTable[k],0.85)
		ShowNumberOnBlip(BlipscTable[k],k)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DRAWTEXT3D
-----------------------------------------------------------------------------------------------------------------------------------------
function DrawText3D(x,y,z,text)
	local onScreen,_x,_y = GetScreenCoordFromWorldCoord(x,y,z)
	if onScreen then
		BeginTextCommandDisplayText("STRING")
		AddTextComponentSubstringKeyboardDisplay(text)
		SetTextColour(255,255,255,150)
		SetTextScale(0.35,0.35)
		SetTextFont(4)
		SetTextCentre(1)
		EndTextCommandDisplayText(_x,_y)
		local width = string.len(text) / 190 * 0.45
		DrawRect(_x,_y + 0.0125,width,0.03,15,15,15,175)
	end
end

function DrawTxt(text,font,x,y,scale,r,g,b,a)
    SetTextFont(font)
    SetTextScale(scale,scale)
    SetTextColour(r,g,b,a)
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x,y)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- MARKER
-----------------------------------------------------------------------------------------------------------------------------------------
function Marker(x,y,z,Item)
	if DoesBlipExist(Blips) then
		RemoveBlip(Blips)
		Blips = nil
	end

	Blips = AddBlipForCoord(x,y,z)
	SetBlipSprite(Blips,501)
	SetBlipColour(Blips,3)
	SetBlipScale(Blips,0.5)
	SetBlipRoute(Blips,true)
	SetBlipAsShortRange(Blips,true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Coletar "..Item)
	EndTextCommandSetBlipName(Blips)
end