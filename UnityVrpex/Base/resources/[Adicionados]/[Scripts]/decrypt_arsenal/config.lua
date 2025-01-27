config = {}
config.drawColor = {139, 2, 212, 100}

config.shops = {
    -- CONFIGURAÇÃO DA LOJA DE ITENS
    ['police'] = {
        ['Energetico'] = {
            type = 'item',
            name = 'Energético',
            price = 10000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/energetico.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'energetico') + quantity) >= 10 and
                    'limite de <b>Energéticos</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'energetico', quantity)
            end
        },
        ['KIT Reparo'] = {
            type = 'item',
            name = 'KIT Reparo',
            price = 15000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/repairkit.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'repairkit') + quantity) >= 10 and
                    'Limite de <b>KIT Reparo</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'repairkit', quantity)
            end
        },
        ['Mochila'] = {
            type = 'item',
            name = 'Mochila',
            price = 17000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/mochila.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'mochila') + quantity) >= 10 and
                    'Limite de <b>Mochilas</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'mochila', quantity)
            end
        },
        ['Celular'] = {
            type = 'item',
            name = 'Celular',
            price = 5000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/celular.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'celular') + quantity) >= 10 and
                    'Limite de <b>Celulares</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, "celular", quantity)
            end
        },
        ['Paraquedas'] = {
            type = 'item',
            name = 'Paraquedas',
            price = 6000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/parachute.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'parachute') + quantity) >= 10 and
                    'limite de <b>Paraquedas</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'parachute', quantity)
            end
        },
        ['Bandagem'] = {
            type = 'item',
            name = 'Bandagem',
            price = 20000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/bandagem.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'bandagem') + quantity) >= 10 and
                    'Limite de <b>Bandagens</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'bandagem', quantity)
            end
        },
        ['Lanterna'] = {
            type = 'item',
            name = 'Lanterna',
            price = 3000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/lanterna.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'flashlight') + quantity) >= 10 and
                    'Limite de <b>Lanternas</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'flashlight', quantity)
            end
        },
        ['Roupas'] = {
            type = 'item',
            name = 'Roupas',
            price = 3000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/roupas.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'roupas') + quantity) >= 10 and
                    'Limite de <b>Roupas</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'roupas', quantity)
            end
        },
        ['Binoculos'] = {
            type = 'item',
            name = 'Binóculos',
            price = 3000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/binoculos.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'binoculos') + quantity) >= 10 and
                    'Limite de <b>Binóculos</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'binoculos', quantity)
            end
        }
    },
    ['hospital'] = {
        ['KIT Reparo'] = {
            type = 'item',
            name = 'KIT Reparo',
            price = 15000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/repairkit.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'repairkit') + quantity) >= 10 and
                    'Limite de <b>KIT Reparo</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'repairkit', quantity)
            end
        },
        ['Mochila'] = {
            type = 'item',
            name = 'Mochila',
            price = 17000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/mochila.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'mochila') + quantity) >= 10 and
                    'Limite de <b>Mochilas</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'mochila', quantity)
            end
        },
        ['Celular'] = {
            type = 'item',
            name = 'Celular',
            price = 5000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/celular.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'celular') + quantity) >= 10 and
                    'Limite de <b>Celulares</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, "celular", quantity)
            end
        },
        ['Lanterna'] = {
            type = 'item',
            name = 'Lanterna',
            price = 3000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/lanterna.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'flashlight') + quantity) >= 10 and
                    'Limite de <b>Lanternas</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'flashlight', quantity)
            end
        },
        ['Roupas'] = {
            type = 'item',
            name = 'Roupas',
            price = 3000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/roupas.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'roupas') + quantity) >= 10 and
                    'Limite de <b>Roupas</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'roupas', quantity)
            end
        },
    },
    
    ['bombeiro'] = {
        ['KIT Reparo'] = {
            type = 'item',
            name = 'KIT Reparo',
            price = 15000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/repairkit.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'repairkit') + quantity) >= 10 and
                    'Limite de <b>KIT Reparo</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'repairkit', quantity)
            end
        },
        ['Mochila'] = {
            type = 'item',
            name = 'Mochila',
            price = 17000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/mochila.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'mochila') + quantity) >= 10 and
                    'Limite de <b>Mochilas</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'mochila', quantity)
            end
        },
        ['Celular'] = {
            type = 'item',
            name = 'Celular',
            price = 5000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/celular.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'celular') + quantity) >= 10 and
                    'Limite de <b>Celulares</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, "celular", quantity)
            end
        },
        ['Lanterna'] = {
            type = 'item',
            name = 'Lanterna',
            price = 3000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/lanterna.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'flashlight') + quantity) >= 10 and
                    'Limite de <b>Lanternas</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'flashlight', quantity)
            end
        },
        ['Roupas'] = {
            type = 'item',
            name = 'Roupas',
            price = 3000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/roupas.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'roupas') + quantity) >= 10 and
                    'Limite de <b>Roupas</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'roupas', quantity)
            end
        },
    },
    ['mecanica'] = {
        ['KIT Reparo'] = {
            type = 'item',
            name = 'KIT Reparo',
            price = 15000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/repairkit.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'repairkit') + quantity) >= 10 and
                    'Limite de <b>KIT Reparo</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'repairkit', quantity)
            end
        },
        ['Mochila'] = {
            type = 'item',
            name = 'Mochila',
            price = 17000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/mochila.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'mochila') + quantity) >= 10 and
                    'Limite de <b>Mochilas</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'mochila', quantity)
            end
        },
        ['Celular'] = {
            type = 'item',
            name = 'Celular',
            price = 5000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/celular.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'celular') + quantity) >= 10 and
                    'Limite de <b>Celulares</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, "celular", quantity)
            end
        },
        ['Lanterna'] = {
            type = 'item',
            name = 'Lanterna',
            price = 3000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/lanterna.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'flashlight') + quantity) >= 10 and
                    'Limite de <b>Lanternas</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'flashlight', quantity)
            end
        },
        ['Roupas'] = {
            type = 'item',
            name = 'Roupas',
            price = 3000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/roupas.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'roupas') + quantity) >= 10 and
                    'Limite de <b>Roupas</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'roupas', quantity)
            end
        },
    },
    ['judiciario'] = {
        ['KIT Reparo'] = {
            type = 'item',
            name = 'KIT Reparo',
            price = 15000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/repairkit.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'repairkit') + quantity) >= 10 and
                    'Limite de <b>KIT Reparo</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'repairkit', quantity)
            end
        },
        ['Mochila'] = {
            type = 'item',
            name = 'Mochila',
            price = 17000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/mochila.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'mochila') + quantity) >= 10 and
                    'Limite de <b>Mochilas</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, 'mochila', quantity)
            end
        },
        ['Celular'] = {
            type = 'item',
            name = 'Celular',
            price = 5000,
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/celular.png',
            color = '#8F00FF',
            limiter = function(source, user_id, quantity)
                return (vRP.getInventoryItemAmount(user_id, 'celular') + quantity) >= 10 and
                    'Limite de <b>Celulares</b> Excedido.' or
                    false
            end,
            callback = function(source, user_id, quantity)
                vRP.giveInventoryItem(user_id, "celular", quantity)
            end
        },
    },
}

