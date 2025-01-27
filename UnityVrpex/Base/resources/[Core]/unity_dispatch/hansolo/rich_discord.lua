local Tunnel = module("vrp","lib/Tunnel")
misc = Tunnel.getInterface("unity_dispatch")
----------------------------------------------------------------------------------------------------
--[ DISCORD ]---------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
        SetDiscordAppId(1309182543953793054)

	    local players = misc.discord()
		
	    SetDiscordRichPresenceAsset('bk_rgb1024x1024')
		SetRichPresence("Moradores: "..players.."\n Base SP Vrpex")
		
        SetDiscordRichPresenceAction(0, "Discord", "https://discord.gg/RgDP28Dbqy")
        SetDiscordRichPresenceAction(1, "Site", "https://unitydev.discloud.app/")
		Citizen.Wait(10000)
	end
end)
