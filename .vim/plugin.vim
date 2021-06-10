call plug#begin("~/.config/nvim/plugged")
Plug 'Chiel92/vim-autoformat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/BufOnly.vim'
"Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mbbill/undotree'
Plug 'liuchengxu/vim-clap'
"Plug 'voldikss/vim-floaterm'
"Plug 'kevinhwang91/rnvimr'
"Plug 'junegunn/fzf', { 'do': 'yes \| ./install' }
"Plug 'fszymanski/fzf-gitignore', {'do': ':UpdateRemotePlugins'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'majutsushi/tagbar'
Plug 'morhetz/gruvbox'
"Plug 'puremourning/vimspector'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-pathogen'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'connorholyday/vim-snazzy'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'
Plug 'mattn/emmet-vim'
Plug 'roxma/nvim-yarp'

Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'tmhedberg/SimpylFold'

Plug 'terryma/vim-multiple-cursors'
Plug 'skywind3000/asyncrun.vim'
call plug#end()


