local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
emP = {}
Tunnel.bindInterface("vrp_lavagem",emP)
-----------------------------------------------------------------------------------------------------------------------------------
--[ FUNÇÕES ]----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
local partes = {
    { parte = "contardinheiro" },
}
-----------------------------------------------------------------------------------------------------------------------------------
--[ EVENTOS ]----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("lavar-dinheiro")
AddEventHandler("lavar-dinheiro",function(parte)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		for k,v in pairs(partes) do
            if parte == v.parte then
                if parte == "contardinheiro" then
					TriggerClientEvent("progress",source,50000,"EMBALANDO NOTAS FALSAS")
					vRPclient._playAnim(source,true,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)
					SetTimeout(10000,function()
						vRPclient._DeletarObjeto(source)
                        vRPclient._stopAnim(source,false)
                        TriggerClientEvent("Notify",source,"sucesso","Você embalou <b>R$50.000,00</b> em <b>Notas Falsas</b>.")
                    end)
                end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECAR DINHEIRO SUJO
-----------------------------------------------------------------------------------------------------------------------------------------
function emP.checkPayment()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        --vRP.giveInventoryItem(user_id,"dinheirosujo",50000) -- Item que recebe ao lavar o dinheiro sujo
        vRP.giveMoney(user_id,50000) -- Caso queira que receba dinheiro, ative essa linha e desative a de cima
    end
end

function emP.checkDinheiro()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.tryGetInventoryItem(user_id,"dinheirosujo",50000) then -- Retirar dinheiro sujo do inventario
            return true
        else
            TriggerClientEvent("Notify",source,"negado","Dinheiro sujo <b>insuficiente</b>.")
            return false
        end
    end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- PERMISSÃO
-----------------------------------------------------------------------------------------------------------------------------------------
function emP.checkPermissao()
    local source = source
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"bennys.permissao") then -- PERMISSÃO
        return true
    end
end