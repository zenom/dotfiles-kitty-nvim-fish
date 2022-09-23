local keymap = vim.keymap

keymap.set('n', '<Leader>nn', ':NvimTreeToggle<CR>') -- toggle nvim tree
keymap.set('n', '<Leader>vv', '<C-w>v') -- split vertical
keymap.set('n', '<Leader>ss', '<C-w>s') -- split horizontal

keymap.set('n', '<C-J>', '<C-W><C-J>') -- move
keymap.set('n', '<C-K>', '<C-W><C-K>') -- move
keymap.set('n', '<C-L>', '<C-W><C-L>') -- move
keymap.set('n', '<C-H>', '<C-W><C-H>') -- move

keymap.set('i', 'jj', '<ESC>')


keymap.set('n', '<leader>s', '<CMD>Telescope find_files<CR>')
keymap.set('n', '<leader>sg', '<CMD>Telescope live_grep<CR>')
keymap.set('n', '<leader>sG', '<CMD>Telescope grep_string<CR>')
keymap.set('n', '<leader>ja', '<CMD>Telescope find_files cwd=app/assets/<CR>')
keymap.set('n', '<leader>jc', '<CMD>Telescope find_files cwd=app/controllers/<CR>')
keymap.set('n', '<leader>ji', '<CMD>Telescope find_files cwd=app/interactors/<CR>')
keymap.set('n', '<leader>jm', '<CMD>Telescope find_files cwd=app/models/<CR>')
keymap.set('n', '<leader>jv', '<CMD>Telescope find_files cwd=app/views/<CR>')
keymap.set('n', '<leader>jp', '<CMD>Telescope find_files cwd=app/policies/<CR>')
keymap.set('n', '<leader>jT', '<CMD>Telescope find_files cwd=test/<CR>')

keymap.set('n', '<leader>ft', ':ToggleTerm dir=git_dir direction=float<CR>')
keymap.set('n', '<leader>tb', ':ToggleTerm size=20 dir=git_dir direction=horizontal<CR>')
