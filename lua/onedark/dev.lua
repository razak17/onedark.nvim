-- Ported from TokyoNight's "Dev Mode" feature
-- Shows colors and highlights while editing the theme, hot-reloads on save.

-- All credits to the original author: @folke
-- https://github.com/folke/tokyonight.nvim/blob/main/.lazy.lua

local source = vim.uv.fs_realpath(debug.getinfo(1, "S").source:sub(2))

local M = {
	module = "onedark",
	colorscheme = "onedark",
	opts = {},
	root = vim.fs.dirname(vim.fs.dirname(vim.fs.dirname(source))),
	globals = { vim = vim },
	cache = {}, ---@type table<string, boolean>
}

function M.reset()
	local palette = require("onedark.palette")
	M.globals.palette = palette
	M.globals.P = palette
end

---@param name string
---@param buf number
function M.hl_group(name, buf)
	return vim.api.nvim_buf_get_name(buf):find("kinds") and "LspKind" .. name or name
end

local function reload()
	for k in pairs(package.loaded) do
		if (k == M.module or k:find("^" .. M.module .. "%.")) and k ~= "onedark.dev" then
			package.loaded[k] = nil
		end
	end
	M.cache = {}
	require(M.module).setup(M.opts)
	M.reset()
	local colorscheme = vim.g.colors_name or M.colorscheme
	colorscheme = colorscheme:find(M.colorscheme) and colorscheme or M.colorscheme
	vim.cmd.colorscheme(colorscheme)
	local hi = require("mini.hipatterns")
	for _, buf in ipairs(hi.get_enabled_buffers()) do
		hi.update(buf)
	end
end
reload = vim.schedule_wrap(reload)

function M.highlighters()
	local hi = require("mini.hipatterns")
	return {
		hex_color = hi.gen_highlighter.hex_color({ priority = 2000 }),

		hl_group = {
			pattern = function(buf)
				return vim.api.nvim_buf_get_name(buf):find("lua/" .. "onedark/plugin")
					and '^%s*%[?"?()[%w%.@]+()"?%]?%s*='
			end,
			group = function(buf, match)
				local group = M.hl_group(match, buf)
				if group then
					if M.cache[group] == nil then
						M.cache[group] = false
						local hl = vim.api.nvim_get_hl(0, { name = group, link = false, create = false })
						if not vim.tbl_isempty(hl) then
							hl.fg = hl.fg or vim.api.nvim_get_hl(0, { name = "Normal", link = false }).fg
							M.cache[group] = true
							vim.api.nvim_set_hl(0, group .. "Dev", hl)
						end
					end
					return M.cache[group] and group .. "Dev" or nil
				end
			end,
			extmark_opts = { priority = 2000 },
		},

		hl_color = {
			pattern = {
				"%f[%w]()P%.[%w_%.]+()%f[%W]",
				"%f[%w]()palette%.[%w_%.]+()%f[%W]",
				"%f[%w]()vim%.g%.terminal_color_%d+()%f[%W]",
			},
			group = function(_, match)
				local parts = vim.split(match, ".", { plain = true })
				local color = vim.tbl_get(M.globals, unpack(parts))
				return type(color) == "string"
					and color:match("^#%x%x%x%x%x%x$")
					and require("mini.hipatterns").compute_hex_color_group(color, "fg")
			end,
			extmark_opts = function(_, _, data)
				return {
					virt_text = { { "⬤ ", data.hl_group } },
					virt_text_pos = "inline",
					priority = 2000,
				}
			end,
		},
	}
end

---Enable color previews and reload the theme on save. Requires mini.hipatterns.
---@param opts? table mini.hipatterns configuration
function M.setup(opts)
	local hi = require("mini.hipatterns")
	local config = vim.tbl_deep_extend("force", {}, hi.config, opts or {})
	config.highlighters = vim.tbl_extend("keep", config.highlighters, M.highlighters())
	hi.setup(config)

	local augroup = vim.api.nvim_create_augroup("onedark_dev", { clear = true })
	vim.api.nvim_create_autocmd("BufWritePost", {
		group = augroup,
		pattern = M.root .. "/lua/onedark/**.lua",
		callback = reload,
	})
	vim.schedule(reload)
end

return M
