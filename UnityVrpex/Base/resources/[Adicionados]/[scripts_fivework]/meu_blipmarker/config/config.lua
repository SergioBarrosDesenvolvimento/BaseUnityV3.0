Config = Config or {}

-- modelo de orgs
local favela = "Morro"
local qg = "Máfia"
local dp = "Delegacia"
local bpm = "Batalhão"
local hp = "Hospital"
local mc = "Mecânica"


Config.Blips = {
    -- Adicione mais blips aqui
    --- Favelas
    {
        name = favela .. " - Modelo",
        icon = 310,
        size = 1.0,
        color = 1,
        coords = { x = 1018.75, y = 950.52, z = 239.11 },
    },

    -- QGs
    {
        name = qg .. " - Modelo",
        icon = 310,
        size = 1.0,
        color = 1,
        coords = { x = 1018.75, y = 950.52, z = 239.11 },
    },
    -- Policia
    {
        name = dp .. " - Modelo",
        icon = 58,
        size = 1.0,
        color = 0,
        coords = { x = 427.46, y = -981.09, z = 33.57 },
    },
    {
        name = bpm .. " - Modelo",
        icon = 137,
        size = 1.0,
        color = 0,
        coords = { x = 427.46, y = -981.09, z = 33.57 },
    },
    -- Hospital

    {
        name = hp .. " - Modelo",
        icon = 137,
        size = 1.0,
        color = 0,
        coords = { x = 427.46, y = -981.09, z = 33.57 },
    },

    -- Mecanico

    {
        name = mc .. " - Modelo",
        icon = 137,
        size = 1.0,
        color = 0,
        coords = { x = 427.46, y = -981.09, z = 33.57 },
    },


}
