vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

local settings = {
	termguicolors = true, -- Enables 24bit RGB color
	cursorline = true, -- Highlight line with the cursor, making it easier to find
	number = true, -- Show line numbers
	relativenumber = true, -- Show relative line numbers
	tabstop = 2, -- Number of spaces that a <Tab> counts for
	softtabstop = 2, -- Number of spaces a <Tab> counts for in editing operations
	shiftwidth = 2, -- Number of spaces to use for each step of (auto)indent
	expandtab = true, -- Use the appropriate number of spaces to insert a <Tab>
	signcolumn = "yes:1", -- enable sign column
	autoindent = true, -- auto indent on new lines
	smartindent = true, -- smart autoindenting
	linebreak = true, -- wrap long lines at certain characters, set with 'breakat'
	autoread = true, -- when a file is changed outside vim and not changed in vim, re-read it

	-- This section turns off nvim backup/swapfile
	-- Instead we'll use undotree with an undofile for history over sessions.
	-- backup = false,
	-- swapfile = false,
	-- undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir",
	-- undofile = true,

	--hlsearch = false, -- don't keep search terms highlighted
	incsearch = true, -- easy searching. "/const * =" would find all const assignments
	scrolloff = 8, -- keep min number of lines of context when scrolling up/down
	sidescrolloff = 4, -- keep min number of lines of context when scrolling left/right
	colorcolumn = "80",
	mouse = "a", -- enable mouse (easy resizing, etc)
	clipboard = "unnamedplus", -- Sync clipboard between OS and Neovim

	breakindent = true, -- Enable break indent

	undofile = true, -- Save undo history

	-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
	ignorecase = true,
	smartcase = true,

	-- Decrease update time
	updatetime = 250,

	-- Decrease mapped sequence wait time
	-- Displays which-key popup sooner
	timeoutlen = 300,

	-- Configure how new splits should be opened
	splitright = true,
	splitbelow = true,

	-- Sets how neovim will display certain whitespace characters in the editor.
	--  See `:help 'list'`
	--  and `:help 'listchars'`
	list = true,
	listchars = { tab = "» ", trail = "·", nbsp = "␣" },

	inccommand = "split", -- Preview substitutions live, as you type!
}

-- Apply settings
for k, v in pairs(settings) do
	vim.opt[k] = v
end

local map = vim.keymap.set

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
map('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
map('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

