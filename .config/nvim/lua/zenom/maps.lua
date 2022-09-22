local keymap = vim.keymap

keymap.set('n', '<Leader>nn', ':NvimTreeToggle<CR>') -- toggle nvim tree
keymap.set('n', '<Leader>vv', '<C-w>v') -- split vertical
keymap.set('n', '<Leader>ss', '<C-w>s') -- split horizontal

keymap.set('n', '<C-J>', '<C-W><C-J>') -- move
keymap.set('n', '<C-K>', '<C-W><C-K>') -- move
keymap.set('n', '<C-L>', '<C-W><C-L>') -- move
keymap.set('n', '<C-H>', '<C-W><C-H>') -- move

keymap.set('i', 'jj', '<ESC>')
