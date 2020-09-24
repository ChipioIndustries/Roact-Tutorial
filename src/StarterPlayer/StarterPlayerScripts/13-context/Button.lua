local Roact = require(game.ReplicatedStorage.Roact)

local ThemeContext = require(script.Parent:WaitForChild("ThemeContext"))
local Button = Roact.Component:extend("Button")

function Button:render()
	return Roact.createElement(ThemeContext.Consumer,{
		render = function(theme)
			return Roact.createElement("TextButton",{
				Position = self.props.Position;
				Size = UDim2.new(0,200,0,50);
				BackgroundColor3 = theme.backgroundColor;
				TextColor3 = theme.textColor;
			})
		end
	})
end

return Button