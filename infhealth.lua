local players = game:GetService("Players")
local player = players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character.Humanoid
while true do
	humanoid.Health = humanoid.MaxHealth
	wait(0.01)
end
