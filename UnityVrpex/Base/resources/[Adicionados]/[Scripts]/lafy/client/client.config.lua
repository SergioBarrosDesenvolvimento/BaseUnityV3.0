Config = {
  -- Quantas vezes por segundo a localização do jogador será atualizada em relação a música
  -- Não há motivo para esse número ser maior que 10
  refreshRate = 4,
  realism = true,
  realismIgnore = {
    [`celta`] = true,
    [`saveirog7`] = true,
  },

  -- Volume máximo, é bom aumentar este valor quando muitos jogadores reclamarem de som baixo
  -- Valor mínimo 0, Valor máximo 1
  baseVolume = 1,

  -- Tecla utilizada para deixar a caixa de som no chão, ou pegar do chão
  dropRadioKey = 'G',

  -- Valor mínimo de vida que o jogador precisa ter para abrir a NUI
  minimumHealth = 101,

  -- A música vai parar de tocar se o jogador morrer?
  stopOnDeath = false,

  -- Lista de coordenadas de interiores onde o som será desabilitado (precisa ser dentro do interior)
  blockedInteriors = {
    vector3(148.95, -1039.27, 29.37), -- Banco da praça
  },

  isWindowsOpen = function(vehicle)
    -- Exemplo da base creative network
    return Entity(vehicle).state.Windows
  end,

  -- Esta notify acontece quando o jogador não tem permissão
  -- bool == nil   (Jogador sem permissão)
  -- bool == true  (O jogador digitou /som on)
  -- bool == false (O jogador digitou /som off)
  notify = function(bool)
    if type(bool) == 'number' then
      TriggerEvent('Notify', 'Spotify', 'Volume atual: ' .. bool .. '%', 'verde', 5000)
    elseif bool == nil then
      TriggerEvent('Notify', 'Spotify', 'Você não tem permissão', 'vermelho', 5000)
    elseif bool then
      TriggerEvent('Notify', 'Spotify', 'Status do som: Ligado',  'verde', 5000)
    else
      TriggerEvent('Notify', 'Spotify', 'Status do som: Desligado',  'vermelho', 5000)
    end
  end
}
