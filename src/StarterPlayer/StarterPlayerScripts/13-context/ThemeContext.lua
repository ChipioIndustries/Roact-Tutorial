local Roact = require(game.ReplicatedStorage.Roact)

local ThemeContext = Roact.createContext({
	backgroundColor = Color3.new(0.3,0.3,0.3);
	textColor = Color3.new(1,1,1);
})

return ThemeContext