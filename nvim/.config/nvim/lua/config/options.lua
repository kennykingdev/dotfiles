local settings = {
  termguicolors = true,  -- Enables 24bit RGB color
  cursorline = true,     -- Highlight line with the cursor, making it easier to find
  number = true,         -- Show line numbers
  relativenumber = true, -- Show relative line numbers
  tabstop = 2,           -- Number of spaces that a <Tab> counts for
  softtabstop = 2,       -- Number of spaces a <Tab> counts for in editing operations
  shiftwidth = 2,        -- Number of spaces to use for each step of (auto)indent
  expandtab = true,      -- Use the appropriate number of spaces to insert a <Tab>
  signcolumn = 'yes:1',  -- enable sign column
  autoindent = true,     -- auto indent on new lines
  smartindent = true,    -- smart autoindenting
  linebreak = true,      -- wrap long lines at certain characters, set with 'breakat'
  autoread = true,       -- when a file is changed outside vim and not changed in vim, re-read it
  -- This section turns off nvim backup/swapfile
  -- Instead we'll use undotree with an undofile for history over sessions.
  -- backup = false,
  -- swapfile = false,
  -- undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir",
  -- undofile = true,
  hlsearch = true,    -- highlight search results
  incsearch = true,   -- easy searching. "/const * =" would find all const assignments
  scrolloff = 8,      -- keep min number of lines of context when scrolling up/down
  sidescrolloff = 4,  -- keep min number of lines of context when scrolling left/right
  -- colorcolumn = '81',
  mouse = 'a',        -- enable mouse (easy resizing, etc)
  breakindent = true, -- Enable break indent
  undofile = true,    -- Save undo history
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
  listchars = { tab = '» ', trail = '·', nbsp = '␣' },
  inccommand = 'split', -- Preview substitutions live, as you type!

  -- Don't show the mode, since it's already in the status line
  showmode = false
}

for k, v in pairs(settings) do
  vim.opt[k] = v
end

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)
