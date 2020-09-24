local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local Roact = require(game.ReplicatedStorage.Roact)

local interface = Roact.createElement("ScreenGui",{
	Name = "Interface";
},{
	Label = Roact.createElement("TextLabel",{
		Text = "Hello, Roact!";
		Size = UDim2.new(0,200,0,50);
	})
})

Roact.mount(interface,playerGui)