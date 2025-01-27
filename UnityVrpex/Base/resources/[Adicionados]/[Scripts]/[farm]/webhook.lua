local webhookLink = "https://discord.com/api/webhooks/1333475312935243836/4WDpnCzYA8OdMRNSTkhE43R8UIRd73TmLGNuVESy0tqnHGWNoDvUPAIFBeJtuxB4Xf3p"
function vRP.ArchiveDiscord(Hook,Message,Color)
    PerformHttpRequest(webhookLink,function(err,text,headers) end,"POST",json.encode({
        username = ServerName,
        embeds = { { color = Color, description = Message } }
    }),{ ["Content-Type"] = "application/json" })
end