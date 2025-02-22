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
	{ "<C-l>", "<C-o>A", mode = "i" },
	{ "<C-b>", "<C-o>b", mode = "i" },
	{ "<C-k>", "<C-o>C", mode = "i" },
	{ "å", 'ggdG"+p:w<CR>' },
}
