local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local Roact = require(game.ReplicatedStorage.Roact)

local SurfaceGui = Roact.Component:extend("SurfaceGui")

function SurfaceGui:init()
	self.partRef = Roact.createRef()
end

function SurfaceGui:render()
	return Roact.createElement("Part",{
		Anchored = true;
		Position = Vector3.new(0,10,0);
		[Roact.Ref] = self.partRef;
	},{
		Roact.createElement(Roact.Portal,{
			target = playerGui;
		},{
			SurfaceGui = Roact.createElement("SurfaceGui",{
				Adornee = self.partRef;
			},{
				TextLabel = Roact.createElement("TextLabel",{
					Text = "Hello, Roact!";
					Size = UDim2.new(1,0,1,0);
				})
			})
		})
	})
end

return SurfaceGui