-- Carrega a SolaraLib (certifique-se de que seu executor suporta isso)
local SolaraLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/IlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIl/SolaraLibrary/main/Library.lua"))()

-- Cria a janela principal
local Window = SolaraLib:CreateWindow("SatScript - 99 Noites Na Floresta")

-- ABA: JOGADOR
local jogadorTab = Window:Tab("JOGADOR")

jogadorTab:Toggle("Aura", false, function(state)
    print("Aura:", state)
end)

jogadorTab:Slider("Distância da Aura", 1, 500, 100, 1, function(val)
    print("Distância da Aura:", val)
end)

jogadorTab:Toggle("Correr Rápido", false, function(state)
    print("Correr Rápido:", state)
end)

jogadorTab:Slider("Velocidade de Corrida", 1, 100, 50, 1, function(val)
    print("Velocidade Corrida:", val)
end)

jogadorTab:Toggle("Pulo Infinito", false, function(state)
    print("Pulo Infinito:", state)
end)

jogadorTab:Toggle("Voar", false, function(state)
    print("Voar:", state)
end)

jogadorTab:Toggle("Atravessar Tudo", false, function(state)
    print("Atravessar Tudo:", state)
end)

jogadorTab:Button("Abrir Baús", function()
    print("Baús abertos com 1 clique")
end)

jogadorTab:Button("Salvar Amigos", function()
    print("Amigos salvos com 1 clique")
end)

-- ABA: AUTOMAÇÃO
local automacaoTab = Window:Tab("AUTOMAÇÃO")

automacaoTab:Dropdown("Derrubar Árvores", {"Árvore Pequena", "Árvore Grande"}, function(val)
    print("Selecionado para derrubar:", val)
end)

automacaoTab:Slider("Quantidade de Árvores", 1, 100, 10, 1, function(val)
    print("Quantidade:", val)
end)

automacaoTab:Toggle("Ativar Derrubar Árvores", false, function(state)
    print("Derrubar Árvores:", state)
end)

automacaoTab:Slider("Distância para Plantar", 10, 100, 50, 5, function(val)
    print("Distância de Plantio:", val)
end)

automacaoTab:Slider("Quantidade de Mudas", 1, 100, 10, 1, function(val)
    print("Quantidade de Mudas:", val)
end)

automacaoTab:Button("Plantar Árvores em Círculo", function()
    print("Plantando árvores em círculo...")
end)

automacaoTab:Dropdown("Coletar Itens", {"Moedas", "Flores"}, function(val)
    print("Selecionado para coleta:", val)
end)

automacaoTab:Toggle("Ativar Coleta Automática", false, function(state)
    print("Coleta Automática:", state)
end)
