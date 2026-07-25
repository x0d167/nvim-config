vim.pack.add({ "https://github.com/projekt0n/github-nvim-theme" })

config = function()
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
end

-- {
--     "projekt0n/github-nvim-theme",
--     name = "github-theme",
--     -- enabled = false,
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require("github-theme").setup({})
--         vim.cmd("colorscheme github_dark_default")
--         vim.cmd([[
--         hi Normal guibg=NONE ctermbg=NONE
--         hi NormalNC guibg=NONE ctermbg=NONE
--         hi SignColumn guibg=NONE ctermbg=NONE
--         hi VertSplit guibg=NONE ctermbg=NONE
--         hi Pmenu guibg=NONE ctermbg=NONE
--         hi PmenuSel guibg=NONE ctermbg=NONE
--         hi FloatBorder guibg=NONE ctermbg=NONE
--         hi NormalFloat guibg=NONE ctermbg=NONE
--         hi TablineFill guibg=NONE ctermbg=NONE
--         hi StatusLine guibg=NONE ctermbg=NONE guifg=#FFFFFF ctermfg=White
--         hi StatusLineNC guibg=NONE ctermbg=NONE guifg=#888888 ctermfg=Gray
--         ]])
--     end,
-- },
