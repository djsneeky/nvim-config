-- plugins/telescope.lua:
return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope find files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope find recent files" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Telescope find string in cwd" },
		{ "<leader>fs", "<cmd>Telescope git_status<cr>", desc = "Telescope git status" },
		{ "<leader>fc", "<cmd>Telescope git_commits<cr>", desc = "Telescope git commit history" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Telescope help tags" },
	},
	opts = {},
}
