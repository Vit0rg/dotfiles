vim.g.mapleader = " "

-- Open Explorer
vim.keymap.set("n", "<leader>pv", ":Ex<cr>")

-- <bs> clears search highlights
vim.keymap.set("n", "<bs>", ":nohlsearch<cr>")

-- UndotreeToggle
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Allows dragging text on Visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Cursor stays in the same line even after Joining lines
vim.keymap.set("n", "J", "mzJ`z")

-- Half jumps (keeps content centralized)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Centralized search (keeps search terms in the middle)
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Turns pasting with 'p' similar to <C-x>
-- Deletes highlighted word, without losing the buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Deletes into void buffer
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Yank selection into the System Clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>Y", [["+Y]])

-- Deletes into void buffer
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Why?
vim.keymap.set("n", "Q", "<nop>")

-- LSP Formatter
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quickfix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Replaces the selected word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Turn files into executables
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
