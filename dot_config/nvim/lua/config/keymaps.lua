-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyLazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set({ "i", "v" }, "jk", "<Esc>") -- Map jk to Esc
keymap.set("n", "<leader>w", ":w!<CR>") -- Write file
keymap.set("n", "<leader>q", ":q!<CR>") -- Close files

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