config.itensGroups = {
    ['WEAPON_PUMPSHOTGUN_MK2'] = {
            'cmd',
            'subcmd',
            'coronelpmerj',
            'tencoronelpmerj',
            'majorpmerj',
            'capitaopmerj',

            'delegadocivil',
            'delegadoadjcivil',
            'coordenadorcivil',
            'inspetorcivil',

            'delegadoprf',
            'delegadoadjprf',
            'coordenadorprf',
            'inspetorprf',
    ------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------ELITES--------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------
            'coronelbope',
            'tcoronelbope',
            'majorbope',
            'capitaobope',
            '1tenetebope',
            '2tenentebope',

            'coronelcoe',
            'tcoronelcoe',
            'majorcoe',
            'capitaocoe',
            '1tenetecoe',
            '2tenentecoe',

            'coronelchoque',
            'tcoronelchoque',
            'majorchoque',
            'capitaochoque',
            '1tenetechoque',
            '2tenentechoque',

            'coronelgam',
            'tcoronelgam',
            'majorgam',
            'capitaogam',
            '1tenetegam',
            '2tenentegam',

            'delegadocore',
            'delegadoadjcore',
            'coordenadorcore',
            'peritocriminalcore',
            'inspetorcore',
            'investigadorcore',

            'delegadogrr',
            'delegadoadjgrr',
            'coordenadorgrr',
            'inspetorgrr',
    },


    ['WEAPON_STUNGUN'] = {
            'cmd',
            'subcmd',
            'coronelpmerj',
            'tencoronelpmerj',
            'majorpmerj',
            'capitaopmerj',
            '1tenetepmerj',
            '2tenentepmerj',
            'aspirantepmerj',
            'subtenentepmerj',
            '1sargentopmerj',
            '2sargentopmerj',
            '3sargentopmerj',
            'cabopmerj',
            'soldadopmerj',
            'recrutapmerj',

            'delegadocivil',
            'delegadoadjcivil',
            'coordenadorcivil',
            'peritocriminalcivil',
            'inspetorcivil',
            'investigadorcivil',
            'agenteespecialcivil',
            'agente1civil',
            'agente2civil',
            'agente3civil',
            'agentecivil',
            'acadepolcivil',

            'delegadoprf',
            'delegadoadjprf',
            'coordenadorprf',
            'inspetorprf',
            'agenteespecialprf',
            'agente1prf',
            'agente2prf',
            'agente3prf',
            'agenteprf',
            'alunoprf',

	------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------ELITES--------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------
            'coronelbope',
            'tcoronelbope',
            'majorbope',
            'capitaobope',
            '1tenetebope',
            '2tenentebope',
            'aspirantebope',
            'subtenentebope',
            '1sargentobope',
            '2sargentobope',
            '3sargentobope',
            'cabobope',
            'soldadobope',
            'recrutabope',

            'coronelcoe',
            'tcoronelcoe',
            'majorcoe',
            'capitaocoe',
            '1tenetecoe',
            '2tenentecoe',
            'aspirantecoe',
            'subtenentecoe',
            '1sargentocoe',
            '2sargentocoe',
            '3sargentocoe',
            'cabocoe',
            'soldadocoe',
            'recrutacoe',

            'coronelchoque',
            'tcoronelchoque',
            'majorchoque',
            'capitaochoque',
            '1tenetechoque',
            '2tenentechoque',
            'aspirantechoque',
            'subtenentechoque',
            '1sargentochoque',
            '2sargentochoque',
            '3sargentochoque',
            'cabochoque',
            'soldadochoque',
            'recrutachoque',

            'coronelgam',
            'tcoronelgam',
            'majorgam',
            'capitaogam',
            '1tenetegam',
            '2tenentegam',
            'aspirantegam',
            'subtenentegam',
            '1sargentogam',
            '2sargentogam',
            '3sargentogam',
            'cabogam',
            'soldadogam',
            'recrutagam',

            'delegadocore',
            'delegadoadjcore',
            'coordenadorcore',
            'peritocriminalcore',
            'inspetorcore',
            'investigadorcore',
            'agenteespecialcore',
            'agente1core',
            'agente2core',
            'agente3core',
            'agentecore',
            'acadepolcore',

            'delegadogrr',
            'delegadoadjgrr',
            'coordenadorgrr',
            'inspetorgrr',
            'agenteespecialgrr',
            'agente1grr',
            'agente2grr',
            'agente3grr',
            'agentegrr',
            'alunogrr',

            --[ HOSPITAL ]--

            'enfermeirochefehp',
            'enfermeirohp',
            'medicohp',
            'medicochefehp',
            'auxdiretorhp',
            'vicediretorhp',
            'diretorhp',
            'coodageralhp',
            'coodgeralhp',
    },

    ['WEAPON_COMBATPISTOL'] = {
            'cmd',
            'subcmd',
            'coronelpmerj',
            'tencoronelpmerj',
            'majorpmerj',
            'capitaopmerj',
            '1tenetepmerj',
            '2tenentepmerj',
            'aspirantepmerj',
            'subtenentepmerj',
            '1sargentopmerj',
            '2sargentopmerj',
            '3sargentopmerj',
            'cabopmerj',
            'soldadopmerj',
            'recrutapmerj',

            'delegadocivil',
            'delegadoadjcivil',
            'coordenadorcivil',
            'peritocriminalcivil',
            'inspetorcivil',
            'investigadorcivil',
            'agenteespecialcivil',
            'agente1civil',
            'agente2civil',
            'agente3civil',
            'agentecivil',
            'acadepolcivil',

            'delegadoprf',
            'delegadoadjprf',
            'coordenadorprf',
            'inspetorprf',
            'agenteespecialprf',
            'agente1prf',
            'agente2prf',
            'agente3prf',
            'agenteprf',
            'alunoprf',

	------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------ELITES--------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------
            'coronelbope',
            'tcoronelbope',
            'majorbope',
            'capitaobope',
            '1tenetebope',
            '2tenentebope',
            'aspirantebope',
            'subtenentebope',
            '1sargentobope',
            '2sargentobope',
            '3sargentobope',
            'cabobope',
            'soldadobope',
            'recrutabope',

            'coronelcoe',
            'tcoronelcoe',
            'majorcoe',
            'capitaocoe',
            '1tenetecoe',
            '2tenentecoe',
            'aspirantecoe',
            'subtenentecoe',
            '1sargentocoe',
            '2sargentocoe',
            '3sargentocoe',
            'cabocoe',
            'soldadocoe',
            'recrutacoe',

            'coronelchoque',
            'tcoronelchoque',
            'majorchoque',
            'capitaochoque',
            '1tenetechoque',
            '2tenentechoque',
            'aspirantechoque',
            'subtenentechoque',
            '1sargentochoque',
            '2sargentochoque',
            '3sargentochoque',
            'cabochoque',
            'soldadochoque',
            'recrutachoque',

            'coronelgam',
            'tcoronelgam',
            'majorgam',
            'capitaogam',
            '1tenetegam',
            '2tenentegam',
            'aspirantegam',
            'subtenentegam',
            '1sargentogam',
            '2sargentogam',
            '3sargentogam',
            'cabogam',
            'soldadogam',
            'recrutagam',

            'delegadocore',
            'delegadoadjcore',
            'coordenadorcore',
            'peritocriminalcore',
            'inspetorcore',
            'investigadorcore',
            'agenteespecialcore',
            'agente1core',
            'agente2core',
            'agente3core',
            'agentecore',
            'acadepolcore',

            'delegadogrr',
            'delegadoadjgrr',
            'coordenadorgrr',
            'inspetorgrr',
            'agenteespecialgrr',
            'agente1grr',
            'agente2grr',
            'agente3grr',
            'agentegrr',
            'alunogrr',
    },

    ['WEAPON_COMBATPDW'] = {
            'cmd',
            'subcmd',
            'coronelpmerj',
            'tencoronelpmerj',
            'majorpmerj',
            'capitaopmerj',
            '1tenetepmerj',
            '2tenentepmerj',
            'aspirantepmerj',
            'subtenentepmerj',
            '1sargentopmerj',
            '2sargentopmerj',
            '3sargentopmerj',
            'cabopmerj',

            'delegadocivil',
            'delegadoadjcivil',
            'coordenadorcivil',
            'peritocriminalcivil',
            'inspetorcivil',
            'investigadorcivil',
            'agenteespecialcivil',
            'agente1civil',
            'agente2civil',
            'agente3civil',

            'delegadoprf',
            'delegadoadjprf',
            'coordenadorprf',
            'inspetorprf',
            'agenteespecialprf',
            'agente1prf',
            'agente2prf',
            'agente3prf',

	------------------------------------------------------------------------------------------------------------------
	-----------------------------------------------------ELITES--------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------
            'coronelbope',
            'tcoronelbope',
            'majorbope',
            'capitaobope',
            '1tenetebope',
            '2tenentebope',
            'aspirantebope',
            'subtenentebope',
            '1sargentobope',
            '2sargentobope',
            '3sargentobope',
            'cabobope',
            'soldadobope',
            'recrutabope',

            'coronelcoe',
            'tcoronelcoe',
            'majorcoe',
            'capitaocoe',
            '1tenetecoe',
            '2tenentecoe',
            'aspirantecoe',
            'subtenentecoe',
            '1sargentocoe',
            '2sargentocoe',
            '3sargentocoe',
            'cabocoe',
            'soldadocoe',
            'recrutacoe',

            'coronelchoque',
            'tcoronelchoque',
            'majorchoque',
            'capitaochoque',
            '1tenetechoque',
            '2tenentechoque',
            'aspirantechoque',
            'subtenentechoque',
            '1sargentochoque',
            '2sargentochoque',
            '3sargentochoque',
            'cabochoque',
            'soldadochoque',
            'recrutachoque',

            'coronelgam',
            'tcoronelgam',
            'majorgam',
            'capitaogam',
            '1tenetegam',
            '2tenentegam',
            'aspirantegam',
            'subtenentegam',
            '1sargentogam',
            '2sargentogam',
            '3sargentogam',
            'cabogam',
            'soldadogam',
            'recrutagam',

            'delegadocore',
            'delegadoadjcore',
            'coordenadorcore',
            'peritocriminalcore',
            'inspetorcore',
            'investigadorcore',
            'agenteespecialcore',
            'agente1core',
            'agente2core',
            'agente3core',
            'agentecore',
            'acadepolcore',

            'delegadogrr',
            'delegadoadjgrr',
            'coordenadorgrr',
            'inspetorgrr',
            'agenteespecialgrr',
            'agente1grr',
            'agente2grr',
            'agente3grr',
            'agentegrr',
            'alunogrr',
    },
    ['WEAPON_SMG'] = {
        'cmd',
        'subcmd',
        'coronelpmerj',
        'tencoronelpmerj',
        'majorpmerj',
        'capitaopmerj',
        '1tenetepmerj',
        '2tenentepmerj',
        'aspirantepmerj',
        'subtenentepmerj',
        '1sargentopmerj',
        '2sargentopmerj',
        '3sargentopmerj',
        'cabopmerj',
        'soldadopmerj',

        'delegadocivil',
        'delegadoadjcivil',
        'coordenadorcivil',
        'peritocriminalcivil',
        'inspetorcivil',
        'investigadorcivil',
        'agenteespecialcivil',
        'agente1civil',
        'agente2civil',
        'agente3civil',
        'agentecivil',

        'delegadoprf',
        'delegadoadjprf',
        'coordenadorprf',
        'inspetorprf',
        'agenteespecialprf',
        'agente1prf',
        'agente2prf',
        'agente3prf',
        'agenteprf',

    ------------------------------------------------------------------------------------------------------------------
    -----------------------------------------------------ELITES--------------------------------------------------------
    ------------------------------------------------------------------------------------------------------------------
        'coronelbope',
        'tcoronelbope',
        'majorbope',
        'capitaobope',
        '1tenetebope',
        '2tenentebope',
        'aspirantebope',
        'subtenentebope',
        '1sargentobope',
        '2sargentobope',
        '3sargentobope',
        'cabobope',
        'soldadobope',
        'recrutabope',

        'coronelcoe',
        'tcoronelcoe',
        'majorcoe',
        'capitaocoe',
        '1tenetecoe',
        '2tenentecoe',
        'aspirantecoe',
        'subtenentecoe',
        '1sargentocoe',
        '2sargentocoe',
        '3sargentocoe',
        'cabocoe',
        'soldadocoe',
        'recrutacoe',

        'coronelchoque',
        'tcoronelchoque',
        'majorchoque',
        'capitaochoque',
        '1tenetechoque',
        '2tenentechoque',
        'aspirantechoque',
        'subtenentechoque',
        '1sargentochoque',
        '2sargentochoque',
        '3sargentochoque',
        'cabochoque',
        'soldadochoque',
        'recrutachoque',

        'coronelgam',
        'tcoronelgam',
        'majorgam',
        'capitaogam',
        '1tenetegam',
        '2tenentegam',
        'aspirantegam',
        'subtenentegam',
        '1sargentogam',
        '2sargentogam',
        '3sargentogam',
        'cabogam',
        'soldadogam',
        'recrutagam',

        'delegadocore',
        'delegadoadjcore',
        'coordenadorcore',
        'peritocriminalcore',
        'inspetorcore',
        'investigadorcore',
        'agenteespecialcore',
        'agente1core',
        'agente2core',
        'agente3core',
        'agentecore',
        'acadepolcore',

        'delegadogrr',
        'delegadoadjgrr',
        'coordenadorgrr',
        'inspetorgrr',
        'agenteespecialgrr',
        'agente1grr',
        'agente2grr',
        'agente3grr',
        'agentegrr',
        'alunogrr'
    },
    ['WEAPON_SCORPIONEVO'] = {
        'cmd',
        'subcmd',
        'coronelpmerj',
        'tencoronelpmerj',
        'majorpmerj',
        'capitaopmerj',
        '1tenetepmerj',
        '2tenentepmerj',
        'aspirantepmerj',
        'subtenentepmerj',
        '1sargentopmerj',
        '2sargentopmerj',
        '3sargentopmerj',
        'cabopmerj',
        'soldadopmerj',

        'delegadocivil',
        'delegadoadjcivil',
        'coordenadorcivil',
        'peritocriminalcivil',
        'inspetorcivil',
        'investigadorcivil',
        'agenteespecialcivil',
        'agente1civil',
        'agente2civil',
        'agente3civil',
        'agentecivil',

        'delegadoprf',
        'delegadoadjprf',
        'coordenadorprf',
        'inspetorprf',
        'agenteespecialprf',
        'agente1prf',
        'agente2prf',
        'agente3prf',
        'agenteprf',

    ------------------------------------------------------------------------------------------------------------------
    -----------------------------------------------------ELITES--------------------------------------------------------
    ------------------------------------------------------------------------------------------------------------------
        'coronelbope',
        'tcoronelbope',
        'majorbope',
        'capitaobope',
        '1tenetebope',
        '2tenentebope',
        'aspirantebope',
        'subtenentebope',
        '1sargentobope',
        '2sargentobope',
        '3sargentobope',
        'cabobope',
        'soldadobope',
        'recrutabope',

        'coronelcoe',
        'tcoronelcoe',
        'majorcoe',
        'capitaocoe',
        '1tenetecoe',
        '2tenentecoe',
        'aspirantecoe',
        'subtenentecoe',
        '1sargentocoe',
        '2sargentocoe',
        '3sargentocoe',
        'cabocoe',
        'soldadocoe',
        'recrutacoe',

        'coronelchoque',
        'tcoronelchoque',
        'majorchoque',
        'capitaochoque',
        '1tenetechoque',
        '2tenentechoque',
        'aspirantechoque',
        'subtenentechoque',
        '1sargentochoque',
        '2sargentochoque',
        '3sargentochoque',
        'cabochoque',
        'soldadochoque',
        'recrutachoque',

        'coronelgam',
        'tcoronelgam',
        'majorgam',
        'capitaogam',
        '1tenetegam',
        '2tenentegam',
        'aspirantegam',
        'subtenentegam',
        '1sargentogam',
        '2sargentogam',
        '3sargentogam',
        'cabogam',
        'soldadogam',
        'recrutagam',

        'delegadocore',
        'delegadoadjcore',
        'coordenadorcore',
        'peritocriminalcore',
        'inspetorcore',
        'investigadorcore',
        'agenteespecialcore',
        'agente1core',
        'agente2core',
        'agente3core',
        'agentecore',
        'acadepolcore',

        'delegadogrr',
        'delegadoadjgrr',
        'coordenadorgrr',
        'inspetorgrr',
        'agenteespecialgrr',
        'agente1grr',
        'agente2grr',
        'agente3grr',
        'agentegrr',
        'alunogrr'
    },
    ['WEAPON_FAL'] = {
        'cmd',
        'subcmd',
        'coronelpmerj',
        'tencoronelpmerj',
        'majorpmerj',
        'capitaopmerj',
        'tenentepmerj',
        'aspirantepmerj',
        'subtenentepmerj',
        'sargentopmerj',

        'delegadocivil',
        'delegadoadjcivil',
        'coordenadorcivil',
        'inspetorcivil',
        'escrivaocivil',
        'investigadorcivil',
        'peritocriminalcivil',
        'agenteespecialcivil',
        'agente1civil',

        'delegadoprf',
        'delegadoadjprf',
        'coordenadorprf',
        'inspetorprf',
        'agenteespecialprf',
        'agente1prf',

    ------------------------------------------------------------------------------------------------------------------
    -----------------------------------------------------ELITES--------------------------------------------------------
    ------------------------------------------------------------------------------------------------------------------
        'coronelbope',
        'tcoronelbope',
        'majorbope',
        'capitaobope',
        '1tenetebope',
        '2tenentebope',
        'aspirantebope',
        'subtenentebope',
        '1sargentobope',
        '2sargentobope',
        '3sargentobope',
        'cabobope',
        'soldadobope',

        'coronelcoe',
        'tcoronelcoe',
        'majorcoe',
        'capitaocoe',
        '1tenetecoe',
        '2tenentecoe',
        'aspirantecoe',
        'subtenentecoe',
        '1sargentocoe',
        '2sargentocoe',
        '3sargentocoe',
        'cabocoe',
        'soldadocoe',

        'coronelchoque',
        'tcoronelchoque',
        'majorchoque',
        'capitaochoque',
        '1tenetechoque',
        '2tenentechoque',
        'aspirantechoque',
        'subtenentechoque',
        '1sargentochoque',
        '2sargentochoque',
        '3sargentochoque',
        'cabochoque',
        'soldadochoque',

        'coronelgam',
        'tcoronelgam',
        'majorgam',
        'capitaogam',
        '1tenetegam',
        '2tenentegam',
        'aspirantegam',
        'subtenentegam',
        '1sargentogam',
        '2sargentogam',
        '3sargentogam',
        'cabogam',
        'soldadogam',

        'delegadocore',
        'delegadoadjcore',
        'coordenadorcore',
        'peritocriminalcore',
        'inspetorcore',
        'investigadorcore',
        'agenteespecialcore',
        'agente1core',
        'agente2core',
        'agente3core',
        'agentecore',

        'delegadogrr',
        'delegadoadjgrr',
        'coordenadorgrr',
        'inspetorgrr',
        'agenteespecialgrr',
        'agente1grr',
        'agente2grr',
        'agente3grr',
        'agentegrr',
    },
    ['WEAPON_AR10A4'] = {
        'cmd',
        'subcmd',
        'coronelpmerj',
        'tencoronelpmerj',
        'majorpmerj',
        'capitaopmerj',
        'tenentepmerj',
        'aspirantepmerj',
        'subtenentepmerj',

        'delegadocivil',
        'delegadoadjcivil',
        'coordenadorcivil',
        'inspetorcivil',
        'escrivaocivil',
        'investigadorcivil',
        'peritocriminalcivil',

        'delegadoprf',
        'delegadoadjprf',
        'coordenadorprf',
        'inspetorprf',
        'agenteespecialprf',

    ------------------------------------------------------------------------------------------------------------------
    -----------------------------------------------------ELITES--------------------------------------------------------
    ------------------------------------------------------------------------------------------------------------------
        'coronelbope',
        'tcoronelbope',
        'majorbope',
        'capitaobope',
        '1tenetebope',
        '2tenentebope',
        'aspirantebope',
        'subtenentebope',
        '1sargentobope',
        '2sargentobope',
        '3sargentobope',

        'coronelcoe',
        'tcoronelcoe',
        'majorcoe',
        'capitaocoe',
        '1tenetecoe',
        '2tenentecoe',
        'aspirantecoe',
        'subtenentecoe',
        '1sargentocoe',
        '2sargentocoe',
        '3sargentocoe',

        'coronelchoque',
        'tcoronelchoque',
        'majorchoque',
        'capitaochoque',
        '1tenetechoque',
        '2tenentechoque',
        'aspirantechoque',
        'subtenentechoque',
        '1sargentochoque',
        '2sargentochoque',
        '3sargentochoque',

        'coronelgam',
        'tcoronelgam',
        'majorgam',
        'capitaogam',
        '1tenetegam',
        '2tenentegam',
        'aspirantegam',
        'subtenentegam',
        '1sargentogam',
        '2sargentogam',
        '3sargentogam',

        'delegadocore',
        'delegadoadjcore',
        'coordenadorcore',
        'peritocriminalcore',
        'inspetorcore',
        'investigadorcore',
        'agenteespecialcore',
        'agente1core',
        'agente2core',

        'delegadogrr',
        'delegadoadjgrr',
        'coordenadorgrr',
        'inspetorgrr',
        'agenteespecialgrr',
        'agente1grr',
        'agente2grr',
    },
    ['WEAPON_NAVYCARBINE'] = {
        'cmd',
        'subcmd',
        'coronelpmerj',
        'tencoronelpmerj',
        'majorpmerj',
        'capitaopmerj',
        'tenentepmerj',
        'aspirantepmerj',
        'subtenentepmerj',

        'delegadocivil',
        'delegadoadjcivil',
        'coordenadorcivil',
        'inspetorcivil',
        'escrivaocivil',
        'investigadorcivil',
        'peritocriminalcivil',

        'delegadoprf',
        'delegadoadjprf',
        'coordenadorprf',
        'inspetorprf',
        'agenteespecialprf',

    ------------------------------------------------------------------------------------------------------------------
    -----------------------------------------------------ELITES--------------------------------------------------------
    ------------------------------------------------------------------------------------------------------------------
        'coronelbope',
        'tcoronelbope',
        'majorbope',
        'capitaobope',
        '1tenetebope',
        '2tenentebope',
        'aspirantebope',
        'subtenentebope',
        '1sargentobope',
        '2sargentobope',
        '3sargentobope',

        'coronelcoe',
        'tcoronelcoe',
        'majorcoe',
        'capitaocoe',
        '1tenetecoe',
        '2tenentecoe',
        'aspirantecoe',
        'subtenentecoe',
        '1sargentocoe',
        '2sargentocoe',
        '3sargentocoe',

        'coronelchoque',
        'tcoronelchoque',
        'majorchoque',
        'capitaochoque',
        '1tenetechoque',
        '2tenentechoque',
        'aspirantechoque',
        'subtenentechoque',
        '1sargentochoque',
        '2sargentochoque',
        '3sargentochoque',

        'coronelgam',
        'tcoronelgam',
        'majorgam',
        'capitaogam',
        '1tenetegam',
        '2tenentegam',
        'aspirantegam',
        'subtenentegam',
        '1sargentogam',
        '2sargentogam',
        '3sargentogam',

        'delegadocore',
        'delegadoadjcore',
        'coordenadorcore',
        'peritocriminalcore',
        'inspetorcore',
        'investigadorcore',
        'agenteespecialcore',
        'agente1core',
        'agente2core',

        'delegadogrr',
        'delegadoadjgrr',
        'coordenadorgrr',
        'inspetorgrr',
        'agenteespecialgrr',
        'agente1grr',
        'agente2grr',
    },
    ['WEAPON_SCARH'] = {
        'cmd',
        'subcmd',
        'coronelpmerj',
        'tencoronelpmerj',
        'majorpmerj',
        'capitaopmerj',
        'tenentepmerj',
        'aspirantepmerj',
        'subtenentepmerj',

        'delegadocivil',
        'delegadoadjcivil',
        'coordenadorcivil',
        'inspetorcivil',
        'escrivaocivil',
        'investigadorcivil',
        'peritocriminalcivil',

        'delegadoprf',
        'delegadoadjprf',
        'coordenadorprf',
        'inspetorprf',
        'agenteespecialprf',

    ------------------------------------------------------------------------------------------------------------------
    -----------------------------------------------------ELITES--------------------------------------------------------
    ------------------------------------------------------------------------------------------------------------------
        'coronelbope',
        'tcoronelbope',
        'majorbope',
        'capitaobope',
        '1tenetebope',
        '2tenentebope',
        'aspirantebope',
        'subtenentebope',
        '1sargentobope',
        '2sargentobope',
        '3sargentobope',

        'coronelcoe',
        'tcoronelcoe',
        'majorcoe',
        'capitaocoe',
        '1tenetecoe',
        '2tenentecoe',
        'aspirantecoe',
        'subtenentecoe',
        '1sargentocoe',
        '2sargentocoe',
        '3sargentocoe',

        'coronelchoque',
        'tcoronelchoque',
        'majorchoque',
        'capitaochoque',
        '1tenetechoque',
        '2tenentechoque',
        'aspirantechoque',
        'subtenentechoque',
        '1sargentochoque',
        '2sargentochoque',
        '3sargentochoque',

        'coronelgam',
        'tcoronelgam',
        'majorgam',
        'capitaogam',
        '1tenetegam',
        '2tenentegam',
        'aspirantegam',
        'subtenentegam',
        '1sargentogam',
        '2sargentogam',
        '3sargentogam',

        'delegadocore',
        'delegadoadjcore',
        'coordenadorcore',
        'peritocriminalcore',
        'inspetorcore',
        'investigadorcore',
        'agenteespecialcore',
        'agente1core',
        'agente2core',

        'delegadogrr',
        'delegadoadjgrr',
        'coordenadorgrr',
        'inspetorgrr',
        'agenteespecialgrr',
        'agente1grr',
        'agente2grr',
    },
    ['WEAPON_CARBINERIFLE_MK2'] = {
        'cmd',
        'subcmd',
        'coronelpmerj',
        'tcoronelpmerj',
        'majorpmerj',
        'capitaopmerj',
        '1tenentepmerj',
        '2tenentepmerj',
        'aspirantepmerj',
        'subtenentepmerj',
        '1sargentopmerj',
        '2sargentopmerj',
        '3sargentopmerj',
        'cabopmerj',
        'soldadopmerj',

        'delegadocivil',
        'delegadoadjcivil',
        'coordenadorcivil',
        'peritocriminalcivil',
        'inspetorcivil',
        'escrivaocivil',
        'investigadorcivil',
        'agenteespecialcivil',
        'agente1civil',
        'agente2civil',
        'agente3civil',

        'delegadoprf',
        'delegadoadjprf',
        'coordenadorprf',
        'inspetorprf',
        'agenteespecialprf',
        'agente1prf',
        'agente2prf',
        'agente3prf',

    ------------------------------------------------------------------------------------------------------------------
    -----------------------------------------------------ELITES--------------------------------------------------------
    ------------------------------------------------------------------------------------------------------------------
        'coronelbope',
        'tcoronelbope',
        'majorbope',
        'capitaobope',
        '1tenetebope',
        '2tenentebope',
        'aspirantebope',
        'subtenentebope',
        '1sargentobope',
        '2sargentobope',
        '3sargentobope',
        'cabobope',
        'soldadobope',

        'coronelcoe',
        'tcoronelcoe',
        'majorcoe',
        'capitaocoe',
        '1tenetecoe',
        '2tenentecoe',
        'aspirantecoe',
        'subtenentecoe',
        '1sargentocoe',
        '2sargentocoe',
        '3sargentocoe',
        'cabocoe',
        'soldadocoe',

        'coronelchoque',
        'tcoronelchoque',
        'majorchoque',
        'capitaochoque',
        '1tenetechoque',
        '2tenentechoque',
        'aspirantechoque',
        'subtenentechoque',
        '1sargentochoque',
        '2sargentochoque',
        '3sargentochoque',
        'cabochoque',
        'soldadochoque',

        'coronelgam',
        'tcoronelgam',
        'majorgam',
        'capitaogam',
        '1tenetegam',
        '2tenentegam',
        'aspirantegam',
        'subtenentegam',
        '1sargentogam',
        '2sargentogam',
        '3sargentogam',
        'cabogam',
        'soldadogam',

        'delegadocore',
        'delegadoadjcore',
        'coordenadorcore',
        'peritocriminalcore',
        'inspetorcore',
        'investigadorcore',
        'agenteespecialcore',
        'agente1core',
        'agente2core',
        'agente3core',
        'agentecore',

        'delegadogrr',
        'delegadoadjgrr',
        'coordenadorgrr',
        'inspetorgrr',
        'agenteespecialgrr',
        'agente1grr',
        'agente2grr',
        'agente3grr',
        'agentegrr'
    },
    ['WEAPON_HK416'] = {
        'cmd',
        'subcmd',
        'coronelpmerj',
        'tcoronelpmerj',
        'majorpmerj',
        'capitaopmerj',
        '1tenentepmerj',
        '2tenentepmerj',
        'aspirantepmerj',
        'subtenentepmerj',
        '1sargentopmerj',
        '2sargentopmerj',
        '3sargentopmerj',
        'cabopmerj',
        'soldadopmerj',

        'delegadocivil',
        'delegadoadjcivil',
        'coordenadorcivil',
        'peritocriminalcivil',
        'inspetorcivil',
        'escrivaocivil',
        'investigadorcivil',
        'agenteespecialcivil',
        'agente1civil',
        'agente2civil',
        'agente3civil',

        'delegadoprf',
        'delegadoadjprf',
        'coordenadorprf',
        'inspetorprf',
        'agenteespecialprf',
        'agente1prf',
        'agente2prf',
        'agente3prf',

    ------------------------------------------------------------------------------------------------------------------
    -----------------------------------------------------ELITES--------------------------------------------------------
    ------------------------------------------------------------------------------------------------------------------
        'coronelbope',
        'tcoronelbope',
        'majorbope',
        'capitaobope',
        '1tenetebope',
        '2tenentebope',
        'aspirantebope',
        'subtenentebope',
        '1sargentobope',
        '2sargentobope',
        '3sargentobope',
        'cabobope',
        'soldadobope',

        'coronelcoe',
        'tcoronelcoe',
        'majorcoe',
        'capitaocoe',
        '1tenetecoe',
        '2tenentecoe',
        'aspirantecoe',
        'subtenentecoe',
        '1sargentocoe',
        '2sargentocoe',
        '3sargentocoe',
        'cabocoe',
        'soldadocoe',

        'coronelchoque',
        'tcoronelchoque',
        'majorchoque',
        'capitaochoque',
        '1tenetechoque',
        '2tenentechoque',
        'aspirantechoque',
        'subtenentechoque',
        '1sargentochoque',
        '2sargentochoque',
        '3sargentochoque',
        'cabochoque',
        'soldadochoque',

        'coronelgam',
        'tcoronelgam',
        'majorgam',
        'capitaogam',
        '1tenetegam',
        '2tenentegam',
        'aspirantegam',
        'subtenentegam',
        '1sargentogam',
        '2sargentogam',
        '3sargentogam',
        'cabogam',
        'soldadogam',

        'delegadocore',
        'delegadoadjcore',
        'coordenadorcore',
        'peritocriminalcore',
        'inspetorcore',
        'investigadorcore',
        'agenteespecialcore',
        'agente1core',
        'agente2core',
        'agente3core',
        'agentecore',

        'delegadogrr',
        'delegadoadjgrr',
        'coordenadorgrr',
        'inspetorgrr',
        'agenteespecialgrr',
        'agente1grr',
        'agente2grr',
        'agente3grr',
        'agentegrr'
    }
}

