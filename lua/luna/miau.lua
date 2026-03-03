local lush = require("lush")
local hsl = lush.hsl

local MIAU = {}
---@return table
function MIAU.get()
	return {
		["base"] = hsl(280, 25, 14),
		["surface"] = hsl(280, 25, 20),
		["overlay"] = hsl(280, 25, 26),
		["muted"] = hsl(280, 15, 40),
		["faint"] = hsl(280, 25, 70),
		["text"] = hsl(280, 50, 90),
		["light"] = hsl(280, 100, 96),
		["rei"] = hsl(360, 80, 70),
		["makoto"] = hsl(75, 80, 70),
		["minako"] = hsl(45, 80, 70),
		["ami"] = hsl(210, 70, 70),
		["hotaru"] = hsl(270, 70, 70),
		["usagi"] = hsl(330, 70, 70),
		["low"] = hsl(280, 24, 15),
		["med"] = hsl(280, 22, 30),
		["high"] = hsl(280, 20, 45),
		["hino"] = hsl(360, 90, 80),
		["kino"] = hsl(75, 90, 80),
		["aino"] = hsl(45, 90, 80),
		["mizuno"] = hsl(210, 80, 80),
		["tomoe"] = hsl(270, 80, 80),
		["tsukino"] = hsl(330, 80, 80),
	}
end
return MIAU
