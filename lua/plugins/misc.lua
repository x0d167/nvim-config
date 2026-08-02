vim.pack.add({
	"http://github.com/jeffkreeftmeijer/vim-numbertoggle",
	"http://github.com/windwp/nvim-autopairs",
	"https://github.com/chomosuke/typst-preview.nvim",
	{ src = "https://github.com/nvim-mini/mini.surround", version = "stable" },
	"https://github.com/norcalli/nvim-colorizer.lua",
	"https://github.com/romgrk/barbar.nvim",
	"https://github.com/nvim-mini/mini.align",
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/Olical/conjure",
})

require("nvim-autopairs").setup({
	event = "InsertEnter",
	config = true,
})

require("mini.align").setup({})

require("barbar").setup({})
