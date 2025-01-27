local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

src = {}
Tunnel.bindInterface("mirtin_craft",src)
Proxy.addInterface("mirtin_craft",src)

vCLIENT = Tunnel.getInterface("mirtin_craft")

local trafico = Tunnel.getInterface("vrp_trafico")
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
config = {}
config.license = "main"  -- não mexa aqui ( isso serve para updates exclusivos )
config.delayCraft = 5 -- Segundos ( Delay de cada mesa de craft, para evitar floods )
config.weebdump = "" -- WEEBHOOK QUANDO NEGO TENTAR DUMPAR DESLIGANDO A INTERNET. 

config.weebhook = {
    logo = "https://cdn.discordapp.com/attachments/1309175500626722896/1309176301319618630/BK-RGB200x200.png?ex=67965271&is=679500f1&hm=a9d9024ee895d06996b545fc790a696b15279eca09e73caf224144a62fe7f443&", -- LOGO do Servidor
    color =  6356736,
    footer = "© Mirt1n Store",
}

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CONFIG CRAFT
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
config.table = { 
    ["Dominacao [ARMAS]"] = { -- NUNCA REPITIR O MESMO NOME
       armazem = false, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
       weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
       isDominas = false,

       craft = {
            ["Pistola Fajuta"] = {
                spawnID = "WEAPON_COMBATPISTOL", -- SPAWN DO ITEM
                nameItem = "Pistola-Fajuta", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 15 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    -- { item = "gatilho" , amount = 1 },  
                    -- { item = "molas" , amount = 5 },  
                    -- { item = "metal" , amount = 5 }, 
                    { item = "dinheirosujo" , amount = 500 } 
                }
            },
        
        ["Pistola MK2"] = {
                spawnID = "WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
                nameItem = "Pistola-MK2", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 30 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 10 },  
                    { item = "metal" , amount = 10 }, 
                    { item = "money" , amount = 50000 } 
                }
            },
        
            ["TEC-9"] = {
                spawnID = "WEAPON_MACHINEPISTOL", -- SPAWN DO ITEM
                nameItem = "TEC-9", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 200 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 20 },  
                    { item = "metal" , amount = 20 },  
                    { item = "money" , amount = 125000 } 
                }
            },  
           
           
            ["MP5"] = {
                spawnID = "WEAPON_SMG", -- SPAWN DO ITEM
                nameItem = "MP5", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 200 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 20 },  
                    { item = "metal" , amount = 20 },  
                    { item = "money" , amount = 110000 } 
                }
            },  

            ["Ak-47"] = {
                spawnID = "WEAPON_ASSAULTRIFLE", -- SPAWN DO ITEM
                nameItem = "ak47", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 15 },  
                    { item = "metal" , amount = 15 },  
                    { item = "money" , amount = 175000 } 
                }
            },  


            ["Ak-47 MK2"] = {
                spawnID = "WEAPON_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                nameItem = "AK-47 MK2", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 250 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 25 },  
                    { item = "metal" , amount = 25 },  
                    { item = "money" , amount = 200000 } 
                }
            },  
            
            ["G3"] = {
                spawnID = "WEAPON_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                nameItem = "G3", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]    
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 320 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 30 },  
                    { item = "metal" , amount = 30 },  
                    { item = "money" , amount = 275000 } 
                }
            }
        }
    },

    ["Dominacao [MUNICAO]"] = { -- NUNCA REPITIR O MESMO NOME
       armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
       weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
       isDominas = true,

       craft = {
        ["Munição Pistola Fajuta"] = {
            spawnID = "AMMO_SNSPISTOL_MK2", -- SPAWN DO ITEM
            nameItem = "M. Pistola-Fajuta", -- NOME DO ITEM
            maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
            customAmount = 100, -- Caso queira colocar um valor x por unidade.
            tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "polvora" , amount = 100 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "capsulas" , amount = 100 },  
            }
        },
        
        ["Munição Pistola MK2"] = {
                spawnID = "AMMO_PISTOL_MK2", -- SPAWN DO ITEM
                nameItem = "M. Pistola MK2", -- NOME DO ITEM
                maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 100, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsulas" , amount = 100 },  
                     
                }
            },
        
            ["Munição AK-47"] = {
                spawnID = "AMMO_ASSAULTRIFLE", -- SPAWN DO ITEM
                nameItem = "M. AK-47", -- NOME DO ITEM
                maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 100, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsulas" , amount = 100 },  
                    { item = "money" , amount = 5000 },  
                }
            },
           
           
            ["Munição MP5"] = {
                spawnID = "AMMO_SMG", -- SPAWN DO ITEM
                nameItem = "M. MP5", -- NOME DO ITEM
                maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 100, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsulas" , amount = 100 },  
                    { item = "money" , amount = 10000 },  
                }
            },
        

            ["Munição TEC-9"] = {
                spawnID = "AMMO_MACHINEPISTOL", -- SPAWN DO ITEM
                nameItem = "M. TEC-9", -- NOME DO ITEM
                maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 100, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsulas" , amount = 100 },  
                    { item = "money" , amount = 10000 },  
                }
            },
        


            ["Munição AK-47 MK2"] = {
                spawnID = "AMMO_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                nameItem = "M. AK-47 MK2", -- NOME DO ITEM
                maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 100, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsulas" , amount = 100 },  
                    { item = "money" , amount = 15000 },  
                }
            },
        
            
            ["Munição G3"] = {
                spawnID = "AMMO_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                nameItem = "M. G3", -- NOME DO ITEM
                maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 100, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsulas" , amount = 100 },  
                    { item = "money" , amount = 30000 },
                }
            },
        }
    },

    ["Dominacao [LAVAGEM]"] = { -- NUNCA REPITIR O MESMO NOME
       armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
       weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
       isDominas = true,

        craft = {
            ["Dinheiro"] = {
                spawnID = "money", -- SPAWN DO ITEM
                nameItem = "Dinheiro", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 170000, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "dirty_money" , amount = 200000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "l-alvejante" , amount = 20 },  
                }
            },
        }
    },

    ["Dominacao [DESMANCHE]"] = { -- NUNCA REPITIR O MESMO NOME
       armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
       weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
       isDominas = true,

        craft = {
            ["Lockpick"] = {
                spawnID = "lockpick", -- SPAWN DO ITEM
                nameItem = "Lockpick", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 2, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "ferro" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "aluminio" , amount = 25 },  
                }
            },
        }
    },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CRAFT NORMAIS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    ["Maconha"] = { -- NUNCA REPITIR O MESMO NOME
        armazem = false, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
        isDominas = false,

        craft = {
            ["Maconha"] = {
                spawnID = "maconha", -- SPAWN DO ITEM
                nameItem = "Maconha", -- NOME DO ITEM
                maxAmount = 10, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 2, -- Caso queira colocar um valor x por unidade.
                tempo = 5, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "folhamaconha" , amount = 1 }, 
                }
            },
        }
    },

    ["Cocaina"] = { -- NUNCA REPITIR O MESMO NOME
        armazem = false, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
        isDominas = false,

        craft = {
             ["Cocaina"] = {
                spawnID = "cocaina", -- SPAWN DO ITEM
                nameItem = "Cocaina", -- NOME DO ITEM
                maxAmount = 10, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 2, -- Caso queira colocar um valor x por unidade.
                tempo = 5, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pastabase" , amount = 1 }, 
                }
            },
        }
    },

    ["Balinha"] = { -- NUNCA REPITIR O MESMO NOME
        armazem = false, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
        isDominas = false,

        craft = {
            ["Balinha"] = {
                spawnID = "balinha", -- SPAWN DO ITEM
                nameItem = "Balinha", -- NOME DO ITEM
                maxAmount = 10, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 2, -- Caso queira colocar um valor x por unidade.
                tempo = 5, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "podemd" , amount = 1 }, 
                }
            },
        }
    },

    ["Heroina"] = { -- NUNCA REPITIR O MESMO NOME
        armazem = false, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
        isDominas = false,

        craft = {
            ["Heroina"] = {
                spawnID = "heroina", -- SPAWN DO ITEM
                nameItem = "Heroina", -- NOME DO ITEM
                maxAmount = 10, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 2, -- Caso queira colocar um valor x por unidade.
                tempo = 5, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "morfina" , amount = 1 }, 
                }
            },
        }
    },

    ["Metanfetamina"] = { -- NUNCA REPITIR O MESMO NOME
        armazem = false, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
        isDominas = false,

        craft = {
            ["Metanfetamina"] = {
                spawnID = "metanfetamina", -- SPAWN DO ITEM
                nameItem = "Metanfetamina", -- NOME DO ITEM
                maxAmount = 10, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 2, -- Caso queira colocar um valor x por unidade.
                tempo = 5, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "anfetamina" , amount = 1 }, 
                }
            },
        }
    },

    ["Opio"] = { -- NUNCA REPITIR O MESMO NOME
        armazem = false, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
        isDominas = false,

        craft = {
            ["Opio"] = {
                spawnID = "opio", -- SPAWN DO ITEM
                nameItem = "Opio", -- NOME DO ITEM
                maxAmount = 10, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 2, -- Caso queira colocar um valor x por unidade.
                tempo = 5, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "opiopapoula" , amount = 1 }, 
                }
            },
        }
    },

    ["Haxixe"] = { -- NUNCA REPITIR O MESMO NOME
        armazem = false, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
        isDominas = false,

        craft = {
            ["Haxixe"] = {
                spawnID = "haxixe", -- SPAWN DO ITEM
                nameItem = "haxixe", -- NOME DO ITEM
                maxAmount = 10, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 2, -- Caso queira colocar um valor x por unidade.
                tempo = 5, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "resinacannabis" , amount = 1 }, 
                }
            },
        }
    },
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ORGANIZACOES ( TEM QUE TER PARA RECONHECER O ARMAZEM )
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    ["Mafia03"] = { -- ARMAS
        armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]

        craft = {
            ["Pistola Fajuta"] = {
                spawnID = "WEAPON_SNSPISTOL_MK2", -- SPAWN DO ITEM
                nameItem = "Pistola-Fajuta", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 5 },  
                    { item = "metal" , amount = 5 }, 
                    { item = "money" , amount = 35000 } 
                }
            },
            
            ["Pistola MK2"] = {
                    spawnID = "WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
                    nameItem = "Pistola-MK2", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 45 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 10 },  
                        { item = "metal" , amount = 10 }, 
                        { item = "money" , amount = 60000 } 
                    }
                },
            
                ["TEC-9"] = {
                    spawnID = "WEAPON_MACHINEPISTOL", -- SPAWN DO ITEM
                    nameItem = "TEC-9", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 200 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 20 },  
                        { item = "metal" , amount = 20 },  
                        { item = "money" , amount = 180000 } 
                    }
                },  
                
                
                ["MP5"] = {
                    spawnID = "WEAPON_SMG", -- SPAWN DO ITEM
                    nameItem = "MP5", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 200 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 20 },  
                        { item = "metal" , amount = 20 },  
                        { item = "money" , amount = 160000 } 
                    }
                },  

                ["Ak-47"] = {
                    spawnID = "WEAPON_ASSAULTRIFLE", -- SPAWN DO ITEM
                    nameItem = "AK-47", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 15 },  
                        { item = "metal" , amount = 15 },  
                        { item = "money" , amount = 150000 } 
                    }
                },  


                ["Ak-47 MK2"] = {
                    spawnID = "WEAPON_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                    nameItem = "AK-47 MK2", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 250 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 25 },  
                        { item = "metal" , amount = 25 },  
                        { item = "money" , amount = 300000 } 
                    }
                },  
                
                ["G3"] = {
                    spawnID = "WEAPON_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                    nameItem = "G3", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]    
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 320 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 30 },  
                        { item = "metal" , amount = 30 },  
                        { item = "money" , amount = 350000 } 
                    }
                },
        }
    },
    
    ["Mafia02"] = { -- ARMAS
        armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]

        craft = {
            ["Pistola Fajuta"] = {
                spawnID = "WEAPON_SNSPISTOL_MK2", -- SPAWN DO ITEM
                nameItem = "Pistola-Fajuta", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 5 },  
                    { item = "metal" , amount = 5 }, 
                    { item = "money" , amount = 35000 } 
                }
            },
            
            ["Pistola MK2"] = {
                    spawnID = "WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
                    nameItem = "Pistola-MK2", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 45 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 10 },  
                        { item = "metal" , amount = 10 }, 
                        { item = "money" , amount = 60000 } 
                    }
                },
            
                ["TEC-9"] = {
                    spawnID = "WEAPON_MACHINEPISTOL", -- SPAWN DO ITEM
                    nameItem = "TEC-9", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 200 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 20 },  
                        { item = "metal" , amount = 20 },  
                        { item = "money" , amount = 180000 } 
                    }
                },  
                
                
                ["MP5"] = {
                    spawnID = "WEAPON_SMG", -- SPAWN DO ITEM
                    nameItem = "MP5", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 200 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 20 },  
                        { item = "metal" , amount = 20 },  
                        { item = "money" , amount = 160000 } 
                    }
                },  

                ["Ak-47"] = {
                    spawnID = "WEAPON_ASSAULTRIFLE", -- SPAWN DO ITEM
                    nameItem = "AK-47", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 15 },  
                        { item = "metal" , amount = 15 },  
                        { item = "money" , amount = 150000 } 
                    }
                },  


                ["Ak-47 MK2"] = {
                    spawnID = "WEAPON_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                    nameItem = "AK-47 MK2", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 250 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 25 },  
                        { item = "metal" , amount = 25 },  
                        { item = "money" , amount = 300000 } 
                    }
                },  
                
                ["G3"] = {
                    spawnID = "WEAPON_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                    nameItem = "G3", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]    
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 320 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 30 },  
                        { item = "metal" , amount = 30 },  
                        { item = "money" , amount = 350000 } 
                    }
                },
            }
    },

    ["Mafia01"] = { -- ARMAS
    armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
    weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]

    craft = {
        ["Pistola Fajuta"] = {
            spawnID = "WEAPON_SNSPISTOL_MK2", -- SPAWN DO ITEM
            nameItem = "Pistola-Fajuta", -- NOME DO ITEM
            maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
            customAmount = 1, -- Caso queira colocar um valor x por unidade.
            tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "pecadearma" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "gatilho" , amount = 1 },  
                { item = "molas" , amount = 5 },  
                { item = "metal" , amount = 5 }, 
                { item = "money" , amount = 35000 } 
            }
        },
        
        ["Pistola MK2"] = {
                spawnID = "WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
                nameItem = "Pistola-MK2", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 45 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 10 },  
                    { item = "metal" , amount = 10 }, 
                    { item = "money" , amount = 60000 } 
                }
            },
        
            ["TEC-9"] = {
                spawnID = "WEAPON_MACHINEPISTOL", -- SPAWN DO ITEM
                nameItem = "TEC-9", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 200 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 20 },  
                    { item = "metal" , amount = 20 },  
                    { item = "money" , amount = 180000 } 
                }
            },  
            
            
            ["MP5"] = {
                spawnID = "WEAPON_SMG", -- SPAWN DO ITEM
                nameItem = "MP5", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 200 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 20 },  
                    { item = "metal" , amount = 20 },  
                    { item = "money" , amount = 160000 } 
                }
            },  

            ["Ak-47"] = {
                spawnID = "WEAPON_ASSAULTRIFLE", -- SPAWN DO ITEM
                nameItem = "AK-47", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 15 },  
                    { item = "metal" , amount = 15 },  
                    { item = "money" , amount = 150000 } 
                }
            },  


            ["Ak-47 MK2"] = {
                spawnID = "WEAPON_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                nameItem = "AK-47 MK2", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 250 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 25 },  
                    { item = "metal" , amount = 25 },  
                    { item = "money" , amount = 300000 } 
                }
            },  
            
            ["G3"] = {
                spawnID = "WEAPON_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                nameItem = "G3", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]    
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 320 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 30 },  
                    { item = "metal" , amount = 30 },  
                    { item = "money" , amount = 350000 } 
                }
            },
        }
    },

    ["Franca"] = { -- ARMAS
        armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]

        craft = {
            ["Pistola Fajuta"] = {
                spawnID = "WEAPON_SNSPISTOL_MK2", -- SPAWN DO ITEM
                nameItem = "Pistola-Fajuta", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 5 },  
                    { item = "metal" , amount = 5 }, 
                    { item = "money" , amount = 35000 } 
                }
            },
            
            ["Pistola MK2"] = {
                    spawnID = "WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
                    nameItem = "Pistola-MK2", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 45 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 10 },  
                        { item = "metal" , amount = 10 }, 
                        { item = "money" , amount = 60000 } 
                    }
                },
            
                ["TEC-9"] = {
                    spawnID = "WEAPON_MACHINEPISTOL", -- SPAWN DO ITEM
                    nameItem = "TEC-9", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 200 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 20 },  
                        { item = "metal" , amount = 20 },  
                        { item = "money" , amount = 180000 } 
                    }
                },  
                
                
                ["MP5"] = {
                    spawnID = "WEAPON_SMG", -- SPAWN DO ITEM
                    nameItem = "MP5", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 200 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 20 },  
                        { item = "metal" , amount = 20 },  
                        { item = "money" , amount = 160000 } 
                    }
                },  

                ["Ak-47"] = {
                    spawnID = "WEAPON_ASSAULTRIFLE", -- SPAWN DO ITEM
                    nameItem = "AK-47", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 15 },  
                        { item = "metal" , amount = 15 },  
                        { item = "money" , amount = 150000 } 
                    }
                },  


                ["Ak-47 MK2"] = {
                    spawnID = "WEAPON_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                    nameItem = "AK-47 MK2", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 250 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 25 },  
                        { item = "metal" , amount = 25 },  
                        { item = "money" , amount = 300000 } 
                    }
                },  
                
                ["G3"] = {
                    spawnID = "WEAPON_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                    nameItem = "G3", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]    
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 320 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 30 },  
                        { item = "metal" , amount = 30 },  
                        { item = "money" , amount = 350000 } 
                    }
                },
        }
    },

    ["Anonymous"] = { -- ARMAS
        armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]

        craft = {
            ["Pistola Fajuta"] = {
                spawnID = "WEAPON_SNSPISTOL_MK2", -- SPAWN DO ITEM
                nameItem = "Pistola-Fajuta", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 5 },  
                    { item = "metal" , amount = 5 }, 
                    { item = "money" , amount = 35000 } 
                }
            },
            
            ["Pistola MK2"] = {
                    spawnID = "WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
                    nameItem = "Pistola-MK2", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 45 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 10 },  
                        { item = "metal" , amount = 10 }, 
                        { item = "money" , amount = 60000 } 
                    }
                },
            
                ["TEC-9"] = {
                    spawnID = "WEAPON_MACHINEPISTOL", -- SPAWN DO ITEM
                    nameItem = "TEC-9", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 200 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 20 },  
                        { item = "metal" , amount = 20 },  
                        { item = "money" , amount = 180000 } 
                    }
                },  
                
                
                ["MP5"] = {
                    spawnID = "WEAPON_SMG", -- SPAWN DO ITEM
                    nameItem = "MP5", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 200 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 20 },  
                        { item = "metal" , amount = 20 },  
                        { item = "money" , amount = 160000 } 
                    }
                },  

                ["Ak-47"] = {
                    spawnID = "WEAPON_ASSAULTRIFLE", -- SPAWN DO ITEM
                    nameItem = "AK-47", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 15 },  
                        { item = "metal" , amount = 15 },  
                        { item = "money" , amount = 150000 } 
                    }
                },  


                ["Ak-47 MK2"] = {
                    spawnID = "WEAPON_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                    nameItem = "AK-47 MK2", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 250 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 25 },  
                        { item = "metal" , amount = 25 },  
                        { item = "money" , amount = 300000 } 
                    }
                },  
                
                ["G3"] = {
                    spawnID = "WEAPON_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                    nameItem = "G3", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]    
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 320 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 30 },  
                        { item = "metal" , amount = 30 },  
                        { item = "money" , amount = 350000 } 
                    }
                },
        }
    },

    ["Croacia"] = { -- ARMAS
        armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]

        craft = {
            ["Pistola Fajuta"] = {
                spawnID = "WEAPON_SNSPISTOL_MK2", -- SPAWN DO ITEM
                nameItem = "Pistola-Fajuta", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 5 },  
                    { item = "metal" , amount = 5 }, 
                    { item = "money" , amount = 35000 } 
                }
            },
            
            ["Pistola MK2"] = {
                    spawnID = "WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
                    nameItem = "Pistola-MK2", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 45 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 10 },  
                        { item = "metal" , amount = 10 }, 
                        { item = "money" , amount = 60000 } 
                    }
                },
            
                ["TEC-9"] = {
                    spawnID = "WEAPON_MACHINEPISTOL", -- SPAWN DO ITEM
                    nameItem = "TEC-9", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 200 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 20 },  
                        { item = "metal" , amount = 20 },  
                        { item = "money" , amount = 180000 } 
                    }
                },  
                
                
                ["MP5"] = {
                    spawnID = "WEAPON_SMG", -- SPAWN DO ITEM
                    nameItem = "MP5", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 200 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 20 },  
                        { item = "metal" , amount = 20 },  
                        { item = "money" , amount = 160000 } 
                    }
                },  

                ["Ak-47"] = {
                    spawnID = "WEAPON_ASSAULTRIFLE", -- SPAWN DO ITEM
                    nameItem = "AK-47", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 15 },  
                        { item = "metal" , amount = 15 },  
                        { item = "money" , amount = 150000 } 
                    }
                },  


                ["Ak-47 MK2"] = {
                    spawnID = "WEAPON_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                    nameItem = "AK-47 MK2", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 250 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 25 },  
                        { item = "metal" , amount = 25 },  
                        { item = "money" , amount = 300000 } 
                    }
                },  
                
                ["G3"] = {
                    spawnID = "WEAPON_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                    nameItem = "G3", -- NOME DO ITEM
                    maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                    customAmount = 1, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]    
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 320 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "gatilho" , amount = 1 },  
                        { item = "molas" , amount = 30 },  
                        { item = "metal" , amount = 30 },  
                        { item = "money" , amount = 350000 } 
                    }
                },
            }
    },

    ["Egito"] = { -- ARMAS
        armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1017534159360626800/3Q735Kp8YBuqGor6z73ElrbeuS22JPaD09E83aNi5XgcZXzwnuIYuaayIWpojUGy2qae", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]

        craft = {
            ["Pistola Fajuta"] = {
                spawnID = "WEAPON_SNSPISTOL_MK2", -- SPAWN DO ITEM
                nameItem = "Pistola-Fajuta", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 5 },  
                    { item = "metal" , amount = 5 }, 
                    { item = "money" , amount = 35000 } 
                }
            },
        
            ["Pistola MK2"] = {
                spawnID = "WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
                nameItem = "Pistola-MK2", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 45 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 10 },  
                    { item = "metal" , amount = 10 }, 
                    { item = "money" , amount = 60000 } 
                }
            },
        
            ["TEC-9"] = {
                spawnID = "WEAPON_MACHINEPISTOL", -- SPAWN DO ITEM
                nameItem = "TEC-9", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 200 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 20 },  
                    { item = "metal" , amount = 20 },  
                    { item = "money" , amount = 180000 } 
                }
            },  
            
            
            ["MP5"] = {
                spawnID = "WEAPON_SMG", -- SPAWN DO ITEM
                nameItem = "MP5", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 200 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 20 },  
                    { item = "metal" , amount = 20 },  
                    { item = "money" , amount = 160000 } 
                }
            },  

            ["Ak-47"] = {
                spawnID = "WEAPON_ASSAULTRIFLE", -- SPAWN DO ITEM
                nameItem = "AK-47", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 15 },  
                    { item = "metal" , amount = 15 },  
                    { item = "money" , amount = 150000 } 
                }
            },  


            ["Ak-47 MK2"] = {
                spawnID = "WEAPON_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                nameItem = "AK-47 MK2", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 250 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 25 },  
                    { item = "metal" , amount = 25 },  
                    { item = "money" , amount = 300000 } 
                }
            },  
            
            ["G3"] = {
                spawnID = "WEAPON_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                nameItem = "G3", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]    
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 320 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "gatilho" , amount = 1 },  
                    { item = "molas" , amount = 30 },  
                    { item = "metal" , amount = 30 },  
                    { item = "money" , amount = 350000 } 
                }
            }
        },
    },

    ["Yakuza"] = { -- MUNICAO
        armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
        isDominas = true,

        craft = {
                ["Munição Pistola Fajuta"] = {
                    spawnID = "AMMO_SNSPISTOL_MK2", -- SPAWN DO ITEM
                    nameItem = "M. Pistola-Fajuta", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 100 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                    }
                },
            
                ["Munição Pistola MK2"] = {
                    spawnID = "AMMO_PISTOL_MK2", -- SPAWN DO ITEM
                    nameItem = "M. Pistola MK2", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        
                    }
                },
            
                ["Munição AK-47"] = {
                    spawnID = "AMMO_ASSAULTRIFLE", -- SPAWN DO ITEM
                    nameItem = "M. AK-47", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 5000 },  
                    }
                },
                
                
                ["Munição MP5"] = {
                    spawnID = "AMMO_SMG", -- SPAWN DO ITEM
                    nameItem = "M. MP5", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 10000 },  
                    }
                },
            

                ["Munição TEC-9"] = {
                    spawnID = "AMMO_MACHINEPISTOL", -- SPAWN DO ITEM
                    nameItem = "M. TEC-9", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 10000 },  
                    }
                },
            


                ["Munição AK-47 MK2"] = {
                    spawnID = "AMMO_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                    nameItem = "M. AK-47 MK2", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 15000 },  
                    }
                },
            
                
                ["Munição G3"] = {
                    spawnID = "AMMO_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                    nameItem = "M. G3", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 30000 },
                    }
                },
            }
    },

    ["Triade"] = { -- MUNICAO
        armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1017534589499088937/aNoNenJjMSdKsSwawPdEjMlJlAhYHF4mH7doTwuDzlTtWiWxljBv3FWpIV0rQiPsXmh0", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
        isDominas = true,

        craft = {
                ["Munição Pistola Fajuta"] = {
                    spawnID = "AMMO_SNSPISTOL_MK2", -- SPAWN DO ITEM
                    nameItem = "M. Pistola-Fajuta", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 100 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                    }
                },
            
                ["Munição Pistola MK2"] = {
                    spawnID = "AMMO_PISTOL_MK2", -- SPAWN DO ITEM
                    nameItem = "M. Pistola MK2", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        
                    }
                },
            
                ["Munição AK-47"] = {
                    spawnID = "AMMO_ASSAULTRIFLE", -- SPAWN DO ITEM
                    nameItem = "M. AK-47", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 5000 },  
                    }
                },
                
                
                ["Munição MP5"] = {
                    spawnID = "AMMO_SMG", -- SPAWN DO ITEM
                    nameItem = "M. MP5", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 10000 },  
                    }
                },
            

                ["Munição TEC-9"] = {
                    spawnID = "AMMO_MACHINEPISTOL", -- SPAWN DO ITEM
                    nameItem = "M. TEC-9", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 10000 },  
                    }
                },
            


                ["Munição AK-47 MK2"] = {
                    spawnID = "AMMO_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                    nameItem = "M. AK-47 MK2", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 15000 },  
                    }
                },
            
                
                ["Munição G3"] = {
                    spawnID = "AMMO_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                    nameItem = "M. G3", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 30000 },
                    }
                },
            }
    },

    ["China"] = { -- MUNICAO
        armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
        isDominas = true,

        craft = {
                ["Munição Pistola Fajuta"] = {
                    spawnID = "AMMO_SNSPISTOL_MK2", -- SPAWN DO ITEM
                    nameItem = "M. Pistola-Fajuta", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 100 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                    }
                },
            
                ["Munição Pistola MK2"] = {
                    spawnID = "AMMO_PISTOL_MK2", -- SPAWN DO ITEM
                    nameItem = "M. Pistola MK2", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        
                    }
                },
            
                ["Munição AK-47"] = {
                    spawnID = "AMMO_ASSAULTRIFLE", -- SPAWN DO ITEM
                    nameItem = "M. AK-47", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 5000 },  
                    }
                },
                
                
                ["Munição MP5"] = {
                    spawnID = "AMMO_SMG", -- SPAWN DO ITEM
                    nameItem = "M. MP5", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 10000 },  
                    }
                },
            

                ["Munição TEC-9"] = {
                    spawnID = "AMMO_MACHINEPISTOL", -- SPAWN DO ITEM
                    nameItem = "M. TEC-9", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 10000 },  
                    }
                },
            


                ["Munição AK-47 MK2"] = {
                    spawnID = "AMMO_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                    nameItem = "M. AK-47 MK2", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 15000 },  
                    }
                },
            
                
                ["Munição G3"] = {
                    spawnID = "AMMO_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                    nameItem = "M. G3", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 30000 },
                    }
                },
            }
    },

    ["Bratva"] = { -- MUNICAO
        armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
        isDominas = true,

        craft = {
                ["Munição Pistola Fajuta"] = {
                    spawnID = "AMMO_SNSPISTOL_MK2", -- SPAWN DO ITEM
                    nameItem = "M. Pistola-Fajuta", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 100 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                    }
                },
            
                ["Munição Pistola MK2"] = {
                    spawnID = "AMMO_PISTOL_MK2", -- SPAWN DO ITEM
                    nameItem = "M. Pistola MK2", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        
                    }
                },
            
                ["Munição AK-47"] = {
                    spawnID = "AMMO_ASSAULTRIFLE", -- SPAWN DO ITEM
                    nameItem = "M. AK-47", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 5000 },  
                    }
                },
                
                
                ["Munição MP5"] = {
                    spawnID = "AMMO_SMG", -- SPAWN DO ITEM
                    nameItem = "M. MP5", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 10000 },  
                    }
                },
            

                ["Munição TEC-9"] = {
                    spawnID = "AMMO_MACHINEPISTOL", -- SPAWN DO ITEM
                    nameItem = "M. TEC-9", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 10000 },  
                    }
                },
            


                ["Munição AK-47 MK2"] = {
                    spawnID = "AMMO_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                    nameItem = "M. AK-47 MK2", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 15000 },  
                    }
                },
            
                
                ["Munição G3"] = {
                    spawnID = "AMMO_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                    nameItem = "M. G3", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 30000 },
                    }
                },
            }
    },

    ["Cartel"] = { -- MUNICAO
        armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
        isDominas = true,

        craft = {
                ["Munição Pistola Fajuta"] = {
                    spawnID = "AMMO_SNSPISTOL_MK2", -- SPAWN DO ITEM
                    nameItem = "M. Pistola-Fajuta", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 100 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                    }
                },
            
                ["Munição Pistola MK2"] = {
                    spawnID = "AMMO_PISTOL_MK2", -- SPAWN DO ITEM
                    nameItem = "M. Pistola MK2", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        
                    }
                },
            
                ["Munição AK-47"] = {
                    spawnID = "AMMO_ASSAULTRIFLE", -- SPAWN DO ITEM
                    nameItem = "M. AK-47", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 5000 },  
                    }
                },
                
                
                ["Munição MP5"] = {
                    spawnID = "AMMO_SMG", -- SPAWN DO ITEM
                    nameItem = "M. MP5", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 10000 },  
                    }
                },
            

                ["Munição TEC-9"] = {
                    spawnID = "AMMO_MACHINEPISTOL", -- SPAWN DO ITEM
                    nameItem = "M. TEC-9", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 10000 },  
                    }
                },
            


                ["Munição AK-47 MK2"] = {
                    spawnID = "AMMO_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                    nameItem = "M. AK-47 MK2", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 15000 },  
                    }
                },
            
                
                ["Munição G3"] = {
                    spawnID = "AMMO_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
                    nameItem = "M. G3", -- NOME DO ITEM
                    maxAmount = 2, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                    customAmount = 100, -- Caso queira colocar um valor x por unidade.
                    tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 100 },  
                        { item = "money" , amount = 30000 },
                    }
                },
            }
    },

    ["Vanilla"] = { -- LAVAGEM
        armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
        isDominas = true,

        craft = {
            ["Dinheiro"] = {
                spawnID = "money", -- SPAWN DO ITEM
                nameItem = "Dinheiro", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 170000, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "dirty_money" , amount = 200000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "l-alvejante" , amount = 20 },  
                }
            },
        }
    },

    ["Bahamas"] = { -- LAVAGEM
        armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
        isDominas = true,

        craft = {
            ["Dinheiro"] = {
                spawnID = "money", -- SPAWN DO ITEM
                nameItem = "Dinheiro", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 170000, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "dirty_money" , amount = 200000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "l-alvejante" , amount = 20 },  
                }
            },
        }
    },

    ["Cassino"] = { -- LAVAGEM
        armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1017534685338939452/94Ftd2TVjbaA2oK41i7iSdYof4mbBhmE2bgHNZSJk5NDE9YVDs2_MUU81S0ZSziyAsKr", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
        isDominas = true,

        craft = {
            ["Dinheiro"] = {
                spawnID = "money", -- SPAWN DO ITEM
                nameItem = "Dinheiro", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 170000, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "dirty_money" , amount = 200000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "l-alvejante" , amount = 20 },  
                }
            },
        }
    },

    ["Galaxy"] = { -- LAVAGEM
        armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8Q", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
        isDominas = true,

        craft = {
            ["Dinheiro"] = {
                spawnID = "money", -- SPAWN DO ITEM
                nameItem = "Dinheiro", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 170000, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "dirty_money" , amount = 200000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "l-alvejante" , amount = 20 },  
                }
            },
        }
    },

    ["Life Invader"] = { -- LAVAGEM
        armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
        isDominas = true,

        craft = {
            ["Dinheiro"] = {
                spawnID = "money", -- SPAWN DO ITEM
                nameItem = "Dinheiro", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 170000, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "dirty_money" , amount = 200000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "l-alvejante" , amount = 20 },  
                }
            },
        }
    },

    ["Furious"] = { -- DESMANCHE
       armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
       weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
       isDominas = true,

        craft = {
            ["Lockpick"] = {
                spawnID = "lockpick", -- SPAWN DO ITEM
                nameItem = "Lockpick", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 2, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "ferro" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "aluminio" , amount = 25 },  
                }
            },
        }
    },

    ["Japao"] = { -- DESMANCHE
       armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
       weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
       isDominas = true,

        craft = {
            ["Lockpick"] = {
                spawnID = "lockpick", -- SPAWN DO ITEM
                nameItem = "Lockpick", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 2, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "ferro" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "aluminio" , amount = 25 },  
                }
            },
        }
    },

    ["Grecia"] = { -- DESMANCHE
        armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
        isDominas = true,

        craft = {
            ["Lockpick"] = {
                spawnID = "lockpick", -- SPAWN DO ITEM
                nameItem = "Lockpick", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 2, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "ferro" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "aluminio" , amount = 25 },  
                }
            },
        }
    },

    ["Elements"] = { -- DESMANCHE
       armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
       weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
       isDominas = true,

        craft = {
            ["Lockpick"] = {
                spawnID = "lockpick", -- SPAWN DO ITEM
                nameItem = "Lockpick", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 2, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "ferro" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "aluminio" , amount = 25 },  
                }
            },
        }
    },

    ["Turquia"] = { -- DESMANCHE
       armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
       weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
       isDominas = true,

        craft = {
            ["Lockpick"] = {
                spawnID = "lockpick", -- SPAWN DO ITEM
                nameItem = "Lockpick", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 2, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "ferro" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "aluminio" , amount = 25 },  
                }
            },
        }
    },

    ["Roxos"] = { -- DESMANCHE
        armazem = true, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "1020844110610968648/qE2zYcJ0mRUvNLeCMuWIHCtAQUY4ta1jXQxxoC7CFefKxUzG0kZP5KvktC11QAJk8eS8", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]
        isDominas = true,

        craft = {
            ["Lockpick"] = {
                spawnID = "lockpick", -- SPAWN DO ITEM
                nameItem = "Lockpick", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < > ]
                customAmount = 2, -- Caso queira colocar um valor x por unidade.
                tempo = 7, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "ferro" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "aluminio" , amount = 25 },  
                }
            },
        }
    },
}

