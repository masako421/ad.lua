local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LP = Players.LocalPlayer

local food = {}
for _, part in ipairs(workspace:GetDescendants()) do
    if part.Name == "new_food" then
        table.insert(food, part)
    end
end

local Index = 1

local function yess()
    local Stop = math.min(Index + 25 - 1, #food)
        
    for i = Index, Stop do
            local food = food[i]
        if LP.Character and LP.Character:FindFirstChild("HumanoidRootPart") then
            local hrp = LP.Character.HumanoidRootPart
            food.CanCollide = false
            food.Transparency = 1
            food.CFrame = hrp.CFrame + Vector3.new(0, 0, 0)
        end
    end

    Index = Stop + 1
    if Index <= #food then
        task.delay(0.1, yess)
    end
end
yess()
