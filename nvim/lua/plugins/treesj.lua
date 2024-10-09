return {
	"Wansmer/treesj",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	opts = { use_default_keymaps = false },
	keys = {
		{
			"<Leader>sj",
			mode = "n",
			function()
				require("treesj").join()
			end,
			desc = "Join",
		},
		{
			"<Leader>sr",
			mode = "n",
			function()
				require("treesj").toggle({ split = { recursive = true } })
			end,
			desc = "Toggle recursively",
		},
		{
			"<Leader>ss",
			mode = "n",
			function()
				require("treesj").split()
			end,
			desc = "Split",
		},
		{
			"<Leader>st",
			mode = "n",
			function()
				require("treesj").toggle()
			end,
			desc = "Toggle",
		},
	},
}