config.itens = {
    -- CONFIGURAÇÃO DAS ARMAS OU KITS
    ['police'] = {
        ['WEAPON_PUMPSHOTGUN_MK2'] = {
            type = 'escopeta',
            name = 'Remington 870 MK2',
            caliber = '12MM',
            color = '#8F00FF',
            image = 'https://media.discordapp.net/attachments/1067152152872632431/1176949593313919036/pumpshotgun_mk2.png',
            callback = function(source, user_id)
                vCLIENT._giveWeapons(source, {['WEAPON_PUMPSHOTGUN_MK2'] = {ammo = 100}})
                TriggerClientEvent('Notify', source, 'Pronto', 'Escopeta calibre 12 equipada')
            end,
            position = 1
        },
        ['WEAPON_STUNGUN'] = {
            type = 'Arma de Choque',
            name = 'Taser',
            caliber = '',
            color = '#8F00FF',
            image = 'https://media.discordapp.net/attachments/1067152152872632431/1176950439292448928/TASER.png',
            callback = function(source, user_id)
                vCLIENT._giveWeapons(source, {['WEAPON_STUNGUN'] = {ammo = -1}})
                TriggerClientEvent('Notify', source, 'Pronto', 'Taser Equipada.')
            end,
            position = 2
        },
        ['WEAPON_COMBATPISTOL'] = {
            type = 'Pistola',
            name = 'Glock G19',
            caliber = '9MM',
            color = '#8F00FF',
            image = 'https://media.discordapp.net/attachments/1067152152872632431/1176949592605081792/combatpistol.png',
            callback = function(source, user_id)
                vCLIENT._giveWeapons(source, {['WEAPON_COMBATPISTOL'] = {ammo = 250}})
                TriggerClientEvent('Notify', source, 'Pronto', 'Glock G19 Equipada.')
            end,
            position = 3
        },
        ['WEAPON_COMBATPDW'] = {
            type = 'Submetralhadora',
            name = 'Sig Sauer MPX',
            caliber = '9MM',
            color = '#8F00FF',
            image = 'https://media.discordapp.net/attachments/1067152152872632431/1176949592378593411/combatpdw.png',
            callback = function(source, user_id)
                vCLIENT._giveWeapons(source, {['WEAPON_COMBATPDW'] = {ammo = 250}})
                TriggerClientEvent('Notify', source, 'Pronto', 'Sig Equipada.')
            end,
            position = 4
        },
        ['WEAPON_SMG'] = {
            type = 'Submetralhadora',
            name = 'MP5',
            caliber = '9MM',
            color = '#8F00FF',
            image = 'https://media.discordapp.net/attachments/1067152152872632431/1176949593561378876/smg.png',
            callback = function(source, user_id)
                vCLIENT._giveWeapons(source, {['WEAPON_SMG'] = {ammo = 250}})
                TriggerClientEvent('Notify', source, 'Pronto', 'MP5 Equipada.')
            end,
            position = 5
        },
        ['WEAPON_SCORPIONEVO'] = {
            type = 'Submetralhadora',
            name = 'MP5',
            caliber = '9MM',
            color = '#8F00FF',
            image = 'http://177.54.148.31:4020/imgfusion/imginv/scorpionevo.png',
            callback = function(source, user_id)
                vCLIENT._giveWeapons(source, {['WEAPON_SCORPIONEVO'] = {ammo = 250}})
                TriggerClientEvent('Notify', source, 'Pronto', 'Scorpion Equipada.')
            end,
            position = 6
        },
        ['WEAPON_FAL'] = {
            type = 'fuzil',
            name = 'Parafal',
            caliber = '7.62MM',
            color = '#8F00FF',
            image = 'https://media.discordapp.net/attachments/1067152152872632431/1176949593083236362/parafal.png',
            callback = function(source, user_id)
                vCLIENT._giveWeapons(source, {['WEAPON_FAL'] = {ammo = 250}})
                TriggerClientEvent('Notify', source, 'Pronto', 'Fal Equipada.')
            end,
            position = 7
        },
        ['WEAPON_AR10A4'] = {
            type = 'Fuzil de Precisão',
            name = 'Ar10',
            caliber = '.308MM',
            color = '#8F00FF',
            image = 'https://media.discordapp.net/attachments/816072753870405702/1181270410713636894/ar10.png?ex=658072cc&is=656dfdcc&hm=28b0d301b9e292454b620e3ab457b718579d2fe22cbaca69be477df086f16706&=&format=webp&quality=lossless&width=120&height=70',
            callback = function(source, user_id)
                vCLIENT._giveWeapons(source, {['WEAPON_AR10A4'] = {ammo = 250}})
                TriggerClientEvent('Notify', source, 'Pronto', 'Ar10 Equipada.')
            end,
            position = 8
        },
        ['WEAPON_SCARH'] = {
            type = 'equipamento',
            name = 'Extintor',
            caliber = '',
            color = '#8F00FF',
            image = 'http://177.54.148.31:4020/imgfusion/imginv/scarh.png',
            callback = function(source, user_id)
                vCLIENT._giveWeapons(source, {['WEAPON_FIREEXTINGUISHER'] = {ammo = 3500}})
                TriggerClientEvent('Notify', source, 'Pronto', 'Scarh Equipado.')
            end,
            position = 9
        },
        ['WEAPON_NAVYCARBINE'] = {
            type = 'equipamento',
            name = 'Extintor',
            caliber = '',
            color = '#8F00FF',
            image = 'http://177.54.148.31:4020/imgfusion/imginv/navycarbine.png',
            callback = function(source, user_id)
                vCLIENT._giveWeapons(source, {['WEAPON_FIREEXTINGUISHER'] = {ammo = 3500}})
                TriggerClientEvent('Notify', source, 'Pronto', 'Navy carbine Equipado.')
            end,
            position = 10
        },
        ['WEAPON_CARBINERIFLE_MK2'] = {
            type = 'Fuzil Leve',
            name = 'M 416',
            caliber = '5.56MM',
            color = '#8F00FF',
            image = 'https://media.discordapp.net/attachments/1067152152872632431/1176949592118538391/carbinerifle_mk2.png',
            callback = function(source, user_id)
                vCLIENT._giveWeapons(source, {['WEAPON_CARBINERIFLE_MK2'] = {ammo = 250}})
                TriggerClientEvent('Notify', source, 'Pronto', 'M 416 Equipada.')
            end,
            position = 11
        },
        ['WEAPON_HK416'] = {
            type = 'Fuzil Leve',
            name = 'M 416',
            caliber = '5.56MM',
            color = '#8F00FF',
            image = 'https://media.discordapp.net/attachments/816072753870405702/1181272834195070976/hk4126-min.png?ex=6580750e&is=656e000e&hm=f1ac064623cbd961fba1f5244dc6cddcaa5d844b1db5da0a338ba82b3dcc21e0&=&format=webp&quality=lossless&width=120&height=70',
            callback = function(source, user_id)
                vCLIENT._giveWeapons(source, {['WEAPON_HK416'] = {ammo = 250}})
                TriggerClientEvent('Notify', source, 'Pronto', 'HK 416 Equipada.')
            end,
            position = 12
        },
        ['WEAPON_FIREEXTINGUISHER'] = {
            type = 'equipamento',
            name = 'Extintor',
            caliber = '',
            color = '#8F00FF',
            image = 'http://177.54.148.31:4020/imgrevoada/imginv/fireextinguisher.png',
            callback = function(source, user_id)
                vCLIENT._giveWeapons(source, {['WEAPON_FIREEXTINGUISHER'] = {ammo = 3500}})
                TriggerClientEvent('Notify', source, 'Pronto', 'Extintor Equipado.')
            end,
            position = 13
        },
        ['WEAPON_NIGHTSTICK'] = {
            type = 'equipamento',
            name = 'Cassetete',
            caliber = '',
            color = '#8F00FF',
            image = 'https://media.discordapp.net/attachments/1067152152872632431/1176949592839958691/nightstick.png',
            callback = function(source, user_id)
                vCLIENT._giveWeapons(source, {['WEAPON_NIGHTSTICK'] = {ammo = 250}})
                TriggerClientEvent('Notify', source, 'Pronto', 'Cassetete Equipado.')
            end,
            position = 14
        },
        ['KIT Patrulha'] = {
            type = 'acessórios',
            name = 'KIT Patrulha',
            caliber = '',
            color = '#8F00FF',
            image = 'https://cdn.discordapp.com/attachments/1034485126316437554/1182374330282283099/kitbasico.png?ex=658476e7&is=657201e7&hm=089b36ba3fd19115a19b0ba810428ac4d7f5311bb287d893d95f24460e732e24&',
            callback = function(source, user_id)
                UtilsClass:giveKitItens(
                    source,
                    user_id,
                    {
                        ['celular'] = {
                            amount = 1,
                            cooldown = 5 * minutes
                        },
                        ['radio'] = {
                            amount = 1,
                            cooldown = 5 * minutes
                        },
                        ['energetico'] = {
                            amount = 1,
                            cooldown = 5 * minutes
                        },
                        ['parachute'] = {
                            amount = 1,
                            cooldown = 5 * minutes
                        },
                        ['repairkit'] = {
                            amount = 2,
                            cooldown = 5 * minutes
                        },
                        ['bandagem'] = {
                            amount = 5,
                            cooldown = 5 * minutes
                        }
                    }
                )
                vRPclient._setArmour(source, 100)
            end,
            position = 15
        }
    },
    ['hospital'] = {
      
        ['WEAPON_STUNGUN'] = {
            type = 'Arma de Choque',
            name = 'Taser',
            caliber = '',
            color = '#8F00FF',
            image = 'https://media.discordapp.net/attachments/1067152152872632431/1176950439292448928/TASER.png',
            callback = function(source, user_id)
                vCLIENT._giveWeapons(source, {['WEAPON_STUNGUN'] = {ammo = -1}})
                TriggerClientEvent('Notify', source, 'Pronto', 'Taser Equipada.')
            end,
            position = 1
        },
        ['KIT Patrulha'] = {
            type = 'acessórios',
            name = 'KIT Patrulha',
            caliber = '',
            color = '#8F00FF',
            image = 'https://cdn.discordapp.com/attachments/1034485126316437554/1182374330282283099/kitbasico.png?ex=658476e7&is=657201e7&hm=089b36ba3fd19115a19b0ba810428ac4d7f5311bb287d893d95f24460e732e24&',
            callback = function(source, user_id)
                UtilsClass:giveKitItens(
                    source,
                    user_id,
                    {
                        ['celular'] = {
                            amount = 1,
                            cooldown = 5 * minutes
                        },
                        ['radio'] = {
                            amount = 1,
                            cooldown = 5 * minutes
                        },
                        ['energetico'] = {
                            amount = 1,
                            cooldown = 5 * minutes
                        },
                        ['parachute'] = {
                            amount = 1,
                            cooldown = 5 * minutes
                        },
                        ['repairkit'] = {
                            amount = 2,
                            cooldown = 5 * minutes
                        }
                    }
                )
                vRPclient._setArmour(source, 100)
            end,
            position = 2
        }
    },
    ['bombeiro'] = {
      
        ['KIT Patrulha'] = {
            type = 'acessórios',
            name = 'KIT Patrulha',
            caliber = '',
            color = '#8F00FF',
            image = 'https://cdn.discordapp.com/attachments/1034485126316437554/1182374330282283099/kitbasico.png?ex=658476e7&is=657201e7&hm=089b36ba3fd19115a19b0ba810428ac4d7f5311bb287d893d95f24460e732e24&',
            callback = function(source, user_id)
                UtilsClass:giveKitItens(
                    source,
                    user_id,
                    {
                        ['celular'] = {
                            amount = 1,
                            cooldown = 5 * minutes
                        },
                        ['radio'] = {
                            amount = 1,
                            cooldown = 5 * minutes
                        },
                        ['energetico'] = {
                            amount = 1,
                            cooldown = 5 * minutes
                        },
                        ['parachute'] = {
                            amount = 1,
                            cooldown = 5 * minutes
                        },
                        ['repairkit'] = {
                            amount = 2,
                            cooldown = 5 * minutes
                        }
                    }
                )
                vRPclient._setArmour(source, 100)
            end,
            position = 1
        }
    },
    ['mecanica'] = {
      
        ['KIT Patrulha'] = {
            type = 'acessórios',
            name = 'KIT Patrulha',
            caliber = '',
            color = '#8F00FF',
            image = 'https://cdn.discordapp.com/attachments/1034485126316437554/1182374330282283099/kitbasico.png?ex=658476e7&is=657201e7&hm=089b36ba3fd19115a19b0ba810428ac4d7f5311bb287d893d95f24460e732e24&',
            callback = function(source, user_id)
                UtilsClass:giveKitItens(
                    source,
                    user_id,
                    {
                        ['celular'] = {
                            amount = 1,
                            cooldown = 5 * minutes
                        },
                        ['radio'] = {
                            amount = 1,
                            cooldown = 5 * minutes
                        },
                        ['energetico'] = {
                            amount = 1,
                            cooldown = 5 * minutes
                        },
                        ['parachute'] = {
                            amount = 1,
                            cooldown = 5 * minutes
                        },
                        ['repairkit'] = {
                            amount = 2,
                            cooldown = 5 * minutes
                        }
                    }
                )
                vRPclient._setArmour(source, 100)
            end,
            position = 1
        }
    },
    ['judiciario'] = {
      
        ['KIT Patrulha'] = {
            type = 'acessórios',
            name = 'KIT Patrulha',
            caliber = '',
            color = '#8F00FF',
            image = 'https://cdn.discordapp.com/attachments/1034485126316437554/1182374330282283099/kitbasico.png?ex=658476e7&is=657201e7&hm=089b36ba3fd19115a19b0ba810428ac4d7f5311bb287d893d95f24460e732e24&',
            callback = function(source, user_id)
                UtilsClass:giveKitItens(
                    source,
                    user_id,
                    {
                        ['celular'] = {
                            amount = 2,
                            cooldown = 60 * minutes
                        },
                        ['radio'] = {
                            amount = 1,
                            cooldown = 60 * minutes
                        },
                        ['mochila'] = {
                            amount = 3,
                            cooldown = 60 * minutes
                        },
                        ['bandagem'] = {
                            amount = 5,
                            cooldown = 60 * minutes
                        },
                        ['repairkit'] = {
                            amount = 3,
                            cooldown = 60 * minutes
                        }
                    }
                )
                vRPclient._setArmour(source, 100)
            end,
            position = 1
        }
    }
}

