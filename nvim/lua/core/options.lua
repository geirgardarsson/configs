vim.opt.clipboard = "unnamedplus"

-- Basic display settings
-- vim.opt.guicursor = ""                                -- Keep cursor as block
vim.opt.nu = true                                     -- Show line numbers
vim.opt.relativenumber = true                         -- Show relative numbers

-- Tabs & indentation
vim.opt.tabstop = 4                                   -- Number of spaces a tab represents
vim.opt.softtabstop = 4                               -- Number of spaces per <Tab> while editing
vim.opt.shiftwidth = 4                                -- Indent width
vim.opt.expandtab = true                              -- Convert tabs to spaces
vim.opt.autoindent = true
vim.opt.smartindent = true                            -- Auto-indent new lines

-- Line behavior
vim.opt.wrap = false                                  -- Disable line wrapping

-- Swap/backup/undo
vim.opt.swapfile = false                              -- Don’t use swap files
vim.opt.backup = false                                -- Don’t keep backup files
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- Persistent undo directory
vim.opt.undofile = true                               -- Enable persistent undo

-- Searching
vim.opt.hlsearch = false                              -- Don’t highlight after search
vim.opt.incsearch = true                              -- Show matches as you type
vim.opt.ignorecase = true

-- Appearance
vim.opt.termguicolors = true                          -- Enable 24-bit color
vim.opt.scrolloff = 12                                 -- Keep 8 lines of context above/below cursor
-- vim.opt.signcolumn = "yes"                            -- Always show sign column
-- vim.opt.isfname:append("@-@")                         -- Allow '@' in filenames
-- vim.opt.colorcolumn = "80"                            -- Show a vertical line at column 80

-- Performance
-- vim.opt.updatetime = 50                               -- Faster update time for events

