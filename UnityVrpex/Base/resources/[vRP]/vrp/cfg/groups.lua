local cfg = {}

cfg.groups = {

-- [ADMINISTRAÇÃO ] --
	["owner"] = {
		_config = {
			title = "Owner",
			gtype = "owner"
		},
		"owner.permissao",
		"admin.permissao",
		"easytime.permissao",
		"mochila.permissao",
		"ticket.permissao",
		"preset.permissao",
		"chatstaff.permissao",
		"polpar.permissao",
		"reviver.permissao",
		"suporte.permissao"
	},
	["paisana_owner"] = {
		_config = {
			title = "PaisanaOwner",
			gtype = "owner"
		},
		"paisanaowner.permissao",
	},
	["admin"] = {
		_config = {
			title = "Admin",
			gtype = "admin"
		},
		"admin.permissao",
		"adminpoderes.permissao",
		"polpar.permissao",
		"easytime.permissao",
		"reviver.permissao",
		"chatstaff.permissao",
		"mochila.permissao",
		"preset.permissao",
		"ticket.permissao",
		"mod.permissao"
	},
	["paisana_admin"] = {
		_config = {
			title = "PaisanaAdmin",
			gtype = "admin"
		},
		"paisanadmin.permissao",
	},
	["mod"] = {
		_config = {
			title = "Mod",
			gtype = "mod"
		},
		"mod.permissao",
		"modpoderes.permissao",
		"chatstaff.permissao",
		"polpar.permissao",
		"mochila.permissao",
		"preset.permissao",
		"ticket.permissao",
		"reviver.permissao"
	},
	["paisana_mod"] = {
		_config = {
			title = "PaisanaMod",
			gtype = "mod"
		},
		"paisanamod.permissao",
	},
	["suporte"] = {
		_config = {
			title = "Suporte",
			gtype = "suporte"
		},
		"suporte.permissao",
		"suportepoderes.permissao",
		"chatstaff.permissao",
		"preset.permissao",
		"reviver.permissao",
		"ticket.permissao"
	},
	["paisana_suporte"] = {
		_config = {
			title = "PaisanaSuporte",
			gtype = "suporte"
		},
		"paisanasuporte.permissao",
	},
	
	["blips"] = {
		"blips.permissao"
	},

------- [EMPREGOS] --
	["burguer1"] = {
		_config = {
			title = "Dono do Burguershot",
			gtype = "job"
		},
		"dono.burguershot",
		"burguershot.permissao"
	},
	["burguer"] = {
		_config = {
			title = "Funcionário Burguershot",
			gtype = "job"
		},
		"burguershot.permissao",
		"servico.burguershot"
	},
	["burguer1-off"] = {
		_config = {
			title = "Burguershot: Fora de Serviço",
			gtype = "job"
		},
		"burguershotdono.foradeservico"
	},
	["burguer-off"] = {
		_config = {
			title = "Burguershot: Fora de Serviço",
			gtype = "job"
		},
		"burguershot.foradeservico"
	},
-------- [VIP] --
	["standart"] = {
		_config = {
			title = "standart",
			gtype = "vip",
			dias = 30, -- Dias de VIP
			coins = 0, -- Coins que ganha na ativação
			dinheiro = 100000, -- Dinheiro que ganha na ativação
			mochila = true, -- Se quando morrer a mochila fica (espaço na mochila)
			garagem = 2 -- Garagem ADICIONAL
		},
		"standart.permissao",
		"cor.permissao"
	},

	["premium"] = {
		_config = {
			title = "premium",
			gtype = "vip",
			dias = 30,
			coins = 10,
			dinheiro = 250000,
			mochila = true,
			garagem = 4,
			itens = { -- Itens que ganha na ativação
				{item = "cafe", quantidade = 1},
				{item = "agua", quantidade = 3}
			},
			carros = { -- Carros que ganha na ativação
				{car = "brioso"}
			}
		},
		"premium.permissao",
		"cor.permissao"
	},

	["elite"] = {
		_config = {
			title = "elite",
			gtype = "vip",
			dias = 30,
			coins = 25,
			dinheiro = 500000,
			mochila = true,
			garagem = 6,
			itens = {
				{item = "cafe", quantidade = 1},
				{item = "agua", quantidade = 3}
			},
			carros = { -- Carros que ganha na ativação
				{car = "brioso"}
			}
		},
		"elite.permissao",
		"cor.permissao"
	},

	["ultimate"] = {
		_config = {
			title = "ultimate",
			gtype = "vip",
			dias = 35,
			coins = 50,
			dinheiro = 1000000,
			mochila = true,
			garagem = 10,
			itens = {
				{item = "cafe", quantidade = 1},
				{item = "agua", quantidade = 3}
			},
			carros = { -- Carros que ganha na ativação
				{car = "brioso"},
				{car = "sentinel"}
			}
		},
		"ultimate.permissao",
		"cor.permissao"
	},

	["mochila"] = { -- Não mexer deletar ou remover
		"mochila.permissao"
	},

------------------------------------------------------------
--########################################################--
-- Empregos Legais ( Policia, Mecanica, Hospital )

-- Policia ( GuardaCivil, Policia Militar, Rocam, Gate, Rota, Gaep, FT )
-- Policia Militar [Oficiais]
	["ComandanteGeral"] = {
		_config = {
			title = "Coronel PM",
			gtype = "job"
		},
		"comandopm.permissao",
		"tabletpm.permissao",
		"addpm.permissao",
		"rempm.permissao",
		"ComandanteGeral.permissao",
		"ComandanteGeralsalario.permissao",
		"portadp.permissao",
		"policia.permissao"
	},

	["ComandanteGeral-folga"] = {
		_config = {
			title = "Comandante-Geral PM Folga",
			gtype = "job"
		},
		"portadp.permissao"
	},
	["Coronel"] = {
		_config = {
			title = "Coronel PM",
			gtype = "job"
		},
		"comandopm.permissao",
		"tabletpm.permissao",
		"addpm.permissao",
		"rempm.permissao",
		"CoronelPM.permissao",
		"CoronelPMsalario.permissao",
		"portadp.permissao",
		"policia.permissao"
	},

	["Coronel-folga"] = {
		_config = {
			title = "Coronel PM Folga",
			gtype = "job"
		},
		"portadp.permissao"
	},
	["Tenente-Coronel"] = {
		_config = {
			title = "Tenente-Coronel PM",
			gtype = "job"
		},
		"comandopm.permissao",
		"tabletpm.permissao",
		"addpm.permissao",
		"rempm.permissao",
		"TenenteCoronel.permissao",
		"TenenteCoronelsalario.permissao",
		"portadp.permissao",
		"policia.permissao"
	},

	["Tenente-Coronel-folga"] = {
		_config = {
			title = "Ten-Cel PM Folga",
			gtype = "job"
		},
		"portadp.permissao"
	},
	["Major"] = {
		_config = {
			title = "Major PM",
			gtype = "job"
		},
		"comandopm.permissao",
		"tabletpm.permissao",
		"addpm.permissao",
		"rempm.permissao",
		"MajorPM.permissao",
		"MajorPMsalario.permissao",
		"portadp.permissao",
		"policia.permissao"
	},

	["Major-folga"] = {
		_config = {
			title = "Major PM Folga",
			gtype = "job"
		},
		"portadp.permissao"
	},
	["Capitao"] = {
		_config = {
			title = "Capitão PM",
			gtype = "job"
		},
		"comandopm.permissao",
		"tabletpm.permissao",
		"addpm.permissao",
		"rempm.permissao",
		"CapitaoPM.permissao",
		"CapitaoPMsalario.permissao",
		"portadp.permissao",
		"policia.permissao"
	},

	["Capitao-folga"] = {
		_config = {
			title = "Capitão PM Folga",
			gtype = "job"
		},
		"portadp.permissao"
	},
	["1Tenente"] = {
		_config = {
			title = "1º Tenente PM",
			gtype = "job"
		},
		"comandopm.permissao",
		"tabletpm.permissao",
		"addpm.permissao",
		"rempm.permissao",
		"1Tenente.permissao",
		"1Tenentesalario.permissao",
		"portadp.permissao",
		"policia.permissao"
	},

	["1Tenente-folga"] = {
		_config = {
			title = "1º Tenente PM Folga",
			gtype = "job"
		},
		"portadp.permissao"
	},
	["2Tenente"] = {
		_config = {
			title = "2º Tenente PM",
			gtype = "job"
		},
		"comandopm.permissao",
		"tabletpm.permissao",
		"addpm.permissao",
		"rempm.permissao",
		"2Tenente.permissao",
		"2Tenentesalario.permissao",
		"portadp.permissao",
		"policia.permissao"
	},

	["2Tenente-folga"] = {
		_config = {
			title = "2º Tenente PM Folga",
			gtype = "job"
		},
		"portadp.permissao"
	},
	["Subtenente"] = {
		_config = {
			title = "Subtenente PM",
			gtype = "job"
		},
		"comandopm.permissao",
		"tabletpm.permissao",
		"addpm.permissao",
		"rempm.permissao",
		"Subtenente.permissao",
		"Subtenentesalario.permissao",
		"portadp.permissao",
		"policia.permissao"
	},

	["Subtenente-folga"] = {
		_config = {
			title = "Subtenente PM Folga",
			gtype = "job"
		},
		"portadp.permissao"
	},
	["1Sargento"] = {
		_config = {
			title = "1ºSargento PM",
			gtype = "job"
		},
		"comandopm.permissao",
		"tabletpm.permissao",
		"addpm.permissao",
		"rempm.permissao",
		"1Sargento.permissao",
		"1Sargentosalario.permissao",
		"portadp.permissao",
		"policia.permissao"
	},

	["1Sargento-folga"] = {
		_config = {
			title = "1ºSargento PM Folga",
			gtype = "job"
		},
		"portadp.permissao"
	},
	["2Sargento"] = {
		_config = {
			title = "2ºSargento PM",
			gtype = "job"
		},
		"comandopm.permissao",
		"tabletpm.permissao",
		"addpm.permissao",
		"rempm.permissao",
		"2Sargento.permissao",
		"2Sargentosalario.permissao",
		"portadp.permissao",
		"policia.permissao"
	},

	["2Sargento-folga"] = {
		_config = {
			title = "2ºSargento PM Folga",
			gtype = "job"
		},
		"portadp.permissao"
	},
	["3Sargento"] = {
		_config = {
			title = "3ºSargento PM",
			gtype = "job"
		},
		"comandopm.permissao",
		"tabletpm.permissao",
		"addpm.permissao",
		"rempm.permissao",
		"3Sargento.permissao",
		"3Sargentosalario.permissao",
		"portadp.permissao",
		"policia.permissao"
	},

	["3Sargento-folga"] = {
		_config = {
			title = "3ºSargento PM Folga",
			gtype = "job"
		},
		"portadp.permissao"
	},
	["Cabo"] = {
		_config = {
			title = "Cabo PM",
			gtype = "job"
		},
		"comandopm.permissao",
		"tabletpm.permissao",
		"addpm.permissao",
		"rempm.permissao",
		"Cabo.permissao",
		"Cabosalario.permissao",
		"portadp.permissao",
		"policia.permissao"
	},

	["Cabo-folga"] = {
		_config = {
			title = "Cabo PM Folga",
			gtype = "job"
		},
		"portadp.permissao"
	},
	["Soldado1class"] = {
		_config = {
			title = "Soldado 1ª Classe PM",
			gtype = "job"
		},
		"comandopm.permissao",
		"tabletpm.permissao",
		"addpm.permissao",
		"rempm.permissao",
		"Soldado1class.permissao",
		"Soldado1classsalario.permissao",
		"portadp.permissao",
		"policia.permissao"
	},

	["Soldado1class-folga"] = {
		_config = {
			title = "Soldado 1ª Classe PM Folga",
			gtype = "job"
		},
		"portadp.permissao"
	},
	["Soldado2class"] = {
		_config = {
			title = "Soldado 2ª Classe PM",
			gtype = "job"
		},
		"comandopm.permissao",
		"tabletpm.permissao",
		"addpm.permissao",
		"rempm.permissao",
		"Soldado2class.permissao",
		"Soldado2classsalario.permissao",
		"portadp.permissao",
		"policia.permissao"
	},

	["Soldado2class-folga"] = {
		_config = {
			title = "Soldado 2ª Classe PM Folga",
			gtype = "job"
		},
		"portadp.permissao"
	},
	["recrutaPM"] = {
		_config = {
			title = "Recruta PM",
			gtype = "job"
		},
		"comandopm.permissao",
		"tabletpm.permissao",
		"addpm.permissao",
		"rempm.permissao",
		"recrutaPM.permissao",
		"recrutaPMsalario.permissao",
		"portadp.permissao",
		"policia.permissao"
	},

	["recrutaPM-folga"] = {
		_config = {
			title = "Recruta PM Folga",
			gtype = "job"
		},
		"portadp.permissao"
	},

-- ROTA

-- Hospital ( Socorrista SAMU, Enfermeiro, Medico, Cirurgião, RecursosHumano, Diretor, ResponsávelGeral )
	["Hospital00"] = {
		_config = {
			title = "Mecânico(a) Treinamento",
			gtype = "job"
		},
		"portamec.permissao", -- perm para abrir/trancar mecanica
		"lojamec.permissao",-- perm para abrir/comprar na loja mecanica
		"mecanica_salario.permissao",-- perm para abrir/comprar na loja mecanica
	},
	["Hospital00folga"] = {
		_config = {
			title = "Mecânico(a) Treinamento",
			gtype = "job"
		},
		"portamec.permissao", -- perm para abrir/trancar mecanica
		"lojamec.permissao",-- perm para abrir/comprar na loja mecanica
		"mecanica_salario.permissao",-- perm para abrir/comprar na loja mecanica
	},

-- Mecanica ( reparo de veiculos, apenas dando reparo no veículo simples )

	["mec00"] = {
		_config = {
			title = "Mecânico(a) Treinamento",
			gtype = "job"
		},
		"portamec.permissao", -- perm para abrir/trancar mecanica
		"lojamec.permissao",-- perm para abrir/comprar na loja mecanica
		"mecanica_salario.permissao",-- perm para abrir/comprar na loja mecanica
	},
	["mec00folga"] = {
		_config = {
			title = "Mecânico(a) Treinamento",
			gtype = "job"
		},
		"portamec.permissao", -- perm para abrir/trancar mecanica
		"lojamec.permissao",-- perm para abrir/comprar na loja mecanica
		"mecanica_salario.permissao",-- perm para abrir/comprar na loja mecanica
	},


-- Bennys ( modificações de Veiculos, tunagem e afins )
["custom00"] = {
	_config = {
		title = "Bennys(a) Treinamento",
		gtype = "job"
	},
	"portabennys.permissao", -- perm para abrir/trancar mecanica
	"lojamec.permissao",-- perm para abrir/comprar na loja mecanica
	"custom00_salario.permissao",-- perm para abrir/comprar na loja mecanica
},
["custom00folga"] = {
	_config = {
		title = "Bennys(a) Treinamento",
		gtype = "job"
	},
	"portabennys.permissao" -- perm para abrir/trancar mecanica
},
["custom01"] = {
	_config = {
		title = "Bennys(a) Gerente",
		gtype = "job"
	},
	"portabennys.permissao", -- perm para abrir/trancar mecanica
	"Gerentebennys.permissao", -- perm para abrir/trancar mecanica
	"lojamec.permissao",-- perm para abrir/comprar na loja mecanica
	"custom01_salario.permissao",-- perm para abrir/comprar na loja mecanica
},
["custom01folga"] = {
	_config = {
		title = "Bennys(a) Gerente Folga",
		gtype = "job"
	},
	"portabennys.permissao" -- perm para abrir/trancar mecanica
},

--[[
favelas - drogas ( Maconha, Meta, Cocaina... e outras drogas )

máfias ( armas e munição )

Boates ( Desmanche, Lavagem de Drogas, ['mercado negro' ( do ilegal e de facções )] )

]]


-- Facções / Milícias Ilegais ( Armas, Drogas Munição, Lavagem, Desmanche )
	-- Fac 1 - favelas - drogas
		["fac100"] = {	_config = {title = "CHEFE FAC100",gtype = "job"},
		"patrao.fac100",
		"bracodireito.fac100",
		"gerentegeral.fac100",
		"gerente.fac100",
		"frente.fac100",
		"soldado.fac100",
		"olheiro.fac100",
		"vapor.fac100",
		"novato.fac100",
		"ilegal.permissao",
		},
		["fac101"] = {	_config = {title = "BRAÇO-DIREITO FAC100",gtype = "job"},
		"bracodireito.fac100",
		"gerentegeral.fac100",
		"gerente.fac100",
		"frente.fac100",
		"soldado.fac100",
		"olheiro.fac100",
		"vapor.fac100",
		"novato.fac100",
		"ilegal.permissao",
		},
		["fac102"] = {	_config = {title = "GERENTE-GERAL FAC100",gtype = "job"},
		"gerentegeral.fac100",
		"gerente.fac100",
		"frente.fac100",
		"soldado.fac100",
		"olheiro.fac100",
		"vapor.fac100",
		"novato.fac100",
		"ilegal.permissao",
		},
		["fac103"] = {	_config = {title = "GERENTE FAC100",gtype = "job"},

		"gerente.fac100",
		"frente.fac100",
		"soldado.fac100",
		"olheiro.fac100",
		"vapor.fac100",
		"novato.fac100",
		"ilegal.permissao",
		},
		["fac104"] = {	_config = {title = "FRENTE FAC100",gtype = "job"},

		"frente.fac100",
		"soldado.fac100",
		"olheiro.fac100",
		"vapor.fac100",
		"novato.fac100",
		"ilegal.permissao",
		},
		["fac105"] = {	_config = {title = "SOLDADO FAC100",gtype = "job"},

		"soldado.fac100",
		"olheiro.fac100",
		"vapor.fac100",
		"novato.fac100",
		"ilegal.permissao",
		},
		["fac106"] = {	_config = {title = "OLHEIRO FAC100",gtype = "job"},
		"olheiro.fac100",
		"vapor.fac100",
		"novato.fac100",
		"ilegal.permissao",
		},
		["fac107"] = {	_config = {title = "VAPOR FAC100",gtype = "job"},
		"vapor.fac100",
		"novato.fac100",
		"ilegal.permissao",
		},
		["fac108"] = {	_config = {title = "NOVATO FAC100",gtype = "job"},
		"novato.fac100",
		"ilegal.permissao",
		},


	-- Fac 02 - máfias
		["fac200"] = {	_config = {title = "CHEFE FAC200",gtype = "job"},
		"patrao.fac200",
		"bracodireito.fac200",
		"gerentegeral.fac200",
		"gerente.fac200",
		"frente.fac200",
		"soldado.fac200",
		"olheiro.fac200",
		"vapor.fac200",
		"novato.fac200",
		"ilegal.permissao",
		},
		["fac201"] = {	_config = {title = "BRAÇO-DIREITO FAC200",gtype = "job"},
		"bracodireito.fac200",
		"gerentegeral.fac200",
		"gerente.fac200",
		"frente.fac200",
		"soldado.fac200",
		"olheiro.fac200",
		"vapor.fac200",
		"novato.fac200",
		"ilegal.permissao",
		},
		["fac202"] = {	_config = {title = "GERENTE-GERAL FAC200",gtype = "job"},
		"gerentegeral.fac200",
		"gerente.fac200",
		"frente.fac200",
		"soldado.fac200",
		"olheiro.fac200",
		"vapor.fac200",
		"novato.fac200",
		"ilegal.permissao",
		},
		["fac203"] = {	_config = {title = "GERENTE FAC200",gtype = "job"},

		"gerente.fac200",
		"frente.fac200",
		"soldado.fac200",
		"olheiro.fac200",
		"vapor.fac200",
		"novato.fac200",
		"ilegal.permissao",
		},
		["fac204"] = {	_config = {title = "FRENTE FAC200",gtype = "job"},

		"frente.fac200",
		"soldado.fac200",
		"olheiro.fac200",
		"vapor.fac200",
		"novato.fac200",
		"ilegal.permissao",
		},
		["fac205"] = {	_config = {title = "SOLDADO FAC200",gtype = "job"},

		"soldado.fac200",
		"olheiro.fac200",
		"vapor.fac200",
		"novato.fac200",
		"ilegal.permissao",
		},
		["fac206"] = {	_config = {title = "OLHEIRO FAC200",gtype = "job"},
		"olheiro.fac200",
		"vapor.fac200",
		"novato.fac200",
		"ilegal.permissao",
		},
		["fac207"] = {	_config = {title = "VAPOR FAC200",gtype = "job"},
		"vapor.fac200",
		"novato.fac200",
		"ilegal.permissao",
		},
		["fac208"] = {	_config = {title = "NOVATO FAC200",gtype = "job"},
		"novato.fac200",
		"ilegal.permissao",
		},



	-- Fac 03 - Boates - lavagem
		["fac300"] = {	_config = {title = "CHEFE FAC300",gtype = "job"},
		"patrao.fac300",
		"bracodireito.fac300",
		"gerentegeral.fac300",
		"gerente.fac300",
		"frente.fac300",
		"soldado.fac300",
		"olheiro.fac300",
		"vapor.fac300",
		"novato.fac300",
		"ilegal.permissao",
		},
		["fac301"] = {	_config = {title = "BRAÇO-DIREITO FAC300",gtype = "job"},
		"bracodireito.fac300",
		"gerentegeral.fac300",
		"gerente.fac300",
		"frente.fac300",
		"soldado.fac300",
		"olheiro.fac300",
		"vapor.fac300",
		"novato.fac300",
		"ilegal.permissao",
		},
		["fac302"] = {	_config = {title = "GERENTE-GERAL FAC300",gtype = "job"},
		"gerentegeral.fac300",
		"gerente.fac300",
		"frente.fac300",
		"soldado.fac300",
		"olheiro.fac300",
		"vapor.fac300",
		"novato.fac300",
		"ilegal.permissao",
		},
		["fac303"] = {	_config = {title = "GERENTE FAC300",gtype = "job"},

		"gerente.fac300",
		"frente.fac300",
		"soldado.fac300",
		"olheiro.fac300",
		"vapor.fac300",
		"novato.fac300",
		"ilegal.permissao",
		},
		["fac304"] = {	_config = {title = "FRENTE FAC300",gtype = "job"},

		"frente.fac300",
		"soldado.fac300",
		"olheiro.fac300",
		"vapor.fac300",
		"novato.fac300",
		"ilegal.permissao",
		},
		["fac305"] = {	_config = {title = "SOLDADO FAC300",gtype = "job"},

		"soldado.fac300",
		"olheiro.fac300",
		"vapor.fac300",
		"novato.fac300",
		"ilegal.permissao",
		},
		["fac306"] = {	_config = {title = "OLHEIRO FAC300",gtype = "job"},
		"olheiro.fac300",
		"vapor.fac300",
		"novato.fac300",
		"ilegal.permissao",
		},
		["fac307"] = {	_config = {title = "VAPOR FAC300",gtype = "job"},
		"vapor.fac300",
		"novato.fac300",
		"ilegal.permissao",
		},
		["fac308"] = {	_config = {title = "NOVATO FAC300",gtype = "job"},
		"novato.fac300",
		"ilegal.permissao",
		},
	-- Fac 04 - desmanche
		["fac400"] = {	_config = {title = "CHEFE FAC400",gtype = "job"},
		"patrao.fac400",
		"bracodireito.fac400",
		"gerentegeral.fac400",
		"gerente.fac400",
		"frente.fac400",
		"soldado.fac400",
		"olheiro.fac400",
		"vapor.fac400",
		"novato.fac400",
		"ilegal.permissao",
		},
		["fac401"] = {	_config = {title = "BRAÇO-DIREITO FAC400",gtype = "job"},
		"bracodireito.fac400",
		"gerentegeral.fac400",
		"gerente.fac400",
		"frente.fac400",
		"soldado.fac400",
		"olheiro.fac400",
		"vapor.fac400",
		"novato.fac400",
		"ilegal.permissao",
		},
		["fac402"] = {	_config = {title = "GERENTE-GERAL FAC400",gtype = "job"},
		"gerentegeral.fac400",
		"gerente.fac400",
		"frente.fac400",
		"soldado.fac400",
		"olheiro.fac400",
		"vapor.fac400",
		"novato.fac400",
		"ilegal.permissao",
		},
		["fac403"] = {	_config = {title = "GERENTE FAC400",gtype = "job"},

		"gerente.fac400",
		"frente.fac400",
		"soldado.fac400",
		"olheiro.fac400",
		"vapor.fac400",
		"novato.fac400",
		"ilegal.permissao",
		},
		["fac404"] = {	_config = {title = "FRENTE FAC400",gtype = "job"},

		"frente.fac400",
		"soldado.fac400",
		"olheiro.fac400",
		"vapor.fac400",
		"novato.fac400",
		"ilegal.permissao",
		},
		["fac405"] = {	_config = {title = "SOLDADO FAC400",gtype = "job"},

		"soldado.fac400",
		"olheiro.fac400",
		"vapor.fac400",
		"novato.fac400",
		"ilegal.permissao",
		},
		["fac406"] = {	_config = {title = "OLHEIRO FAC400",gtype = "job"},
		"olheiro.fac400",
		"vapor.fac400",
		"novato.fac400",
		"ilegal.permissao",
		},
		["fac407"] = {	_config = {title = "VAPOR FAC400",gtype = "job"},
		"vapor.fac400",
		"novato.fac400",
		"ilegal.permissao",
		},
		["fac408"] = {	_config = {title = "NOVATO FAC400",gtype = "job"},
		"novato.fac400",
		"ilegal.permissao",
		},
-----------------------------------------------------------


-----------------------------------------------------------		
}

cfg.users = { -- MUDE CASO NÃO QUEIRA QUE O CARGO OWNER SEJA SETADO AUTOMATICAMENTE ATÉ O ID 3
	[1] = { "owner" },
	[2] = { "owner" },
	[3] = { "owner" }
}

cfg.selectors = {}

return cfg