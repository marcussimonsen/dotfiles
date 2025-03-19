return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	cmd = "Trouble",
	config = function()
		require("trouble").setup({ focus = true })
	end,
	keys = {
		{ "<Leader>xt", mode = "n", vim.cmd.TodoTrouble, desc = "ToDo Trouble" },
		{
			"<Leader>xd",
			mode = "n",
			function()
				require("trouble").open("diagnostics")
			end,
			desc = "Diagnostics",
		},
		{
			"<Leader>xl",
			mode = "n",
			function()
				require("trouble").open("loclist")
			end,
			desc = "Loclist",
		},
		{
			"<Leader>xq",
			mode = "n",
			function()
				require("trouble").open("quickfix")
			end,
			desc = "Quickfix",
		},
		{
			"gr",
			mode = "n",
			function()
				require("trouble").open("lsp_references")
			end,
			desc = "LSP References",
		},
		{
			"gi",
			mode = "n",
			function()
				require("trouble").open("lsp_implementations")
			end,
			desc = "LSP Implementations",
		},
		{
			"gd",
			mode = "n",
			function()
				require("trouble").open("lsp_definitions")
			end,
			desc = "LSP Definitions",
		},
		{
			"gD",
			mode = "n",
			function()
				require("trouble").open("lsp_declarations")
			end,
			desc = "LSP Declarations",
		},
		{
			"<Leader>xs",
			mode = "n",
			function()
				require("trouble").open("symbols")
			end,
			desc = "Symbols",
		},
	},
}
