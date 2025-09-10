-- Criar janela com título personalizado
local Window = SolaraLib:CreateWindow("SatScript - 99 Noites Na Floresta")

-- ========== Aba JOGADOR ==========
local jogadorTab = Window:Tab("JOGADOR")

-- Aura
local auraAtiva, auraDistancia = false, 100
jogadorTab:Toggle("Ativar Aura", auraAtiva, function(state)
    auraAtiva = state
    print("Aura ativada:", state)
end)
jogadorTab:Slider("Distância Aura", 1, 500, auraDistancia, 1, function(value)
    auraDistancia = value
    print("Distância Aura ajustada:", value)
end)

-- Correr Rápido
local correrAtivo, correrVelocidade = false, 50
jogadorTab:Toggle("Ativar Correr Rápido", correrAtivo, function(state)
    correrAtivo = state
    print("Correr Rápido ativado:", state)
end)
jogadorTab:Slider("Velocidade Correr", 1, 100, correrVelocidade, 1, function(value)
    correrVelocidade = value
    print("Velocidade Correr ajustada:", value)
end)

-- Pulo Infinito
local puloAtivo = false
jogadorTab:Toggle("Ativar Pulo Infinito", puloAtivo, function(state)
    puloAtivo = state
    print("Pulo Infinito ativado:", state)
end)

-- Voar
local voarAtivo = false
jogadorTab:Toggle("Ativar Voar", voarAtivo, function(state)
    voarAtivo = state
    print("Voar ativado:", state)
end)

-- Atravessar Tudo
local noclipAtivo = false
jogadorTab:Toggle("Ativar Atravessar Tudo", noclipAtivo, function(state)
    noclipAtivo = state
    print("Atravessar Tudo ativado:", state)
end)

-- Abrir Baús (1 clique)
jogadorTab:Button("Abrir Baús", function()
    print("Abrir Baús - clique acionado")
end)

-- Salvar Amigos (1 clique)
jogadorTab:Button("Salvar Amigos", function()
    print("Salvar Amigos - clique acionado")
end)

-- ========== Aba AUTOMAÇÃO ==========
local automacaoTab = Window:Tab("AUTOMAÇÃO")

-- Derrubar Árvores
local tipoArvore = "Árvore Pequena"
local quantidadeArvores = 1

automacaoTab:Dropdown("Tipo de Árvore", {"Árvore Pequena", "Árvore Grande"}, function(value)
    tipoArvore = value
    print("Tipo de árvore selecionado:", value)
end)

automacaoTab:Slider("Quantidade", 1, 100, quantidadeArvores, 1, function(value)
    quantidadeArvores = value
    print("Quantidade para derrubar:", value)
end)

automacaoTab:Toggle("Ativar Derrubar Árvores", false, function(state)
    print("Derrubar Árvores ativado:", state, "Tipo:", tipoArvore, "Quantidade:", quantidadeArvores)
end)

-- Plantar Árvores (em círculo)
local distanciaPlantio = 50
local quantidadeMudas = 10

automacaoTab:Slider("Distância para Plantar", 10, 100, distanciaPlantio, 5, function(value)
    distanciaPlantio = value
    print("Distância para plantar:", value)
end)

automacaoTab:Slider("Quantidade de Mudas", 1, 100, quantidadeMudas, 1, function(value)
    quantidadeMudas = value
    print("Quantidade de mudas:", value)
end)

automacaoTab:Button("Plantar Árvores", function()
    print("Plantando", quantidadeMudas, "mudas em círculo com raio", distanciaPlantio)
end)

-- Coleta Automática
local tipoColeta = "Moedas"
automacaoTab:Dropdown("Tipo de Coleta", {"Moedas", "Flores"}, function(value)
    tipoColeta = value
    print("Tipo de coleta selecionado:", value)
end)

automacaoTab:Toggle("Ativar Coleta Automática", false, function(state)
    print("Coleta Automática ativado:", state, "Tipo:", tipoColeta)
end)
adicionando painel SatScript
