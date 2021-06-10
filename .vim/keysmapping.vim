" <leader> = <space>
let mapleader=" "
set updatetime=100
set cscopequickfix=s-,c-,d-,i-,t-,e-,a-
set termguicolors
hi Cursor guifg=green guibg=green
hi Cursor2 guifg=red guibg=red
set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50
set title titlestring=%<%F%=%l/%L-%P\ titelen=70
set mouse=a
set tabstop=4
set smarttab
set softtabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
set smartindent
set encoding=utf-8
set shortmess=atI
set clipboard+=unnamed
set number
set relativenumber
set cursorline
"set cursorcolumn
set scrolloff=5


set nobackup
set nowritebackup
set noswapfile

set showcmd
set cmdheight=1

set showmode
set wildmenu
set wildignore=*.o,*.obj,*.class,*.bak,*/target/,*/out/,*/.vim/,*/.git/

set smartcase
set wrap
" set autochdir
set background=light

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

set foldenable
set foldmethod=indent
set foldlevel=99
let g:Foldmethod=0

set nocompatible
set path+=**
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

syntax on

" set fillchars=vert:^
set splitright
set splitbelow
map sj :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sl :set splitbelow<CR>:split<CR>
highlight VertSplit guifg=#2e3330 guibg=#688060 ctermfg=236 ctermbg=65

"map lg :!git status && git add . && git commit -a -m "gc" && git pull && git push <CR>

tnoremap <Esc> <C-\><C-n>
noremap lg :terminal lazygit<CR>i
"noremap lg :FloatermNew lazygit<CR>
"noremap ra :FloatermNew ranger<CR>
"noremap ra :RnvimrToggle<CR>
noremap ra :terminal ranger<CR>
noremap fm :terminal vifm<CR>i
"noremap mc :FloatermNew mc<CR>
noremap fl :r !figlet

map s <nop>
map <LEADER>ac :set autochdir!<CR>
map <LEADER>s :nohlsearch<CR>
" auto wrap
map <LEADER>w :set nowrap!<CR>
map <LEADER><LEADER>s :set spell!<CR>

map tt :terminal<CR>
" map tt :FloatermToggle<CR>

map <LEADER>b :BufOnly<CR>
map <LEADER>q :bdelete %<CR>
"map <LEADER>n :NERDTreeToggle .<CR>
map <LEADER>n :Explore .<CR>
map <LEADER>e :CocCommand explorer<CR>
noremap <LEADER>k :CocFix <CR>
noremap '' <Esc>/<++++><CR>:nohlsearch<CR>c6l
" map <LEADER>n :Defx -columns=icons:indent:filename:type -split=vertical -winwidth=50 -direction=topleft<CR>
inoremap <C-q> <ESC>

noremap ; :
noremap - $
noremap J <PageDown>
noremap H :vertical resize+10<CR>
noremap K <PageUp>
noremap L :vertical resize-10<CR>
" 还原cc这个组合键
noremap cc <C-w>
noremap <LEADER>r :tabnew ~/.config/nvim/<CR>:lcd ~/.config/nvim/ <CR>
noremap <LEADER>rc :e ~/.config/nvim/init.vim<CR>
noremap <LEADER>sc :source ~/.config/nvim/init.vim<CR>
noremap 'af :Autoformat<CR>

map 'f :Autoformat <CR>
" map 't :FloatermToggle<CR>
command! VimConfig :execute 'edit ~/.config/nvim/init.vim'
command! MakeTags !ctags -R .
" quickfix
map co :copen 10<CR>
" 使用<leader>q 关闭buffer
" map cc :cclose<CR>

map cd :call setqflist([],'f')<CR>
" coc-nvim
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" autocmd FileType java nested :TagbarOpen
map <LEADER>ctags :!ctags -R .<CR>
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
map <LEADER>t :TagbarToggle<CR>

map <LEADER>p :Clap<CR>
" the \ is escape character
map <LEADER>y yaw<ESC>:AsyncRun pbpaste \| say <CR>
" map <LEADER>h yaw<ESC>:!pbpaste \| man<CR> 

" debuger vimspector
let g:vimspector_enable_mappings = 'HUMAN'


nnoremap <LEADER>m :UndotreeToggle<cr>
noremap <LEADER>c  :CocList<CR>
"map <C-f> :FZF --reverse --info=inline <CR>
"map ff :FZF --reverse --info=inline <CR>
"map <LEADER>f :FZF --reverse --info=inline <CR>
map <LEADER>f :find 
let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_prog = '/usr/bin/python2'


let g:indent_guides_guide_size            = 1  
let g:indent_guides_start_level           = 2 
let g:SimpylFold_docstring_preview		  = 1


nmap <leader><leader>t <Plug>(coc-translator-p)
vmap <Leader><leader>t <Plug>(coc-translator-pv)
nmap <leader><Leader>e <Plug>(coc-translator-e)
vmap <leader><Leader>e <Plug>(coc-translator-ev)
nmap <leader><Leader>r <Plug>(coc-translator-r)
vmap <leader><Leader>r <Plug>(coc-translator-rv)


xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

