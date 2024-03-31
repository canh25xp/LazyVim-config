-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
-- local nomap = vim.keymap.del
local util = require("lazyvim.util")

local function toggle_theme()
  if vim.g.colors_name == "tokyonight" then
    vim.cmd("colorscheme catppuccin")
  else
    vim.cmd("colorscheme tokyonight")
  end
end

local function glow()
  util.terminal({ "glow" }, {
    size = {
      width = 1,
      height = 1,
    },
    cwd = util.root(),
    esc_esc = false,
    ctrl_hjkl = false,
  })
end

-- Utilities
map("n", "<leader>md", glow, { desc = "Open markdown file" })

-- Terminal
-- map("t", "jk", "<C-\\><C-n>", { desc = "Enter Normal Mode" })
map("t", "<ESC>", "<C-\\><C-n>", { desc = "Enter Normal Mode", nowait = true })
-- map("n", "<C-_>", toggle_term, { desc = "Terminal (root dir )" }) -- Auto translate to <C-/>

-- General
map("i", "jk", "<ESC>", { desc = "Escape insert mode" })
map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "q;", "q:", { desc = "CMD history" })

-- Theme
map("n", "<leader>ut", toggle_theme, { desc = "Toggle theme" })

-- Explorer
map("n", "<C-n>", "<leader>fe", { desc = "Explorer NeoTree (root dir)", remap = true })

-- Buffer
map("n", "<tab>", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
map("n", "<leader>d", "<leader>bd", { desc = "Delete Buffer", remap = true })

-- Comment
map("n", "<leader>/", "gcc", { desc = "Comment whole line", remap = true })
map("v", "<leader>/", "gc", { desc = "Comment selected lines", remap = true })
