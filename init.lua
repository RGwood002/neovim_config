local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('neovim/nvim-lspconfig')
Plug('ray-x/go.nvim')	
Plug('neoclide/coc.nvim', {['branch'] = 'release'})
Plug('junegunn/fzf', { ['do'] = vim.fn['fzf#install']})
Plug('junegunn/fzf.vim')
Plug('lervag/vimtex')
Plug('tiagovla/tokyodark.nvim')
Plug('kdheepak/lazygit.nvim')
Plug('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn[':TSUpdate']})
Plug('ray-x/guihua.lua')

vim.call('plug#end')

vim.cmd('set number')
vim.cmd('colorscheme tokyodark')

require('go').setup()
vim.cmd('nnoremap <C-p> :GFiles<CR>')
vim.cmd('nnoremap gr :GoRun<CR>')
