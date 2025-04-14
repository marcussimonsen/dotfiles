return {
	cmd = { "bash-language-server", "start" },
	root_markers = { ".git" },
	filetypes = { "bash", "sh" },
	settings = {
		bashIde = {
			globPattern = "*@(.sh|.inc|.bash|.command)",
		},
	},
}