config.craftLocations = { 
    [1] = { type = "Dominacao [ARMAS]", perm = "admin.permissao", isDominas = nil, coords = vec3(1212.24, -2966.98, 5.87), visible = 5.0 },
    [2] = { type = "Dominacao [MUNICAO]", perm = nil, isDominas = "Municao", coords = vec3(121.36,-3103.41,6.01), visible = 5.0 },
    [3] = { type = "Dominacao [LAVAGEM]", perm = nil, isDominas = "Lavagem", coords = vec3(-234.42,-1999.2,24.69), visible = 5.0 },
    [4] = { type = "Dominacao [DESMANCHE]", perm = nil, isDominas = "Desmanche", coords = vec3(2328.16,2570.08,46.68), visible = 5.0 },
    [5] = { type = "Maconha", perm = "novato.fac100", isDominas = nil, coords = vec3(2433.84,4969.17,42.35), visible = 5.0 },
    [6] = { type = "Cocaina", perm = "perm.cocaina", isDominas = nil, coords = vec3(2433.84,4969.17,42.35), visible = 5.0 },
    [7] = { type = "Balinha", perm = "perm.balinha", isDominas = nil, coords = vec3(2464.26,3784.61,41.03), visible = 5.0 },
    [8] = { type = "Heroina", perm = "perm.heroina", isDominas = nil, coords = vec3(1394.52,3601.75,38.95), visible = 5.0 },
    [9] = { type = "Metanfetamina", perm = "perm.metanfetamina", isDominas = nil, coords = vec3(-146.03,6301.23,25.07), visible = 5.0 },
    [10] = { type = "Opio", perm = "perm.opio", isDominas = nil, coords = vec3(557.16,2679.27,35.55), visible = 5.0 },
    [11] = { type = "Haxixe", perm = "perm.haxixe", isDominas = nil, coords = vec3(370.89,2565.33,43.52), visible = 5.0 },
}

