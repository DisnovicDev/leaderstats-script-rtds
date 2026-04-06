local frame = script.Parent
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local remoteEvent = ReplicatedStorage:WaitForChild("StatUpdate")

-- Função única para processar cliques em qualquer botão dentro deste Frame
for _, child in pairs(frame:GetChildren()) do
    if child:IsA("TextButton") then
        child.MouseButton1Click:Connect(function()
            
            -- Aqui definimos a lógica baseada no nome ou texto do botão
            if child.Name == "AddCashBtn" then
                remoteEvent:FireServer("Cash", 10)
            elseif child.Name == "MegaHackBtn" then
                remoteEvent:FireServer("Cash", 1000)
            end
            
        end)
    end
end
