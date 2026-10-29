-- Theme development previews for lazy.nvim. Other managers can call
-- require("onedark.dev").setup() after loading mini.hipatterns.
return {
	{
		"nvim-mini/mini.hipatterns",
		config = function(_, opts)
			require("onedark.dev").setup(opts)
		end,
	},
}
