local Roact = require(game.ReplicatedStorage.Roact)

local Button = Roact.Component:extend("Button")

function Button:render()
	return Roact.createElement("TextButton",{
		Size = UDim2.new(0,32,0,32);
		Text = "X";
		BackgroundColor3 = Color3.new(1,0.3,0.3);
		[Roact.Event.Activated] = function()
			self.props.callback()
		end;
	})
end

return Button