local Roact = require(game.ReplicatedStorage.Roact)

local Button = require(script.Parent:WaitForChild("Button"))
local Frame = Roact.Component:extend("Frame")

function Frame:init()
	self.visibility,self.updateVisibility = Roact.createBinding(true)
end

function Frame:render()
	return Roact.createElement("Frame",{
		Size = UDim2.new(0,400,0,250);
		AnchorPoint = Vector2.new(0.5,0.5);
		Position = UDim2.new(0.5,0,0.5,0);
		Visible = self.visibility;
	},{
		Close = Roact.createElement(Button,{
			callback = function()
				self.updateVisibility(false)
			end
		})
	})
end

return Frame