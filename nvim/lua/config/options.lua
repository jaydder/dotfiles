-- Python environment (descomente se quiser usar)
-- vim.g.python3_host_prog = os.getenv("HOME") .. '/virtualenvs/nvim-venv/bin/python'
-- General
vim.opt.encoding = "utf-8"
vim.opt.spell = true
vim.opt.termguicolors = true
vim.opt.showmode = false

-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = false

-- Tabs and indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

-- Wrapping and formatting
-- vim.wo.wrap = false -- descomente para desativar quebra de linha visual
vim.opt.formatoptions:remove("t") -- desativa quebra automática de linha pelo Vim
vim.opt.list = true
vim.opt.listchars = "tab:»\\ ,extends:›,precedes:‹,nbsp:·,trail:·"

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- File handling
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Scrolling and UI
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Performance
vim.opt.updatetime = 50
