return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = "ConformInfo",
	config = function()
		local util = require("core.utilities")

		local conform = require("conform")

		-- BUG: Doesn't start when opening a non-existing file

		conform.setup({
			default_format_opts = {
				lsp_format = "first",
			},
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "autoflake", "black" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				haskell = { "stylish-haskell" },
				tex = { "tex-fmt" },
				markdown = { --[["cbfmt",]]
					"mdslw",
				},
				rust = { "rustfmt" },
				sql = { "sql_formatter" },
			},
		})
	end,
	keys = {
		{
			"<Leader>fa",
			mode = "n",
			function()
				require("conform").format({ async = true })
			end,
			desc = "Format",
		},
	},
}
