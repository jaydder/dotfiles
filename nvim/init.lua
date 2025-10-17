require 'config.keymaps'
require 'config.options'
require 'config.lazy'

-- setup must be called before loading
vim.cmd.colorscheme 'tokyonight-night'

-- Definir apenas o fundo do Neo-tree como transparente
vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'NeoTreeFloatTitle', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'NeoTreeGitAdded', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'NeoTreeGitModified', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'NeoTreeGitDeleted', { bg = 'NONE' })

vim.o.guicursor = ''
