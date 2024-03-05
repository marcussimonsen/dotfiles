return {
	"lukas-reineke/indent-blankline.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	main = "ibl",
	opts = {
		scope = {
			enabled = true,
			show_start = true,
			show_end = false,
		},
	},
	config = function(_, opts)
		require('ibl').setup(opts)
	end,
}
