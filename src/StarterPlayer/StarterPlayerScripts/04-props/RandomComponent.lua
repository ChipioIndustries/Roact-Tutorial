local Roact = require(game.ReplicatedStorage.Roact)

local RandomComponent = Roact.Component:extend("RandomComponent")

function RandomComponent:render()
	return Roact.createElement(self.props.className)
end

return RandomComponent