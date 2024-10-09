return {
	"folke/which-key.nvim",
	event = "BufRead",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function()
		require("which-key").add(require("core.keymaps"))
	end,
}
