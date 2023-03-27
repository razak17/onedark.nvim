local M = {}
local fmt = string.format

--- Change the brightness of a color, negative numbers darken and positive ones brighten
---@param color string A hex color
---@param percent float a negative number darkens and a positive one brightens
function M.tint(color, percent)
	assert(color and percent, "cannot alter a color without specifying a color and percentage")
	local r = tonumber(color:sub(2, 3), 16)
	local g = tonumber(color:sub(4, 5), 16)
	local b = tonumber(color:sub(6), 16)
	if not r or not g or not b then
		return "NONE"
	end
	local blend = function(component)
		component = math.floor(component * (1 + percent))
		return math.min(math.max(component, 0), 255)
	end
	return fmt("#%02x%02x%02x", blend(r), blend(g), blend(b))
end

return M