config.armazemLocations = {
    ["Mafia03"] = { perm = "novato.fac100", coords = vec3(-1899.98, 3073.23, 32.82), visible = 1.3 }, -- ARMAS
    ["Mafia02"] = { perm = "perm.mafia02", coords = vec3(-1858.74,2060.87,135.47), visible = 1.3 }, -- ARMAS
    ["Mafia01"] = { perm = "perm.mafia01", coords = vec3(406.67,2.71,84.93), visible = 1.3 }, -- ARMAS
    ["Croacia"] = { perm = "perm.croacia", coords = vec3(2114.83,-61.45,255.42), visible = 1.3 }, -- ARMAS
    ["Egito"] = { perm = "perm.egito", coords = vec3(-1719.72,-231.57,57.59), visible = 1.3 }, -- ARMAS
    ["Franca"] = { perm = "perm.franca", coords = vec3(-2365.94,1744.15,215.48), visible = 1.3 }, -- ARMAS
    ["Anonymous"] = { perm = "perm.anonymous", coords = vec3(-1553.7,81.12,53.87), visible = 1.3 }, -- ARMAS

    ["Yakuza"] = { perm = "perm.yakuza", coords = vec3(-1047.04,302.82,62.22), visible = 1.3 }, -- MUNICAO
    ["China"] = { perm = "perm.china", coords = vec3(1246.21,-171.74,90.73), visible = 1.3 }, -- MUNICAO
    ["Bratva"] = { perm = "perm.bratva", coords = vec3(-2674.25,1326.29,140.89), visible = 1.3 }, -- MUNICAO
    ["Cartel"] = { perm = "perm.cartel", coords = vec3(1485.04,1127.82,114.34), visible = 1.3 }, -- MUNICAO
    ["Triade"] = { perm = "perm.triade", coords = vec3(-902.73,-1445.96,7.53), visible = 1.3 }, -- MUNICAO


    ["Vanilla"] = { perm = "perm.vanilla", coords = vec3(108.76,-1304.46,28.8), visible = 1.3 }, -- LAVAGEM
    ["Bahamas"] = { perm = "perm.bahamas", coords = vec3(-1381.81,-618.52,30.82), visible = 1.3 }, -- LAVAGEM
    ["Cassino"] = { perm = "perm.cassino", coords = vec3(961.76,39.39,71.86), visible = 1.3 }, -- LAVAGEM
    ["Galaxy"] = { perm = "perm.galaxy", coords = vec3(-226.46,-294.11,29.26), visible = 1.3 }, -- LAVAGEM
    ["Life Invader"] = { perm = "perm.lifeinvader", coords = vec3(-1062.81,-250.1,44.03), visible = 1.3 }, -- LAVAGEM

    ["Furious"] = { perm = "perm.furious", coords = vec3(977.07,-103.86,74.85), visible = 1.3 }, -- DESMANCHE
    ["Japao"] = { perm = "perm.japao", coords = vec3(479.32,-1326.61,29.21), visible = 1.3 }, -- DESMANCHE
    ["Elements"] = { perm = "perm.elements", coords = vec3(-141.85,-1609.03,35.04), visible = 1.3 }, -- DESMANCHE
    ["Turquia"] = { perm = "perm.turquia", coords = vec3(1398.82,-740.81,68.25), visible = 1.3 }, -- DESMANCHE
    ["Roxos"] = { perm = "perm.roxos", coords = vec3(92.43,-1982.1,20.46), visible = 1.3 }, -- DESMANCHE
    ["Grecia"] = { perm = "perm.grecia", coords = vec3(-352.91,-1538.24,27.73), visible = 1.3 }, -- DESMANCHE
}

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
src.checkPermission = function(permission)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if permission == nil then
            return true
        end

        if vRP.hasPermission(user_id, permission) then
            return true
        end

        return false
    end
