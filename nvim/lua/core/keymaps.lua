return {
	{
		"<Leader>n",
		function()
			vim.cmd("noh")
		end,
		desc = "No highlight",
	},
	{ "jk", "<esc>", mode = "i" },
	{ "<C-q>", vim.cmd.bdelete, desc = "Delete Buffer" },
	{ "<C-n>", vim.cmd.bnext, desc = "Goto Next Buffer" },
	{ "<C-p>", vim.cmd.bprev, desc = "Goto Next Buffer" },
	{ "<Tab>", "<C-w>" },
	{ "å", 'ggdG"+p:w<CR>' },
}
