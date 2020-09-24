local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local Roact = require(game.ReplicatedStorage.Roact)

local Labels = Roact.Component:extend("Labels")

local contents = {
	"hello world";
	"owo wats this";
}

function Labels:init()
	self.partRef = Roact.createRef()
end

function Labels:render()
	local labels = {}
	for index,content in pairs(contents) do
		labels[index] = Roact.createElement("TextLabel",{
			Size = UDim2.new(0,200,0,50);
			Text = content;
		})
	end
	return Roact.createFragment(labels)
end

return Labels