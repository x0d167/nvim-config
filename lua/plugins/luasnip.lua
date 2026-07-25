vim.pack.add({
	"https://github.com/L3MON4D3/LuaSnip",
	"https://github.com/rafamadriz/friendly-snippets",
})

local luasnip = require("luasnip")

luasnip.setup({
	history = true,
	updateevents = "TextChanged, TextChangedI",
	enable_autosnippets = true,
})

-- load snippets
require("luasnip.loaders.from_vscode").load()
require("luasnip.loaders.from_vscode").load({
	paths = { vim.fn.stdpath("config") .. "/snippets" },
})
