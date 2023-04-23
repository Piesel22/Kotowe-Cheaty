local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Kot_CatBoblox's cheats", HidePremium = true, SaveConfig = true, ConfigFolder = "OrionTest"})
local Universal = Window:MakeTab({
	Name = "Universal",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Rat = Window:MakeTab({
	Name = "Rat",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Universal:AddButton({	
	Name = "Noclip",
	Callback = function()
		game.Players.LocalPlayer.Character.Head.CanCollide = false
		game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
		game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
		game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
	end
})
Universal:AddButton({	
	Name = "Clip",
	Callback = function()
		game.Players.LocalPlayer.Character.Head.CanCollide = true
		game.Players.LocalPlayer.Character.UpperTorso.CanCollide = true
		game.Players.LocalPlayer.Character.LowerTorso.CanCollide = true
		game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = true
	end
})

local pfly = false
Universal:AddButton({
	Name = "Platform Fly (R6)",
	Callback = function()
		local platform = Instance.new('Part')
		platform.Parent = game.Players.LocalPlayer.Character
		platform.Size = Vector3.new(10, 1, 10)
		platform.Anchored = true
		pfly = true
		while pfly do
			wait(.1)
			platform.Position = Vector3.new(platform.Parent.HumanoidRootPart.Position.X, platform.Parent.HumanoidRootPart.Position.Y - 4.75, platform.Parent.HumanoidRootPart.Position.Z)
		end
		
  	end    
})
Universal:AddButton({
	Name = "Platform Fly (R15)",
	Callback = function()
		local platform = Instance.new('Part')
		platform.Parent = game.Players.LocalPlayer.Character
		platform.Size = Vector3.new(10, 1, 10)
		platform.Anchored = true
		pfly = true
		while pfly do
			wait(.1)
			platform.Position = Vector3.new(platform.Parent.HumanoidRootPart.Position.X, platform.Parent.HumanoidRootPart.Position.Y - 3.5, platform.Parent.HumanoidRootPart.Position.Z)
		end
		
  	end    
})
Universal:AddButton({
	Name = "Fly (W.I.P)",
	Callback = function()
		local run = game:GetService("RunService")
		local players = game:GetService("Players")
		local player = players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local hrp = character:WaitForChild("HumanoidRootPart")

		local camera = workspace.CurrentCamera
		local platform = Instance.new('Part')
		platform.Parent = game.Players.LocalPlayer.Character
		platform.Size = Vector3.new(10, 1, 10)
		platform.Anchored = true
		pfly = true
		run.RenderStepped:Connect(function()
			platform.CFrame = CFrame.lookAt(platform.Position, camera.CFrame.Position) * CFrame.Angles(0, math.pi, 0)
			platform.Position = Vector3.new(platform.Parent.HumanoidRootPart.Position.X, platform.Parent.HumanoidRootPart.Position.Y - 3.5, platform.Parent.HumanoidRootPart.Position.Z)
			hrp.CFrame = CFrame.lookAt(hrp.Position, camera.CFrame.Position) * CFrame.Angles(0, math.pi, 0)
		end)
		-- while pfly do
		-- 	wait(.1)
		-- 	platform.Position = Vector3.new(platform.Parent.HumanoidRootPart.Position.X, platform.Parent.HumanoidRootPart.Position.Y - 3.5, platform.Parent.HumanoidRootPart.Position.Z)
		-- end
		
	end
})
local spinY = 50
local CurrentSpinY = 0
Rat:AddButton({
	Name = "Spin like a rat",
	Callback = function()
		local run = game:GetService("RunService")
		local players = game:GetService("Players")
		local player = players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local hrp = character:WaitForChild("HumanoidRootPart")

		local camera = workspace.CurrentCamera
		while true do
			CurrentSpinY = CurrentSpinY + spinY
			run.RenderStepped:Connect(function()
				hrp.CFrame = CFrame.lookAt(hrp.Position, Vector3.new(hrp.Position.X,0,hrp.Position.Z)) * CFrame.Angles(0, CurrentSpinY / 100, 0)
			end)
			wait(0.01)
		end
	end
})
Rat:AddSlider({
	Name = "Spin Speed",
	Min = 1,
	Max = 500,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		spinY = Value
	end    
})
Rat:AddButton({
	Name = "Wierder spinning",
	Callback = function()
		local spinY = 50

		local run = game:GetService("RunService")
		local players = game:GetService("Players")
		local player = players.LocalPlayer
		local character = player.Character or player.CharacterAdded:Wait()
		local hrp = character:WaitForChild("HumanoidRootPart")

		local camera = workspace.CurrentCamera
		local CurrentSpinY = 0
		spinY = spinY / 100
		while true do
			CurrentSpinY = CurrentSpinY + spinY
			run.RenderStepped:Connect(function()
				--hrp.CFrame = CFrame.lookAt(hrp.Position, Vector3.new(0,0,0)) * CFrame.Angles(0, CurrentSpinY, 0)
				hrp.Orientation = Vector3.new(0, CurrentSpinY, 0)
			end)
			wait(0.01)
		end
	end
})
OrionLib:Init()
