local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

local get_mapper = function(mode, noremap)
  return function(lhs, rhs, opts)
    opts = opts or {}
    opts.noremap = noremap
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

local noremap = get_mapper("n", false)
local nnoremap = get_mapper("n", true)
local inoremap = get_mapper("i", true)
local tnoremap = get_mapper("t", true)
local vnoremap = get_mapper("v", true)

map('n', '<leader>d', ':t.<CR>', opts)
map('n', '<Tab>', ':bnext<CR>', opts)
map('n', '<leader>t', ':BufOnly<CR>', opts)
map('n', '<leader>ç', '<C-W>l<CR>', opts)
map('n', '<leader>l', '<C-W>h<CR>', opts)
map('n', '<leader>s', ':Ag<CR>', opts)
map('n', '<leader>f', ':Files<CR>', opts)
map('n', '<leader>b', ":lua require('telescope.builtin').buffers()<CR>", opts)
map('n', '<A-a>', ':FloatermToggle<CR>', opts)
map('t', '<A-a>', '<C-\\><C-n>:FloatermToggle<CR>', opts)
map('n', '<Leader>+', ':vertical resize +5<CR>', opts)
map('n', '<Leader>-', ':vertical resize -5<CR>', opts)
map('i', '<C-h>', '<Left>', opts)
map('i', '<C-j>', '<Down>', opts)
map('i', '<C-k>', '<Up>', opts)
map('i', '<C-l>', '<Right>', opts)
-- map('n', 'gd', '<Plug>(coc-definition)', {})
-- map('n', 'gy', '<Plug>(coc-type-definition)', {})
-- map('n', 'gi', '<Plug>(coc-implementation)', {})
-- map('n', 'gr', '<Plug>(coc-references)', {})

nnoremap("<Leader>q", "<CMD>Neotree toggle<CR>", { desc = "Toggle NeoTree" })