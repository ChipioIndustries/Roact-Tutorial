local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local Roact = require(game.ReplicatedStorage.Roact)

local Greeting = require(script.Parent:WaitForChild("Greeting"))

local interface = Roact.createElement(Greeting,{
	name = "TestName"
})

Roact.mount(interface,playerGui)