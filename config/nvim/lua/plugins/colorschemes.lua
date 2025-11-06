return {
	{ "Mofiqul/dracula.nvim", cmd = "CmdlineEnter", priority = 1000 },
	{ "rebelot/kanagawa.nvim", cmd = "CmdlineEnter", priority = 1000 },
	{ "folke/tokyonight.nvim", cmd = "CmdlineEnter", priority = 1000, opts = {} },
	{ "catppuccin/nvim", name = "catppuccin", cmd = "CmdlineEnter", priority = 1000 },
	{
		"neanias/everforest-nvim",
		priority = 1000,
		cmd = "CmdlineEnter",
		config = function()
			require("everforest").setup({
				background = "hard",
			})
		end,
	},
	{ "ellisonleao/gruvbox.nvim", cmd = "CmdlineEnter", priority = 1000, config = true, opts = { contrast = "hard" } },
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	},
}
