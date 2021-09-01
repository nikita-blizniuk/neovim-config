call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" small plugin for start page
Plug 'mhinz/vim-startify'

" solarized color scheme
Plug 'lifepillar/vim-solarized8'

" LSP wrapper for mostly all language auto-completion
Plug 'neovim/nvim-lspconfig'

" All the lua functions I don't want to write twice. ©
Plug 'nvim-lua/plenary.nvim'

" Fuzzy search inside folders
Plug 'nvim-telescope/telescope.nvim'

" Project detector, working great with telescope plugin
Plug 'ahmedkhalf/project.nvim'

" A Magit clone for Neovim that is geared toward the Vim philosophy.
Plug 'TimUntersberger/neogit'

" Fast as fuck completion
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}

" 9000+ Snippets
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

call plug#end()

source $HOME/.config/nvim/lua/general_settings.vim
source $HOME/.config/nvim/lua/telescope_settings.vim

:lua require('neogit_settings')
:lua require('nvim_lsp_settings')
:lua require('omnisharp_settings')

" work-around, lua code is not working
" let g:coq_settings = { 'auto_start': v:true } - not working piece of shit
