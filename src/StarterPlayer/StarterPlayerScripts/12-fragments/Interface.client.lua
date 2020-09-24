local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local Roact = require(game.ReplicatedStorage.Roact)

local List = require(script.Parent:WaitForChild("List"))

local interface = Roact.createElement("ScreenGui",{},{
	Roact.createElement(List)
})

Roact.mount(interface,playerGui)