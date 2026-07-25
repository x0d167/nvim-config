vim.pack.add({ "https://github.com/folke/todo-comments.nvim" })

local todo = require("todo-comments")
todo.setup({
	dependencies = { "nvim-lua/plenary.nvim" },
	optional = true,
	opts = {
		vim.keymap.set("n", "]t", function()
			require("todo-comments").jump_next()
		end, { desc = "Next todo comment" }),

		vim.keymap.set("n", "[t", function()
			require("todo-comments").jump_prev()
		end, { desc = "Previous todo comment" }),

		vim.keymap.set("n", "]t", function()
			require("todo-comments").jump_next({ keywords = { "ERROR", "WARNING" } })
		end, { desc = "Next error/warning todo comment" }),
	},
	keys = {
		{
			"<leader>st",
			function()
				Snacks.picker.todo_comments()
			end,
			desc = "Todo",
		},
		{
			"<leader>sT",
			function()
				Snacks.picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME" } })
			end,
			desc = "Todo/Fix/Fixme",
		},
	},
})
