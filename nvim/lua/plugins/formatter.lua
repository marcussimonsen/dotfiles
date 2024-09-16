return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("conform").setup({
			lsp_format = "first",
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "autoflake", "black" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				haskell = { "stylish-haskell" },
				markdown = { "markdownfmt", "cbfmt", "mdslw" },
				scala3 = { "scalafmt" },
				rust = { "rustfmt" },
			},
		})
	end,
}