end

src.checkDominacao = function(zona)
    local checkBancada = trafico.checarOrg(source, zona)

    if not checkBancada then
        return
    end

    return true
end

src.getItemName = function(item)
    return vRP.getItemName(item)
end

src.giveInventoryItem = function(user_id, item, amount)
    vRP.giveInventoryItem(user_id, item, amount, true)
end

src.getInventoryItemAmount = function(user_id, item)
    return vRP.getInventoryItemAmount(user_id, item)
end

src.tryGetInventoryItem = function(user_id, item, amount)
    return vRP.tryGetInventoryItem(user_id, item, amount, true)
end

src.checkInventoryWeight = function(user_id, spawnID, amount)
    if vRP.computeInvWeight(user_id)+vRP.getItemWeight(tostring(spawnID))*parseInt(amount) > vRP.getInventoryMaxWeight(user_id) then -- CASO ESTIVER CHEIO
        return false
    end
    print("INVENTARIO CHEIO")
    print("PESO ATUAL: "..vRP.computeInvWeight(user_id))
    print("PESO ITEM: "..vRP.getItemWeight(tostring(spawnID)))
    print("PESO TOTAL: "..vRP.computeInvWeight(user_id)+vRP.getItemWeight(tostring(spawnID))*parseInt(amount))

    return true
