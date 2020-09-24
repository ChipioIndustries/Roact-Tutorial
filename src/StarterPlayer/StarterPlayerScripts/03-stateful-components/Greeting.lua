local Roact = require(game.ReplicatedStorage.Roact)

local Greeting = Roact.Component:extend("Greeting")

function Greeting:render()
	return Roact.createElement("ScreenGui",{
		Name = "Interface";
	},{
		Roact.createElement("TextLabel",{
			Name = self.props.name;
			Size = UDim2.new(0,200,0,50);
		})
	})
end

return Greeting