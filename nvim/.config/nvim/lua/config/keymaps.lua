local map = vim.keymap.set

-- Clear highlights on search when pressing <Esc> in normal mode
map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
map('n', '[d', vim.diagnostic.goto_prev,
  { desc = 'Go to previous [D]iagnostic message' })

map('n', ']d', vim.diagnostic.goto_next,
  { desc = 'Go to next [D]iagnostic message' })

map('n', '<leader>ce', vim.diagnostic.open_float,
  { desc = '[C]ode diagnostic [E]rror messages' })

map('n', '<leader>cq', vim.diagnostic.setloclist,
  { desc = '[C]ode diagnostic [Q]uickfix list' })

map('n', '<M-j>', '<cmd>cnext<cr>',
  { desc = 'Next Quickfix item' })
map('n', '<M-k>', '<cmd>cprev<cr>',
  { desc = 'Prev Quickfix item' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

--  Use CTRL+<hjkl> to switch between windows
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Window management
map('n', '<leader>w\\', '<C-w>v', { desc = 'Split [W]indow [V]ertically' })
map('n', '<leader>w-', '<C-w>s', { desc = 'Split [W]indow [H]orizontally' })
map('n', '<leader>wd', '<cmd>close<cr>', { desc = '[W]indow [D]elete' })
-- map('n', '<leader>we', '<C-w>=', { desc = '[W]indow [R]esize [E]qually' })
-- map('n', '<C-M-k>', '<C-w>+', { desc = '[W]indow Resize Taller' })
-- map('n', '<C-M-j>', '<C-w>-', { desc = '[W]indow Resize Shorter' })
-- map('n', '<C-M-l>', '<C-w>>', { desc = '[W]indow Resize Wider' })
-- map('n', '<C-M-h>', '<C-w><', { desc = '[W]indow Resize Narrower' })
-- map('n', '<C-J>', '<C-w>J', { desc = 'Move [W]indow to bottom' })
-- map('n', '<C-K>', '<C-w>K', { desc = 'Move [W]indow to top' })
-- map('n', '<C-H>', '<C-w>H', { desc = 'Move [W]indow to far left' })
-- map('n', '<C-L>', '<C-w>L', { desc = 'Move [W]indow to far right' })

-- I'm too lazy to reach over to shift every time I want to enter a command
--map("n", ";", ":", { desc = "CMD enter command mode" })

-- Quick escape out of insert mode
map('i', 'jk', '<ESC>', { desc = "Exit insert mode with 'jk'" })

-- When lines are highlighted in visual mode, J and K to move them up and down
map('v', 'J', ":m '>+1<CR>gv=gv", { desc = "Move line down" })
map('v', 'K', ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- Append next line to current line with a space, leaving curser where it started
map('n', 'J', 'mzJ`z')

-- Scroll up/down half page, and leave your cursor in middle of the page
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')

-- When "next"-ing through search results, put the next result and curser midpage
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')

-- Open search and replace for the current word
map(
  'n',
  '<leader>sr',
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = '[S]earch and [R]eplace current word' }
)
