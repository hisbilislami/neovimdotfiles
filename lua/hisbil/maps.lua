local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

keymap.set('n', '<c-k>', '[e')
keymap.set('n', '<c-j>', ']e')
keymap.set('v', '<c-j>', ']egv')
keymap.set('v', '<c-k>', '[egv')
keymap.set('n', '<Tab>j', '<PageDown')
keymap.set('n', '<Tab>k', '<PageUp')

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
keymap.set('n', '<Up>', ':resize +2<CR>')
keymap.set('n', '<Down>', ':resize -2<CR>')
keymap.set('n', '<Left>', ':vertical resize +2<CR>')
keymap.set('n', '<right>', ':vertical resize -2<CR>')

keymap.set('n', ',,', '<c-^>')

keymap.set("n", "<S-t>", [[<Esc>:lua require'luasnip'.unlink_current()<CR>a]], { noremap = true, silent = true })
