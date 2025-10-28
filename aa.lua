local Money_to_add = 1000
local Money_to_remove = 0

local trash_multiplier = 100000
game:GetService("ReplicatedStorage"):WaitForChild("Purchase_Cairo_Crate"):FireServer(-Money_to_add/trash_multiplier)
game:GetService("ReplicatedStorage"):WaitForChild("Purchase_Cairo_Crate"):FireServer(Money_to_remove/trash_multiplier)
