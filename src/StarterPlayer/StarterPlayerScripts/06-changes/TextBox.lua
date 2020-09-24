local Roact = require(game.ReplicatedStorage.Roact)

local TextBox = Roact.Component:extend("TextBox")

function TextBox:render()
	return Roact.createElement("TextBox",{
		Size = UDim2.new(0,200,0,50);
		[Roact.Change.Text] = function(object)
			print(object.Text)
		end
	})
end

return TextBox