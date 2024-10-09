return {
	"lukas-reineke/indent-blankline.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	event = { "BufRead" },
	main = "ibl",
	opts = {
		scope = {
			enabled = true,
			show_start = true,
			show_end = false,
		},
	},
	config = function(_, opts)
		local ibl = require("ibl")
		ibl.setup(opts)
	end,
}
