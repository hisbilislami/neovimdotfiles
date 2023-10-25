local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup({
  ui = {
    winblend = 10,
    border = 'rounded',
    devicon = true,
    colors = {
      normal_bg = '#002b36'
    },
    -- beacon = {
    --   enable = true,
    --   frequency = 7
    -- },
  },
  outline = {
    layout = 'normal'
  }
})

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<M-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'gl', '<Cmd>Lspsaga show_diagnostic<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga finder<CR>', opts)
vim.keymap.set('n', 'gti', '<Cmd>Lspsaga finder imp<CR>', opts)
vim.keymap.set('n', 'gdf', '<Cmd>Lspsaga goto_definition<CR>', opts)
vim.keymap.set('n', 'gdt', '<Cmd>Lspsaga goto_type_definition<CR>', opts)
vim.keymap.set('i', '<M-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', 'gt', '<Cmd>Lspsaga peek_type_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
-- code action
local codeaction = require("lspsaga.codeaction")
vim.keymap.set("n", "<leader>ca", function() codeaction:code_action() end, { silent = true })
vim.keymap.set("v", "<leader>ca", function()
  vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, false, true))
  codeaction:range_code_action()
end, { silent = true })

vim.keymap.set("n", "<leader>cld", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })
vim.keymap.set("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { silent = true })
vim.keymap.set({ "n", "t" }, "<A-d>", "<cmd>Lspsaga term_toggle<CR>")
vim.keymap.set("n", "<leader>t", "<cmd>Lspsaga outline<CR>")
