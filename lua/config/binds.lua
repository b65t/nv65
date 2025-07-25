vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set('n', '<C-f>', '<cmd>NvimTreeToggle<CR>', { desc = "Toggle NvimTree" })

keymap.set("n", "<C-t>", "<cmd>ToggleTerm<CR>", { desc = "Toggle ToggleTerm" })

keymap.set("n", "<C-o>", "<cmd>FzfLua files<CR>", { desc = "Find files with fzf-lua" })

keymap.set({ 'x', 'n' }, 'y', '"+y', { silent = true } )

keymap.set("n", "<C-k>", "<cmd>BufferNext<CR>", { desc = "next buffer" })
keymap.set("n", "<C-j>", "<cmd>BufferPrevious<CR>", { desc = "previous buffer" })
