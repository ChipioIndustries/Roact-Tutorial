local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local Roact = require(game.ReplicatedStorage.Roact)

local Button = require(script.Parent:WaitForChild("Button"))

local interface = Roact.createElement("ScreenGui",{},{
	Roact.createElement(Button)
})

Roact.mount(interface,playerGui)