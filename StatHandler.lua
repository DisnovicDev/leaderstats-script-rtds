local ReplicatedStorage = game:GetService("ReplicatedStorage")
local changeStatEvent = Instance.new("RemoteEvent")
changeStatEvent.Name = "ChangeStatEvent"
changeStatEvent.Parent = ReplicatedStorage

changeStatEvent.OnServerEvent:Connect(function(player, statName, amount)
    local leaderstats = player:FindFirstChild("leaderstats")
    if leaderstats then
        local stat = leaderstats:FindFirstChild(statName)
        if stat then
            stat.Value = stat.Value + amount
        end
    end
end)
