local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local Roact = require(game.ReplicatedStorage.Roact)

local Button = require(script.Parent:WaitForChild("Button"))
local SubTheme = require(script.Parent:WaitForChild("SubTheme"))

local interface = Roact.createElement("ScreenGui",{},{
	Button1 = Roact.createElement(Button,{
		Position = UDim2.new(0,0,0,0);
	});
	SubTheme = Roact.createElement(SubTheme,{},{
		Button2 = Roact.createElement(Button,{
			Position = UDim2.new(0,0,0,50);
		});
	});
})

Roact.mount(interface,playerGui)