Config = {}



Config.isCreative = false -- É BASE CREATIVE

-- [[ NOTIFICAÇÕES]] --------------------------------------
Config.Notify_Event = "Notify"
Config.Notify_Sucesso = "sucesso"
Config.Notify_Aviso = "aviso"
Config.Notify_Importante = "importante"
Config.Notify_Negado = "negado"

-- [[ CONFIG ]] --------------------------------------

Config.tabletComando = "tabletcontrato" -- COMANDO PARA ABRIR O TABLET

Config.tabletUsarBlockList = true -- CASO QUERIA TER AS BLOCK LIST ATIVA NO SCIPT
Config.tabletDiasBlockList = 3 -- DIAS QUE A PESSOA ESTÁ NA BLOCKLIST DE SETAGEM
Config.tabletBlockListDB = "vRP:pth_tablet_contratacao_group_blocklist" -- NOME DA LINHA QUE FICA NO BANCO DE DADOS ( tabela: vrp_user_data )

Config.tabletPermissoes = {
    ["Gerentebennys.permissao"] = { -- PERMISSÃO QUE TERÁ ACESSO A DAR OS CARGOS ABAIXO
        nome = "mecanico", -- TITULO DA CAIXA DE GRUPOS (NO NUI)
        grupos = {
            [1] = { 
                title = "Mecanico Chefe", -- TITULO DA SUB CAIXA DE CARGOS (CASO SO TENHA 1 LISTA DE SUBCARGOS, O TITULO SERÁ O ACIMA)
                cargos = {
                    [1] = {
                        group = "custom01", -- GRUPO DE SETAGEM
                        title = "Mecanico Chefe", -- LEGENDA DO GRUPO
                        blocklist = false -- SE APLICA BLOCKLIST OU NÃO
                    },  -- 
                    [2] = {group = "custom00", title = "Mecanico Aprendiz", blocklist = false},
                },
            }
        }
    },
    ["coronelrota.permissao"] = { -- PERMISSÃO QUE TERÁ ACESSO A DAR OS CARGOS ABAIXO
        nome = "coronelrota", -- TITULO DA CAIXA DE GRUPOS (NO NUI)
        grupos = {
            [1] = { 
                title = "ROTA", -- TITULO DA SUB CAIXA DE CARGOS (CASO SO TENHA 1 LISTA DE SUBCARGOS, O TITULO SERÁ O ACIMA)
                cargos = {
                    [1] = {
                        group = "coronelrota", -- GRUPO DE SETAGEM
                        title = "Coronel ROTA", -- LEGENDA DO GRUPO
                        blocklist = false -- SE APLICA BLOCKLIST OU NÃO
                    },  -- 
                    [2] = {group = "tenentecoronelrota", title = "Tenente Coronel ROTA", blocklist = false},
                    [3] = {group = "majorrota", title = "Major ROTA", blocklist = false},
                    [4] = {group = "capitaorota", title = "Capitao ROTA", blocklist = false},
                    [5] = {group = "primeirotenenterota", title = "Primeiro Tenente ROTA", blocklist = false},
                    [6] = {group = "segundotenenterota", title = "Segundo Tenente ROTA", blocklist = false},
                    [7] = {group = "subitenenterota", title = "Subi Tenente ROTA", blocklist = false},
                    [8] = {group = "primeirosargentorota", title = "Primeiro Sargento ROTA", blocklist = false},
                    [9] = {group = "segundosargentorota", title = "Segundo Sargento ROTA", blocklist = false},
                    [10] = {group = "terceirosargentorota", title = "Terceiro Sargento ROTA", blocklist = false},
                    [11] = {group = "caborota", title = "Cabo ROTA", blocklist = false},
                    [12] = {group = "soldadorota", title = "Soldado ROTA", blocklist = false},
                },
            }
        }
    },
    ["coronel.permissao"] = { -- PERMISSÃO QUE TERÁ ACESSO A DAR OS CARGOS ABAIXO
        nome = "Coronel", -- TITULO DA CAIXA DE GRUPOS (NO NUI)
        grupos = {
            [1] = { 
                title = "Policia SP", -- TITULO DA SUB CAIXA DE CARGOS (CASO SO TENHA 1 LISTA DE SUBCARGOS, O TITULO SERÁ O ACIMA)
                cargos = {
                    [1] = {
                        group = "coronel", -- GRUPO DE SETAGEM
                        title = "Coronel", -- LEGENDA DO GRUPO
                        blocklist = false -- SE APLICA BLOCKLIST OU NÃO
                    },  -- 
                    [2] = {group = "tenentecoronel", title = "Tenente Coronel", blocklist = false},
                    [3] = {group = "major", title = "Major", blocklist = false},
                    [4] = {group = "capitao", title = "Capitão", blocklist = false},
                    [5] = {group = "primeirotenente", title = "Primeiro Tenente", blocklist = false},
                    [6] = {group = "segundotenente", title = "Segundo Tenente", blocklist = false},
                    [7] = {group = "aspiranteaoficial", title = "Aspirante a Oficial", blocklist = false},
                    [8] = {group = "subitenente", title = "Subi Tenente", blocklist = false},
                    [9] = {group = "primeirosargento", title = "Primeiro Sargento", blocklist = false},
                    [10] = {group = "segundosargento", title = "Segundo Sargento", blocklist = false},
                    [11] = {group = "terceirosargento", title = "Terceiro Sargento", blocklist = false},
                    [12] = {group = "cabo", title = "Cabo", blocklist = false},
                    [13] = {group = "soldado", title = "Soldado", blocklist = false},
                },
            }
        }
    },
     ["paramedico.permissao"] = { -- PERMISSÃO QUE TERÁ ACESSO A DAR OS CARGOS ABAIXO
        nome = "diretor", -- TITULO DA CAIXA DE GRUPOS (NO NUI)
        grupos = {
            [1] = { 
                title = "hospital", -- TITULO DA SUB CAIXA DE CARGOS (CASO SO TENHA 1 LISTA DE SUBCARGOS, O TITULO SERÁ O ACIMA)
                cargos = {
                    [1] = {
                        group = "diretor", -- GRUPO DE SETAGEM
                        title = "Diretor Hospital", -- LEGENDA DO GRUPO
                        blocklist = false -- SE APLICA BLOCKLIST OU NÃO
                    },  -- 
                    [2] = {group = "medico", title = "Medico", blocklist = false},
                    [3] = {group = "paramedico", title = "Paramedico", blocklist = false},
                },
            }
        }
    },
    ["taxistachefe.permissao"] = {
        nome = "Taxistachefe",
        grupos = {
            [1] = { 
                title = "Taxista Chefe",
                cargos = {
                    [1] = {
                        group = "Taxistachefe", -- GRUPO DE SETAGEM
                        title = "Taxista Chefe", -- LEGENDA DO GRUPO
                        blocklist = false -- SE APLICA BLOCKLIST OU NÃO
                    },  -- 
                    [2] = {group = "Taxista", title = "Taxista", blocklist = false},
                },
            }
        }
    },
    ["motoclublider.permissao"] = {
        nome = "Motoclublider",
        grupos = {
            [1] = { 
                title = "Motoclub Lider",
                cargos = {
                    [1] = {
                        group = "Motoclublider", -- GRUPO DE SETAGEM
                        title = "Motoclub Lider", -- LEGENDA DO GRUPO
                        blocklist = false -- SE APLICA BLOCKLIST OU NÃO
                    },  -- 
                    [2] = {group = "Motoclub", title = "Motoclub", blocklist = false},
                },
            }
        }
    },
    ["pcclider.permissao"] = {
        nome = "pcclider",
        grupos = {
            [1] = { 
                title = "P.C.C Lider",
                cargos = {
                    [1] = {
                        group = "pcclider", -- GRUPO DE SETAGEM
                        title = "P.C.C Lider", -- LEGENDA DO GRUPO
                        blocklist = false -- SE APLICA BLOCKLIST OU NÃO
                    },  -- 
                    [2] = {group = "pcc", title = "P.C.C", blocklist = false},
                },
            }
        }
    },
    ["okaidalider.permissao"] = {
        nome = "Okaidalider",
        grupos = {
            [1] = { 
                title = "Okaida Lider",
                cargos = {
                    [1] = {
                        group = "Okaidalider", -- GRUPO DE SETAGEM
                        title = "Okaida Lider", -- LEGENDA DO GRUPO
                        blocklist = false -- SE APLICA BLOCKLIST OU NÃO
                    },  -- 
                    [2] = {group = "Okaida", title = "Okaida", blocklist = false},
                },
            }
        }
    },
    ["tcplider.permissao"] = {
        nome = "tcplider",
        grupos = {
            [1] = { 
                title = "T.C.P Lider",
                cargos = {
                    [1] = {
                        group = "tcplider", -- GRUPO DE SETAGEM
                        title = "T.C.P Lider", -- LEGENDA DO GRUPO
                        blocklist = false -- SE APLICA BLOCKLIST OU NÃO
                    },  -- 
                    [2] = {group = "tcp", title = "T.C.P", blocklist = false},
                },
            }
        }
    },
    ["cvlider.permissao"] = {
        nome = "cvlider",
        grupos = {
            [1] = { 
                title = "C.V Lider",
                cargos = {
                    [1] = {
                        group = "cvlider", -- GRUPO DE SETAGEM
                        title = "C.V Lider", -- LEGENDA DO GRUPO
                        blocklist = false -- SE APLICA BLOCKLIST OU NÃO
                    },  -- 
                    [2] = {group = "cv", title = "C.V", blocklist = false},
                },
            }
        }
    },
    ["adalider.permissao"] = {
        nome = "A.D.A Lider",
        grupos = {
            [1] = { 
                title = "A.D.A Lider",
                cargos = {
                    [1] = {
                        group = "adalider", -- GRUPO DE SETAGEM
                        title = "A.D.A Lider", -- LEGENDA DO GRUPO
                        blocklist = false -- SE APLICA BLOCKLIST OU NÃO
                    },  -- 
                    [2] = {group = "ada", title = "A.D.A", blocklist = false},
                },
            }
        }
    },
    ["mafialider.permissao"] = {
        nome = "Mafia Lider",
        grupos = {
            [1] = { 
                title = "Mafia Lider",
                cargos = {
                    [1] = {
                        group = "Mafialider", -- GRUPO DE SETAGEM
                        title = "Mafia Lider", -- LEGENDA DO GRUPO
                        blocklist = false -- SE APLICA BLOCKLIST OU NÃO
                    },  -- 
                    [2] = {group = "Mafia", title = "Mafia", blocklist = false},
                },
            }
        }
    },
    ["milicialider.permissao"] = {
        nome = "Milicia Lider",
        grupos = {
            [1] = { 
                title = "Milicia Lider",
                cargos = {
                    [1] = {
                        group = "Milicialider", -- GRUPO DE SETAGEM
                        title = "Milicia Lider", -- LEGENDA DO GRUPO
                        blocklist = false -- SE APLICA BLOCKLIST OU NÃO
                    },  -- 
                    [2] = {group = "Milicia", title = "Milicia", blocklist = false},
                },
            }
        }
    },
    ["vanillalider.permissao"] = {
        nome = "Vanilla Lider",
        grupos = {
            [1] = { 
                title = "Vanilla Lider",
                cargos = {
                    [1] = {
                        group = "Vanillalider", -- GRUPO DE SETAGEM
                        title = "Vanilla Lider", -- LEGENDA DO GRUPO
                        blocklist = false -- SE APLICA BLOCKLIST OU NÃO
                    },  -- 
                    [2] = {group = "Vanilla", title = "Vanilla", blocklist = false},
                },
            }
        }
    },
    ["owner.permissao"] = {
        nome = "STAFF",
        grupos = {
            [1] = { 
                title = "VIPS",
                cargos = {
                    [1] = {group = "Ouro", title = "Vip Ouro", blocklist = false}, 
                    [2] = {group = "Prata", title = "Vip Prata", blocklist = false}, 
                    [3] = {group = "Bronze", title = "Vip Bronze", blocklist = false},
                    [4] = {group = "Diamante", title = "Vip Diamante", blocklist = false},
                    [5] = {group = "Ruby", title = "Vip Ruby", blocklist = false}, 
                    [6] = {group = "Supremo", title = "Vip Supremo", blocklist = false}, 
                },
            },
            [2] = { 
                title = "POLICIA ROTA",
                cargos = {
                    [1] = {group = "tenentecoronelrota", title = "Tenente Coronel ROTA", blocklist = false},
                    [2] = {group = "majorrota", title = "Major ROTA", blocklist = false},
                    [3] = {group = "capitaorota", title = "Capitao ROTA", blocklist = false},
                    [4] = {group = "primeirotenenterota", title = "Primeiro Tenente ROTA", blocklist = false},
                    [5] = {group = "segundotenenterota", title = "Segundo Tenente ROTA", blocklist = false},
                    [6] = {group = "subitenenterota", title = "Subi Tenente ROTA", blocklist = false},
                    [7] = {group = "primeirosargentorota", title = "Primeiro Sargento ROTA", blocklist = false},
                    [8] = {group = "segundosargentorota", title = "Segundo Sargento ROTA", blocklist = false},
                    [9] = {group = "terceirosargentorota", title = "Terceiro Sargento ROTA", blocklist = false},
                    [10] = {group = "caborota", title = "Cabo ROTA", blocklist = false},
                    [11] = {group = "soldadorota", title = "Soldado ROTA", blocklist = false},
                },
            },
            [3] = { 
                title = "POLICIA MILITAR",
                cargos = {
                    [1] = {group = "tenentecoronel", title = "Tenente Coronel", blocklist = false},
                    [2] = {group = "major", title = "Major", blocklist = false},
                    [3] = {group = "capitao", title = "Capitão", blocklist = false},
                    [4] = {group = "primeirotenente", title = "Primeiro Tenente", blocklist = false},
                    [5] = {group = "segundotenente", title = "Segundo Tenente", blocklist = false},
                    [6] = {group = "aspiranteaoficial", title = "Aspirante a Oficial", blocklist = false},
                    [7] = {group = "subitenente", title = "Subi Tenente", blocklist = false},
                    [8] = {group = "primeirosargento", title = "Primeiro Sargento", blocklist = false},
                    [9] = {group = "segundosargento", title = "Segundo Sargento", blocklist = false},
                    [10] = {group = "terceirosargento", title = "Terceiro Sargento", blocklist = false},
                    [11] = {group = "cabo", title = "Cabo", blocklist = false},
                    [12] = {group = "soldado", title = "Soldado", blocklist = false},
                },
            },
            [4] = { 
                title = "MECANICO - CARGOS",
                cargos = {
                    [1] = {group = "custom00", title = "Mecanico Aprendiz", blocklist = false},
                    [2] = {group = "custom01", title = "Mecanico Chefe", blocklist = false},
                },
            }
        }
    },
}


-- [[ LOGS HOSPITAL ]] --------------------------------------
Config.webhookTablet = "https://discord.com/api/webhooks/1333475601243439145/PE6Jqee_L5L0SQiHCT_IjXkBPit8u-XP5KBI7PrxPWuc1_EZJeVtoOeIIWPBdkkOjDeh" -- LOG ABRIR TABLET
Config.webhookTabletRemoveGrupo = "https://discord.com/api/webhooks/1333475315401621568/WEBTeSFj50FoMj2oLPYGoSohC5THHrW_wHI6LCDf3boVSI1UrkcuZc03rsj5ybSr-qKS" -- LOG DE REMOVER GRUPO DE CIDADÃO
Config.webhookTabletEditGrupos = "https://discord.com/api/webhooks/1333475873801900092/iznJSTbP7_Aw-4D7-R7_BGXh4P6Gdy8saLF322V7WI3FCeIocxplxuYwyFzxmBWUqBGu" -- LOG DE QUANDO EDITA AS PERMISSOES DO CIDADAO