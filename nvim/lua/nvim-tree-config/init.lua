require("nvim-tree").setup({
	--open_on_setup = true,
	disable_netrw = true,
	hijack_netrw = true,
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})
