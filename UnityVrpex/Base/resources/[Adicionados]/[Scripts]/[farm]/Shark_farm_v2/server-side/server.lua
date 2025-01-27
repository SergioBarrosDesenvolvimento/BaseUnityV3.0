-----------------------------------------------------------------------------------------------------------------------------------------
-- Shark Farm
-----------------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRPC = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Shark = {}
Tunnel.bindInterface("shark_farm_v2",Shark)
vCLIENT = Tunnel.getInterface("shark_farm_v2")
-----------------------------------------------------------------------------------------------------------------------------------------
-- PREPARES
-----------------------------------------------------------------------------------------------------------------------------------------
vRP.Prepare("shark_farm/getOrg","SELECT * FROM shark_farm WHERE Org = @Org")
vRP.Prepare("shark_farm/updateFarm","UPDATE shark_farm SET Lvl = Lvl + 1 WHERE Org = @Org")
vRP.Prepare("shark_farm/createdb","INSERT INTO shark_farm(Org) VALUES(@org)")
-----------------------------------------------------------------------------------------------------------------------------------------
-- Check Org
-----------------------------------------------------------------------------------------------------------------------------------------
function Shark.CheckOrg(farm)
    local source = source
    local user_id = vRP.Passport(source)
    if user_id then
        for k,v in pairs(Cfg.FarmConfig) do
         if k == farm then
                local query = vRP.Query("shark_farm/getOrg",{ Org = k })
                if query[1] then
                    if v["PermToAcess"] ~= nil then
                        if vRP.HasGroup(user_id,v["PermToAcess"]) --[[or vRP.HasGroup(user_id,"Staff",1)]] then
                            if not vRP.HasGroup(user_id,v["PermToAcess"]) then
                                TriggerClientEvent("Notify",source,"verde","Você forçou a abertura do farm com sua permissão de ADMIN.",false,4000)
                            end
                            
                            return query[1]["Org"]
                        end
                    else
                        return query[1]["Org"]
                    end
                end
            end
        end
       
        TriggerClientEvent("Notify",source,"vermelho",Cfg.NotifyConfig["NoPerm"],false,4000)
        return false
    end
end

function Shark.GetLvl(OrgName)
    local source = source
    local user_id = vRP.Passport(source)
    if user_id then
        local query = vRP.Query("shark_farm/getOrg",{ Org = OrgName })
        if query[1] then
            return query[1]["Lvl"]
        end
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- Upgrade Farm
-----------------------------------------------------------------------------------------------------------------------------------------
function Shark.PaymentCollect(OrgName,RouteName,Lvl)
    local source = source
    local user_id = vRP.Passport(source)
    if user_id then
        Player(source)["state"]["Buttons"] = true
        Player(source)["state"]["Cancel"] = true

        if not vRPC.inVehicle(source) then
            vRPC.playAnim(source,false,{Cfg.FarmConfig[OrgName]["Animation"][1],Cfg.FarmConfig[OrgName]["Animation"][2]},true)
            TriggerClientEvent("Progress",source,Cfg.FarmConfig[OrgName]["AnimDuration"])
            Wait(Cfg.FarmConfig[OrgName]["AnimDuration"])
            vRPC.StopAnim(source,false)
        end
        local quantidade = math.random(Cfg.FarmConfig[OrgName]["ItemFarm"][RouteName]["ItemAmount"]["Lvl"..Lvl][1],Cfg.FarmConfig[OrgName]["ItemFarm"][RouteName]["ItemAmount"]["Lvl"..Lvl][2])

        Player(source)["state"]["Buttons"] = false
        Player(source)["state"]["Cancel"] = false
        if (vRP.InventoryWeight(user_id) + itemWeight(Cfg.FarmConfig[OrgName]["ItemFarm"][RouteName]["ItemSpawn"]) * quantidade) <= vRP.GetWeight(user_id) then
            vRP.GenerateItem(user_id,Cfg.FarmConfig[OrgName]["ItemFarm"][RouteName]["ItemSpawn"],quantidade,true)
            return true
        else
            TriggerClientEvent("Notify",source,"vermelho","Mochila cheia.",false,5000)
            return false
        end    
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- Create New Route
-----------------------------------------------------------------------------------------------------------------------------------------
function Shark.CreateNewRoute(FarmcTable,RaceName,FormatType)
	local source = source
	local Passport = vRP.Passport(source)
    local Identity = vRP.Identity(Passport)
	if Passport then
        local value = ""
        for k,v in pairs(FarmcTable) do
            value = value.."{ "..mathLength(v.Coords.x)..","..mathLength(v.Coords.y)..","..mathLength(v.Coords.z).." },\n"
        end
        vRP.ArchiveDiscord("Teste","Nome da Rota: **"..RaceName.."**\n"..value.."\nBy: **"..Identity["name"].." "..Identity["name2"],13541152)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- Upgrade Farm
-----------------------------------------------------------------------------------------------------------------------------------------
function Shark.UpgradeFarm(farm)
    local source = source
    local user_id = vRP.Passport(source)
    if user_id then
        local OrgInfo = farm--Shark.CheckOrg(source)
        if OrgInfo then
            local query = vRP.Query("shark_farm/getOrg",{ Org = OrgInfo })
            if (query[1]["Lvl"]+1) > 5 then
                TriggerClientEvent("Notify",source,"amarelo",Cfg.NotifyConfig["MaxLvl"],false,3000)
                return
            end
            vCLIENT.CloseSystem(source)
            if vRP.Request(source,"Upgrade no farm para o LVL "..(query[1]["Lvl"]+1).." por <b>$"..parseFormat(Cfg.FarmConfig[OrgInfo]["UpgradeValue"][query[1]["Lvl"]+1]).."</b>?", "Melhore as entregas") then
                if vRP.PaymentFull(user_id,Cfg.FarmConfig[OrgInfo]["UpgradeValue"][query[1]["Lvl"]+1]) then
                    vRP.Query("shark_farm/updateFarm",{ Org = OrgInfo })
                    TriggerClientEvent("Notify",source,"verde",Cfg.NotifyConfig["SucessPayment"],false,3000)
                else
                    TriggerClientEvent("Notify",source,"vermelho",Cfg.NotifyConfig["FailedPayment"],false,5000)
                end
            else
                return
            end
        end
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- Level Identify
-----------------------------------------------------------------------------------------------------------------------------------------
function Shark.levelIdentify(farm)
	local source = source
	local user_id = vRP.getUserId(source)
    local OrgInfo = farm--Shark.CheckOrg(source)
    if OrgInfo then
        local query = vRP.Query("shark_farm/getOrg",{ Org = OrgInfo })
        if query[1] then
            if user_id then
                return 
                {
                    query[1]["Lvl"], -- 0 (AQUI PRECISA CHEGAR DE 0 A 3) (0 E QUANDO NAO TEM NENHUM UPGRADE E 3 E QUANDO TIVER O MAXIMO PARA QUE ELE COLOQUE AS BOLINHAS BRANCAS)
                    'attfutura',-- 1
                    'attfutura', -- 2
                    'attfutura', -- 3
                    'attfutura',
                    'attfutura'  --5
                }
            end	
        end
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ATT DB
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("AttDBfarm",function(source,Message)
    local Passport = vRP.Passport(source)
    if Passport then
        if vRP.HasGroup(Passport,"Staff", 1) then
            for k,v in pairs(Cfg.FarmConfig) do
                vRP.Query("shark_farm/createdb",{ org = k })
            end

            print('TABELA DE FARM ATUALIZADA!!!')
        end
    end
end)