local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local Roact = require(game.ReplicatedStorage.Roact)

local Frame = require(script.Parent:WaitForChild("Frame"))

local interface = Roact.createElement("ScreenGui",{
	Name = "Interface";
	ResetOnSpawn = false;
},{
	Frame = Roact.createElement(Frame)
})

Roact.mount(interface,playerGui)