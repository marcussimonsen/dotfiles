return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			theme = "hyper",
			config = {
				week_header = {
					enable = true,
				},
				shortcut = {
					{
						desc = "󰊳 update",
						group = "@property",
						action = "Lazy update",
						key = "u",
					},
					{
						desc = " files",
						group = "label",
						action = "Telescope find_files",
						key = "f",
					},
					{
						desc = " grep",
						group = "DiagnosticOk",
						action = "Telescope live_grep",
						key = "g",
					},
					{
						desc = " dotfiles",
						group = "Number",
						action = "cd ~/dotfiles | Telescope find_files",
						key = ".",
					},
					{
						desc = "󰩈 quit",
						group = "ErrorMsg",
						action = "q",
						key = "q",
					},
				},
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
