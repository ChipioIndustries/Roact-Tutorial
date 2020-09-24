local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local Roact = require(game.ReplicatedStorage.Roact)

local TextBox = require(script.Parent:WaitForChild("TextBox"))

local interface = Roact.createElement("ScreenGui",{},{
	Roact.createElement(TextBox)
})

Roact.mount(interface,playerGui)