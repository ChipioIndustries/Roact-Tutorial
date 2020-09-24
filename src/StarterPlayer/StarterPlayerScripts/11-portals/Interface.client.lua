local Roact = require(game.ReplicatedStorage.Roact)

local SurfaceGui = require(script.Parent:WaitForChild("SurfaceGui"))

local interface = Roact.createElement(SurfaceGui)

Roact.mount(interface,workspace)