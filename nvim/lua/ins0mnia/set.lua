local opt = vim.opt

-- General Settings
opt.encoding = "utf-8"
opt.autoread = true
opt.updatetime = 50

-- Numbers
opt.number = true
opt.relativenumber = true

-- Cursor, lines and gui related options
-- opt.termguicolors = true    -- truecolor support
opt.cursorline = true
opt.guicursor = ""
opt.colorcolumn = "80" --Slower redraw

-- Scroll
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

-- Splits
opt.splitbelow = true       -- put new windows below current
opt.splitright = true       -- put new vertical splits to right

-- Tabs and spaces
opt.tabstop = 2
opt.softtabstop=2
opt.shiftwidth = 2
opt.shiftround = true
opt.expandtab = true
-- opt.autoindent = true -- Cause errors on paste
opt.smartindent = true
opt.smartcase = true
opt.joinspaces = false
opt.wrap = false

-- Files
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- Search
opt.hlsearch = true
opt.incsearch = true

-- Completion
opt.completeopt = {'menu', 'noinsert', 'noselect' }
opt.wildmode = {'longest', 'list', 'full'}

