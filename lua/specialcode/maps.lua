local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', '<Leader>h', '<C-w>h')
keymap.set('', '<Leader>k', '<C-w>k')
keymap.set('', '<Leader>j', '<C-w>j')
keymap.set('', '<Leader>l', '<C-w>l')

-- Resize window
keymap.set('n', '<C-Up>', ':resize +2<CR>')
keymap.set('n', '<C-Down>', ':resize -2<CR>')
keymap.set('n', '<C-Left>', ':vertical resize +2<CR>')
keymap.set('n', '<C-right>', ':vertical resize -2<CR>')

keymap.set('n', ',,', '<c-^>')

keymap.set('n', '<C-k>', '[e')
keymap.set('n', '<C-j>', ']e')
keymap.set('v', '<C-k>', '[egv')
keymap.set('v', '<C-j>', ']egv')
keymap.set('n', '<Tab>j', '<PageDown')
keymap.set('n', '<Tab>k', '<PageUp')
