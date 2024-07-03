local status, treesitter = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

treesitter.setup {
  highlight = {
    enable = true,
    disable = {},
    use_languagetree = true,
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "markdown",
    "markdown_inline",
    "tsx",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "css",
    "html",
    "lua",
    "cpp",
    "hlsl",
    'sql'
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.blade = {
  install_info = {
    url = "https://github.com/EmranMR/tree-sitter-blade",
    files = { "src/parser.c" },
    branch = "main",
  },
  filetype = "blade"
}
parser_config.blade.filetype_to_parsername = { "blade", "html" }

parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
