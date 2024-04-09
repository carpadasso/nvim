vim.cmd([[ set number ]])
vim.cmd([[ set expandtab shiftwidth=3 ]])
vim.cmd([[ set softtabstop=3 ]])
vim.cmd([[ set guicursor= ]])
vim.cmd([[ set incsearch ]])
vim.cmd([[ set autoindent ]])
vim.cmd([[ ]])
--Usa a linha de cursor no insert mode e block cursor ademais.
vim.cmd([[ let &t_SI = "\e[6 q" ]])
vim.cmd([[ let &t_EI = "\e[2 q" ]])

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('rebelot/kanagawa.nvim')
Plug('nvim-treesitter/nvim-treesitter')
Plug('neovim/nvim-lspconfig')
Plug('preservim/nerdtree')
Plug('hrsh7th/nvim-cmp')
Plug('jose-elias-alvarez/null-ls.nvim')
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('mhartington/formatter.nvim')
Plug('mfussenegger/nvim-lint')
Plug('mfussenegger/nvim-dap')
Plug('nvim-tree/nvim-tree.lua')
Plug('nvim-tree/nvim-web-devicons')

vim.call('plug#end')

vim.cmd([[ colorscheme kanagawa-wave ]])
vim.cmd([[ hi! LineNr guibg=none ctermbg=none ]])

--Configurações do tema Kanagawa
require('kanagawa').setup({
   theme = "wave",
   background = {
      dark = "dragon",
      light = "lotus"
   },
})

--LSP Config
local lspconfig = require("lspconfig")
lspconfig.clangd.setup {}