config.permissions = {
    -- CONFIGURAÇÃO Arsenal
    ['police'] = {'policia.permissao'},
    ['hospital'] = {'hospital.permissao'},
    ['bombeiro'] = {'bombeiro.permissao'},
    ['mecanico'] = {'mecanico.permissao'},
    ['judiciario'] = {'oab.permissao'},
}

config.locations = {
    {
        coords = vector3(-555.9, -184.87, 38.22),
        configuration = 'judiciario',
        text = '[~g~E~w~] Arsenal',
        distance = 3.0
    },
    --
    {
        coords = vector3(133.12, -1076.37, 29.2),
        configuration = 'police',
        text = '[~g~E~w~] Arsenal',
        distance = 3.0
    },
    {
        coords = vector3(-435.62, 5998.87, 31.71),
        configuration = 'police',
        text = '[~g~E~w~] Arsenal',
        distance = 3.0
    },

    --[ NOVOS 13/12 ]--

    {
        coords = vector3(-423.7, 1085.48, 327.68),
        configuration = 'police',
        text = '[~g~E~w~] Arsenal',
        distance = 3.0
    },
    {
        coords = vector3(-1663.19, 172.48, 61.81),
        configuration = 'police',
        text = '[~g~E~w~] Arsenal',
        distance = 3.0
    },
    {
        coords = vector3(-1577.28, 193.27, 59.31),
        configuration = 'police',
        text = '[~g~E~w~] Arsenal',
        distance = 3.0
    },
    {
        coords = vector3(2601.61, 5362.26, 46.71),
        configuration = 'police',
        text = '[~g~E~w~] Arsenal',
        distance = 3.0
    },
    {
        coords = vector3(1135.38, -1540.54, 35.38),
        configuration = 'hospital',
        text = '[~g~E~w~] Arsenal',
        distance = 3.0
    },
    {
        coords = vector3(-2071.84, -447.05, 11.88),
        configuration = 'bombeiro',
        text = '[~g~E~w~] Arsenal',
        distance = 3.0
    },
    {
        coords = vector3(-953.02, -2068.57, 9.74),
        configuration = 'mecanica',
        text = '[~g~E~w~] Arsenal',
        distance = 3.0
    },
}
