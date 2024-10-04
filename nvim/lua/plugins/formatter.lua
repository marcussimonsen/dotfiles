return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	config = function()
		require("conform").setup({
			default_format_opts = {
				lsp_format = "first",
			},
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "autoflake", "black" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				haskell = { "stylish-haskell" },
				markdown = { --[["cbfmt",]]
					"mdslw",
				},
				rust = { "rustfmt" },
			},
		})
	end,
}
