vim.pack.add({ "https://github.com/akinsho/toggleterm.nvim" })

local toggleterm = require("toggleterm")

toggleterm.setup({
	size = 20,
	open_mapping = [[<c-t>]],
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	persist_size = false,
	direction = "float",
	close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			Normal = {
				guibg = "1e1e2eCC",
			},
			NormalFloat = {
				link = "Normal",
			},
			border = "Normal",
			-- background = "Normal",
		},
	},
})
