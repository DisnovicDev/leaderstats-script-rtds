local remote = Instance.new("RemoteEvent")
remote.Name = "ApplyFakeLag"
remote.Parent = game.ReplicatedStorage

remote.OnServerEvent:Connect(function(player, target, delayMs)
	if not target.Character then return end
	
	local root = target.Character:FindFirstChild("HumanoidRootPart")
	if not root then return end
	
	local duration = 2
	local interval = delayMs / 1000
	
	local lastPos = root.Position
	
	for i = 1, duration / interval do
		task.wait(interval)
		root.CFrame = CFrame.new(lastPos)
	end
end)
