local Roact = require(game.ReplicatedStorage.Roact)

local Button = Roact.Component:extend("Button")

function Button:init()
	self.clickCount, self.updateClickCount = Roact.createBinding(0)
end

function Button:render()
	return Roact.createElement("TextButton",{
		Size = UDim2.new(0,200,0,50);
		Text = self.clickCount;
		[Roact.Event.Activated] = function(object,inputObject,clickCount)
			self.updateClickCount(self.clickCount:getValue()+1)
		end
	})
end

return Button