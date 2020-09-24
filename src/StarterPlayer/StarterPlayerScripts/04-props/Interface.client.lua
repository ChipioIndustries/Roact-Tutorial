local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local Roact = require(game.ReplicatedStorage.Roact)

local RandomComponent = require(script.Parent:WaitForChild("RandomComponent"))

local interface = Roact.createElement(RandomComponent,{
	className = "ScreenGui"
})

Roact.mount(interface,playerGui)