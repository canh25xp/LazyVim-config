-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local nomap = vim.keymap.del

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<tab>", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

-- map("n", "<C-b>", "<cmd>colorscheme habamax<cr>", { desc = "" })

map("n", "<C-b>", "<leader>fe", { desc = "Explorer NeoTree (root dir)", remap = true })

-- nomap("n", "<leader>gg")
