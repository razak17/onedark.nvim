local M = {}

local function set_hl(tbl)
	for group, conf in pairs(tbl) do
		vim.api.nvim_set_hl(0, group, conf)
	end
end

local default_config = {
	variant = "outline", -- 'outline' | 'fill'
}

-- ref: https://github.com/navarasu/onedark.nvim/blob/master/lua/onedark/init.lua#L9C19-L9C19
---Change onedark option (vim.g.onedark_config.option)
---It can't be changed directly by modifying that field due to a Neovim lua bug with global variables (onedark_config is a global variable)
---@param opt string: option name
---@param value any: new value
function M.set_options(opt, value)
	local cfg = vim.g.onedark_config
	cfg[opt] = value
	vim.g.onedark_config = cfg
end

function M.setup(opts)
	if not vim.g.onedark_config or not vim.g.onedark_config.loaded then -- if it's the first time setup() is called
		vim.g.onedark_config = vim.tbl_deep_extend("keep", vim.g.onedark_config or {}, default_config)
		M.set_options("loaded", true)
	end
	if opts then
		vim.g.onedark_config = vim.tbl_deep_extend("force", vim.g.onedark_config, opts)
	end
end

function M.load()
	if vim.g.colors_name then
		vim.cmd.highlight("clear")
	end

	if vim.fn.exists("syntax_on") then
		vim.cmd.syntax("reset")
	end

	vim.o.background = "dark"
	vim.o.termguicolors = true
	vim.g.colors_name = "onedark"

	local base = require("onedark.plugin.base")
	local variant = require("onedark.plugin.variant")
	local plugins = require("onedark.plugin.plugins")
	local fzf_lua = require("onedark.plugin.fzf-lua")
	local noice = require("onedark.plugin.noice")
	local notify = require("onedark.plugin.notify")
	local telescope = require("onedark.plugin.telescope")

	set_hl(base)
	set_hl(variant)
	set_hl(plugins)
	set_hl(telescope)
	set_hl(fzf_lua)
	set_hl(notify)
	set_hl(noice)

	require("onedark.terminal").setup()
end

return M
