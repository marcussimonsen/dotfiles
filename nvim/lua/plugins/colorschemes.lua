return {
	{ "Mofiqul/dracula.nvim", priority = 1000 },
	{ "rebelot/kanagawa.nvim", priority = 1000 },
	{ "folke/tokyonight.nvim", priority = 1000, opts = {} },
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"neanias/everforest-nvim",
		priority = 1000,
		config = function()
			require("everforest").setup({
				background = "hard",
			})
		end,
	},
	{ "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = {contrast = "hard"} },
}