end

src.playAnim = function(source, anim1, anim2) 
    vRPclient._playAnim(source, false,{{anim1, anim2}},true)
end

src.stopAnim = function(source) 
    vRPclient._stopAnim(source, false)
end

src.progressBar = function(user_id, time)
    local source = vRP.getUserSource(user_id)
    TriggerClientEvent("progress", source, time) -- Caso use em segundos
    -- TriggerClientEvent("progress", source, time*1000) -- Caso use em milissegundos
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LANGS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
config.lang = {
    notArmazemItem = function(source, mensagem, tipo) if tipo == "armazem" then TriggerClientEvent("Notify",source,"negado","O Armazem possui: <br>" ..mensagem, 5) else TriggerClientEvent("Notify",source,"negado","Você possui: <br>" ..mensagem, 5) end end,
    erroFabricar = function(source) TriggerClientEvent("Notify",source,"sucesso","Ocorreu um erro ao tentar fabricar esse item, tente novamente!", 5) end,
    waitCraft = function(source, segundos) TriggerClientEvent("Notify",source,"sucesso","Aguarde, <b>"..segundos.." segundo(s)</b> para continuar.", 5) end,
    armazemItens = function(source, mensagem) TriggerClientEvent("Notify",source,"importante","Itens do Armazem:<br> ".. mensagem, 15)  end,
    notArmazemItens = function(source) TriggerClientEvent("Notify",source,"importante","Esse Armazem, não possui <b>itens</b>.", 5)  end,
    notStoreItens = function(source) TriggerClientEvent("Notify",source,"importante","Você não possui itens que possa ser guardado no armazem.", 5)  end,
    storeItens = function(source, mensagem) TriggerClientEvent("Notify",source,"importante","Você guardou:<br> "..mensagem, 5)  end,
    backpackFull = function(source) TriggerClientEvent("Notify",source,"negado","Sua Mochila está cheia", 5)  end,
    fabricandoItem = function(source) TriggerClientEvent("Notify",source,"negado","Aguarde, Você ja está fabricando um item.", 5)  end,
}