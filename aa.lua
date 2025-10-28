local lp = game.Players.LocalPlayer
local food = {}
for _, v in ipairs(workspace:GetDescendants()) do
	if v.Name == "new_food" then
		table.insert(food, v)
	end
end
local i = 1
local function move()
	local stop = math.min(i + 25, #food)
	for n = i, stop do
		local f = food[n]
		if f and lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
			local hrp = lp.Character.HumanoidRootPart
			f.CanCollide = false
			f.Transparency = 1
			f.CFrame = hrp.CFrame
		end
	end
	i = stop + 1
	if i <= #food then
		task.delay(0.1, move)
	end
end
move()
