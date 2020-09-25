local Roact = require(game.ReplicatedStorage.Roact)

local Greeting = Roact.Component:extend("Greeting")

function Greeting:render()
	return Roact.createElement("ScreenGui",{
		Name = "Interface";
	},{
		[self.props.name] = Roact.createElement("TextLabel",{
			Size = UDim2.new(0,200,0,50);
		})
	})
end

return Greeting