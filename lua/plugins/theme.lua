vim.pack.add({ "https://github.com/projekt0n/github-nvim-theme" })

require("github-theme").setup({
	options = {
		transparent = true,
		styles = {
			sidebars = "transparent",
			floats = "transparent",
		},
	},
})

vim.cmd("colorscheme github_dark_default")
-- vim.cmd([[
-- hi BufferTabpageFill guibg=NONE ctermbg=NONE
-- hi BufferTabpages guibg=NONE ctermbg=NONE
-- ]])
vim.api.nvim_set_hl(0, "BufferTabpageFill", { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "BufferTabpages", { bg = "NONE", ctermbg = "NONE" })
