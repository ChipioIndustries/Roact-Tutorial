local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local Roact = require(game.ReplicatedStorage.Roact)

function Interface(props)
	return Roact.createElement("ScreenGui",{},{
		Label = Roact.createElement("TextLabel",props,props[Roact.Children])
	})
end

local interface = Roact.createElement(Interface,{
	Size = UDim2.new(0,200,0,50);
	Text = "Hello, Roact!";
})

Roact.mount(interface,playerGui)