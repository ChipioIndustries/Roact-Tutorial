local Roact = require(game.ReplicatedStorage.Roact)

local ThemeContext = require(script.Parent:WaitForChild("ThemeContext"))

local SubTheme = Roact.Component:extend("SubTheme")

function SubTheme:render()
	return Roact.createElement(ThemeContext.Provider,{
		value = {
			backgroundColor = Color3.new(1,0.3,0.3);
			textColor = Color3.new(1,1,1);
		}
	},self.props[Roact.Children])
end

return SubTheme