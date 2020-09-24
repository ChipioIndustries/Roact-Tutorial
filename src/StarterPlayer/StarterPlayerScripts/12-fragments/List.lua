local Roact = require(game.ReplicatedStorage.Roact)

local Labels = require(script.Parent.Labels)

local List = Roact.Component:extend("List")

function List:render()
	return Roact.createElement("Frame",{
		Size = UDim2.new(0,400,0,200);
	},{
		UIListLayout = Roact.createElement("UIListLayout");
		Labels = Roact.createElement(Labels)
	})
end

return List