local map = vim.keymap.set

-- I'm too lazy to reach over to shift every time I want to enter a command
--map("n", ";", ":", { desc = "CMD enter command mode" })

-- Quick escape out of insert mode
map("i", "jk", "<ESC>")

-- When lines are highlighted in visual mode, J and K to move them up and down
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Append next line to current line with a space, leaving curser where it started
map("n", "J", "mzJ`z")

-- Scroll up/down half page, and leave your cursor in middle of the page
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- When "next"-ing through search results, put the next result and curser midpage
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Normally when you copy a text, highlight a word you want to replace and paste
-- it, it puts the word you replaced into the current paste buffer, replacing
-- the word you originally copied. Puts replaced selection into the void register.
-- This keeps that original word in the paste buffer so you can keep pasting it
map("x", "<leader>p", [["_dP]])

-- Yank into system clipboard
--map({"n", "v"}, "<leader>y", [["+y]], { desc = "[Y]ank into system clipboard" })
--map("n", "<leader>Y", [["+Y]], { desc = "[Y]ank into system clipboard" })

-- Delete into void register instead of putting it in clipboard
--map({"n", "v"}, "<leader>d", [["_d]])

-- Open search and replace for the current word
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "[S]earch and replace current word" })
