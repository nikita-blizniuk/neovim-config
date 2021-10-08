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

" Fast as fuck completion
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}

" 9000+ Snippets
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

" Insert or delete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs'

" Extensions for the built-in Language Server Protocol support
Plug 'mfussenegger/nvim-jdtls'

call plug#end()

augroup lsp
    au!
    au FileType java lua require('lsp-config').start_jdt()
augroup end

source $HOME/.config/nvim/lua/general_settings.vim
source $HOME/.config/nvim/lua/telescope_settings.vim

":lua require('omnisharp_settings')
