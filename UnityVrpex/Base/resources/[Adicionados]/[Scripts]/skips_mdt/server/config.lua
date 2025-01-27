cfg = {
    debug = false,
    blacklist = 0,
    CommandChamados = "chamarpolicia",
    CommandOpen = 'mdt',

    webhook = {
      leaveorg = '',
      invite = '',
      demote = '',
      multar = '',
      prender = '',
    },
  
    BlipChamado = {126,2,0.6},
    CodesBlip = {  --blip/color
        ['QTH'] = {56,2,0.6},
        ['QTI'] = {8,1,0.6},
        ['QRR'] = {56,2,0.6},
        ['QRT'] = {56,2,0.6}
    },

    langs = {
      isBlackList = function(source,dia,mes,hora,minutos) return TriggerClientEvent("Notify",source, "negado","Atenção: Você so podera entrar em organização no dia "..dia.."/"..mes.." as "..hora..":"..minutos..".", 5000) end,
        haveBlackList = function(source,dia,mes,hora,minutos) return TriggerClientEvent("Notify",source, "negado","Este jogador está proibido de entrar em qualquer organização até dia "..dia.."/"..mes.." as "..hora..":"..minutos..".", 5000) end,
    },
  
    Groups = {

      
    ['DPolicia'] = {
        ['admin'] = {
          Config = {
            isAdmin = true --- se é lider ou nao
          },
          Recrute = {
          { "SUBCOMANDANTE" }, ----- grupos que ele pode convidar ( tem que ter a baixo)
          { "PMERJ9" },
          { "PC8" },
          { "PRF4" },
          { "BPCHQ9" },
          { "BOPE9" },
          { "RECOM9" },
          { "CORE8" },
          { "EB9" },
        },
      },

      ['SUBCOMANDANTE'] = {
        Config = {
          isAdmin = true --- se é lider ou nao
        },
        Recrute = {
          { "PMERJ9" },
          { "PC8" },
          { "PRF4" },
          { "BPCHQ9" },
          { "BOPE9" },
          { "RECOM9" },
          { "CORE8" },
          { "EB9" },
      },
      },

        ['PMERJ9'] = {
          Config = {
            isAdmin = true --- se é lider ou nao
          },
          Recrute = {
          { "PMERJ9" }, ----- grupos que ele pode convidar ( tem que ter a baixo)
          { "PMERJ8" },
          { "PMERJ7" },
          { "PMERJ6" },
          { "PMERJ5" },
          { "PMERJ4" },
          { "PMERJ3" },
          { "PMERJ2" },
          { "PMERJ1" },
          { "PMERJ1" },
        },
      },

      ['PC8'] = {
        Config = {
          isAdmin = true --- se é lider ou nao
        },
        Recrute = {
        { "PC7" },
        { "PC6" },
        { "PC5" },
        { "PC4" }, ----- grupos que ele pode convidar ( tem que ter a baixo)
        { "PC3" },
        { "PC2" },
        { "PC1" },
          },
        },

      ['PRF4'] = {
        Config = {
          isAdmin = true --- se é lider ou nao
        },
        Recrute = {
        { "PRF4" }, ----- grupos que ele pode convidar ( tem que ter a baixo)
        { "PRF3" },
        { "PRF2" },
        { "PRF1" },
          },
        },

      ['BPCHQ9'] = {
        Config = {
          isAdmin = true --- se é lider ou nao
        },
        Recrute = {
        { "BPCHQ9" }, ----- grupos que ele pode convidar ( tem que ter a baixo)
        { "BPCHQ8" },
        { "BPCHQ7" },
        { "BPCHQ6" },
        { "BPCHQ5" },
        { "BPCHQ4" },
        { "BPCHQ3" },
        { "BPCHQ2" },
        { "BPCHQ1" },
          },
        },

      ['BOPE9'] = {
        Config = {
          isAdmin = true --- se é lider ou nao
        },
        Recrute = {
        { "BOPE9" }, ----- grupos que ele pode convidar ( tem que ter a baixo)
        { "BOPE8" },
        { "BOPE7" },
        { "BOPE6" },
        { "BOPE5" },
        { "BOPE4" },
        { "BOPE3" },
        { "BOPE2" },
        { "BOPE1" },
          },
        },

      ['RECOM9'] = {
        Config = {
          isAdmin = true --- se é lider ou nao
        },
        Recrute = {
        { "RECOM9" }, ----- grupos que ele pode convidar ( tem que ter a baixo)
        { "RECOM8" },
        { "RECOM7" },
        { "RECOM6" },
        { "RECOM5" },
        { "RECOM4" },
        { "RECOM3" },
        { "RECOM2" },
        { "RECOM1" },
          },
        },

      ['CORE9'] = {
        Config = {
          isAdmin = true --- se é lider ou nao
        },
        Recrute = {
        { "CORE9" }, ----- grupos que ele pode convidar ( tem que ter a baixo)
        { "CORE8" },
        { "CORE7" },
        { "CORE6" },
        { "CORE5" },
        { "CORE4" },
        { "CORE3" },
        { "CORE2" },
        { "CORE1" },
          },
        },

        
      ['EB9'] = {
        Config = {
          isAdmin = true --- se é lider ou nao
        },
        Recrute = {
        { "EB9" }, ----- grupos que ele pode convidar ( tem que ter a baixo)
        { "EB8" },
        { "EB7" },
        { "EB6" },
        { "EB5" },
        { "EB4" },
        { "EB3" },
        { "EB2" },
        { "EB1" },
          },
        },

      ['PMERJ8'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['PMERJ7'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['PMERJ6'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['PMERJ5'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['PMERJ4'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['PMERJ3'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['PMERJ2'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['PMERJ1'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
  


    ['PC7'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
      Config = {
        isAdmin = true ---- se é lider ou nao
      },
      Recrute = {}
    },
    ['PC6'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
      Config = {
        isAdmin = true ---- se é lider ou nao
      },
      Recrute = {}
    },
    ['PC5'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
      Config = {
        isAdmin = true ---- se é lider ou nao
      },
      Recrute = {}
    },
    ['PC4'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
      Config = {
        isAdmin = true ---- se é lider ou nao
      },
      Recrute = {}
    },
    ['PC3'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
      Config = {
        isAdmin = true ---- se é lider ou nao
      },
      Recrute = {}
    },
    ['PC2'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
      Config = {
        isAdmin = true ---- se é lider ou nao
      },
      Recrute = {}
    },
    ['PC1'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
      Config = {
        isAdmin = true ---- se é lider ou nao
      },
      Recrute = {}
    },
    ['PRF4'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
      Config = {
        isAdmin = true ---- se é lider ou nao
      },
      Recrute = {}
    },
    ['PRF3'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
      Config = {
        isAdmin = true ---- se é lider ou nao
      },
      Recrute = {}
    },
    ['PRF2'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
      Config = {
        isAdmin = true ---- se é lider ou nao
      },
      Recrute = {}
    },
    ['PRF1'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
      Config = {
        isAdmin = true ---- se é lider ou nao
      },
      Recrute = {}
    },

    ['BPCHQ8'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
    Config = {
      isAdmin = true ---- se é lider ou nao
    },
    Recrute = {}
  },
  ['BPCHQ7'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
    Config = {
      isAdmin = true ---- se é lider ou nao
    },
    Recrute = {}
  },
  ['BPCHQ6'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
    Config = {
      isAdmin = true ---- se é lider ou nao
    },
    Recrute = {}
  },
  ['BPCHQ5'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
    Config = {
      isAdmin = true ---- se é lider ou nao
    },
    Recrute = {}
  },
  ['BPCHQ4'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
    Config = {
      isAdmin = true ---- se é lider ou nao
    },
    Recrute = {}
  },
  ['BPCHQ3'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
    Config = {
      isAdmin = true ---- se é lider ou nao
    },
    Recrute = {}
  },
  ['BPCHQ2'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
    Config = {
      isAdmin = true ---- se é lider ou nao
    },
    Recrute = {}
  },
  ['BPCHQ1'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
    Config = {
      isAdmin = true ---- se é lider ou nao
    },
    Recrute = {}
  },
  ['BOPE8'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['BOPE7'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['BOPE6'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['BOPE5'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['BOPE4'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['BOPE3'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['BOPE2'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['BOPE1'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },


      ['RECOM8'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['RECOM7'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['RECOM6'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['RECOM5'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['RECOM4'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['RECOM3'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['RECOM2'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['RECOM1'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },

      ['CORE8'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['CORE7'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['CORE6'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['CORE5'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['CORE4'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['CORE3'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['CORE2'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },
      ['CORE1'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
        Config = {
          isAdmin = true ---- se é lider ou nao
        },
        Recrute = {}
      },

     


  ['EB8'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
  Config = {
    isAdmin = true ---- se é lider ou nao
  },
  Recrute = {}
},
['EB7'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
  Config = {
    isAdmin = true ---- se é lider ou nao
  },
  Recrute = {}
},
['EB6'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
  Config = {
    isAdmin = true ---- se é lider ou nao
  },
  Recrute = {}
},
['EB5'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
  Config = {
    isAdmin = true ---- se é lider ou nao
  },
  Recrute = {}
},
['EB4'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
  Config = {
    isAdmin = true ---- se é lider ou nao
  },
  Recrute = {}
},
['EB3'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
  Config = {
    isAdmin = true ---- se é lider ou nao
  },
  Recrute = {}
},
['EB2'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
  Config = {
    isAdmin = true ---- se é lider ou nao
  },
  Recrute = {}
},
['EB1'] = { --- exemplo de grupo que o de cima pode convidar e os que esse grupo pode convidar ( pode deixar vazio )
  Config = {
    isAdmin = true ---- se é lider ou nao
  },
  Recrute = {}
},




    },


    }
   }