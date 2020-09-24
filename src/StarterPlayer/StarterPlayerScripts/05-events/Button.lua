local Roact = require(game.ReplicatedStorage.Roact)

local Button = Roact.Component:extend("Button")

function Button:render()
	return Roact.createElement("TextButton",{
		Size = UDim2.new(0,200,0,50);
		[Roact.Event.Activated] = function(object,inputObject,clickCount)
			print(clickCount)
		end
	})
end

return Button