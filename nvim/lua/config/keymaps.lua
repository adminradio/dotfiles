-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Example: delete a keymap
-- vim.keymap.del("n", "<leader>s")

-- Example: add a keymap
-- vim.keymap.set("n", "<leader>pü", vim.cmd.Explore, { desc = "Open NetRw" })

local map = vim.keymap.set
local tsb = require("telescope.builtin")

map("n", "<leader>fs", tsb.lsp_document_symbols, { desc = "LSP Document Symbols" })

-- Move Lines
map("n", "<S-Down>", "<cmd>execute 'move .+' . v:count1<cr>==", { silent = true, desc = "Move Down" })
map("n", "<S-Up>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { silent = true, desc = "Move Up" })
map("i", "<S-Down>", "<esc><cmd>m .+1<cr>==gi", { silent = true, desc = "Move Down" })
map("i", "<S-Up>", "<esc><cmd>m .-2<cr>==gi", { silent = true, desc = "Move Up" })
map("v", "<S-Down>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { silent = true, desc = "Move Down" })
map("v", "<S-Up>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { silent = true, desc = "Move Up" })
