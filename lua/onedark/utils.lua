local M = {}
local fmt = string.format

---Convert a hex color to RGB
---@param color string
---@return number
---@return number
---@return number
local function hex_to_rgb(color)
	local hex = color:gsub("#", "")
	return tonumber(hex:sub(1, 2), 16), tonumber(hex:sub(3, 4), 16), tonumber(hex:sub(5), 16)
end

local function alter(attribute, percent)
	return math.floor(attribute * (100 + percent) / 100)
end

---@source https://stackoverflow.com/q/5560248
---@see: https://stackoverflow.com/a/37797380
---Darken a specified hex color
---@param color string
---@param percent number
---@return string
function M.alter_color(color, percent)
	local r, g, b = hex_to_rgb(color)
	if not r or not g or not b then
		return "NONE"
	end
	r, g, b = alter(r, percent), alter(g, percent), alter(b, percent)
	r, g, b = math.min(r, 255), math.min(g, 255), math.min(b, 255)
	return fmt("#%02x%02x%02x", r, g, b)
end

--- darkens a color
---@param color string
---@param amount? integer
---@return string
function M.fade(color, amount)
	if amount then
		return M.alter_color(color, amount)
	end
	return M.alter_color(color, -20)
end

return M
