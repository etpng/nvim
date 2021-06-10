augroup VimStartup
    " netrw
    au!
    "au VimEnter * if expand("%") == "" | Lexplore! | endif
augroup END
let g:netrw_banner=0
let g:netrw_preview=1
let g:netrw_liststyle=3
let g:netrw_browse_split=0
let g:netrw_winsize=30

augroup AutoFormat
    " when the line is so big and the save motion is so slow
    ""autocmd!
    "" the config change the config's file format so remove the row of autoformat
    ""autocmd BufWrite * if line('$') < 1000 && &filetype != 'vimwiki' | Autoformat | endif
augroup END


let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python2'

autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline
autocmd BufEnter * call SignFileType()
augroup vimrcIncsearchHighlight
    " highlight
    autocmd!
    autocmd CmdlineEnter /,\? :set hlsearch
    autocmd CmdlineLeave /,\? :set nohlsearch
augroup END

let mapleader=" "
map ; :
map - $
map R <C-r>
map s <nop>
nnoremap <silent> <expr>s col(".")==1?"$":"0"
vnoremap <silent> <expr>s col(".")==1?"$h":"0"
map cc <C-w>
map bg <C-z>
map gg <nop>
nnoremap <silent> <expr>gg line(".")==1?"G":"gg"
vnoremap <silent> <expr>gg line(".")==1?"G":"gg"

" LEADER CONFIG
map <LEADER>rc :edit ~/.config/nvim/init.vim<CR>
map <LEADER>sc :so ~/.config/nvim/init.vim<CR>
""map <LEADER>f :find<Space>
map <LEADER>f :GFiles<CR>
map <LEADER>b :buffers<CR>
map <LEADER>e :edit %:p:h
map <LEADER>s :w %:p:h
map <LEADER>v :VimwikiIndex<CR>
map <LEADER>k :!mkdir -p %:h
map <LEADER>t :terminal<CR>
map <LEADER>a za
map <LEADER>m :marks<CR>
map <LEADER>n :Lexplore!<CR>
map <LEADER>- :tabprevious<CR>
map <LEADER>= :tabnext<CR>
map <LEADER>[ :bprevious<CR>
map <LEADER>] :bnext<CR>
" the exit command like wq ,but terminal mode is like q
" map <LEADER>q :exit<CR>
" default <HOME>
map H :vertical resize -10<CR>
map J :below resize -10<CR>
map K :below resize +10<CR>
" default <Bottom>
map L :vertical resize +10<CR>
" default To Middle line of window
map M :make %<CR>
" under config lead to <C-I> failture
"nnoremap <tab> V>
"nnoremap <s-tab> V<
"vnoremap <tab> >gv
"vnoremap <s-tab> <gv
" the Q is used to go into Ex mode
"map Q Q
tmap <ESC> <C-\><C-n>

if &filetype != 'vimwiki'
    " inoremap config
    inoremap < <><ESC>i
    inoremap " ""<ESC>i
    inoremap ' ''<ESC>i
    inoremap { {}<ESC>i
    inoremap [ []<ESC>i
    inoremap ( ()<ESC>i
    inoremap !< <!-- --><ESC>
endif

set helplang=cn
set langmenu=zh_CN.UTF-8
" normal pattern can be use the mouse
set mouse=n
set autowrite
set splitright
set splitbelow
set hidden
if has("termguicolors")
    set termguicolors
endif
set backspace=indent,eol,start
"default updatetime 4000ms is not good for async update
set updatetime=100
set ruler
syntax on
set confirm
set verbose=0
set complete-=i
set complete-=t
set completeopt=preview,menu
set ttyfast
set softtabstop=4
set tabstop=4
set smarttab
set expandtab
set shiftwidth=4
set laststatus=0
set autoindent
set smartindent

if has('nvim')
    " this is only used in neovim
    set scrolloff=4
    set scrolljump=0
    set scrollback=4
endif

set showmatch
set signcolumn=yes
set shortmess+=c
"set wrap
"set showbreak=>\
set path+=**
set wildmenu
set wildmode=list:full
set wildignore=*.o,*.obj,*.class,*.bak,*/target/,*/out/,*/.vim/,*/.git/
set clipboard+=unnamedplus
set noautoindent
set nosmartindent
set nowrap
set noautochdir

" be used to bash user-defined alias
set shellcmdflag=-ic
set spelllang=en
set nospell

set foldenable
set foldcolumn=1
set foldmethod=indent
set foldlevel=99
highlight Folded guibg=red guifg=blue
highlight FoldColumn guibg=grey guifg=white


"set backupext=.bak
set nobackup
set nowritebackup
set noswapfile
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.GitHub.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin("~/.config/nvim/plugged")
Plug 'zxm66/potential-meme'
Plug 'Chiel92/vim-autoformat'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
Plug 'terryma/vim-multiple-cursors'
Plug 'voldikss/vim-translator'
Plug 'mhinz/vim-signify'
Plug 'matze/vim-move'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf',{'dir':'~/.fzf','do':'./install -all'}
Plug 'tomasiser/vim-code-dark'
"Plug 'airblade/vim-gitgutter'
"Plug 'vifm/vifm.vim'
"Plug 'vifm/neovim-vifm'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'edkolev/tmuxline.vim'
"Plug 'voldikss/vim-floaterm'
"Plug 'unblevable/quick-scope'
call plug#end()


" An action can be a reference to a function that processes selected lines
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
    \ 'ctrl-q': function('s:build_quickfix_list'),
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-x': 'split',
    \ 'ctrl-v': 'vsplit' }

set t_Co=256
set t_ut=
colorscheme codedark
let g:codedark_conservative = 1



if 1 == 1
    " Vim Move Plugin Config
    let g:move_key_modifier = 'C'
    nnoremap <C-k>   Move current line/selections up
    nnoremap <C-j>   Move current line/selections down
endif


if exists('g:qs_enable')
    " Quick Scope
    " Trigger a highliht in the appropriate direction when pressing these keys:
    let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
    " Trigger a highlight only when pressing f and F.
    let g:qs_highlight_on_keys = ['f', 'F']
    let g:qs_lazy_highlight = 1
    let g:qs_delay = 0
    highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
    highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
    augroup qs_colors
        autocmd!
        autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
        autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
    augroup END
    let g:qs_hi_priority = 2
    " Map the leader key + q to toggle quick-scope's highlighting in normal/visual mode.
    " Note that you must use nmap/xmap instead of their non-recursive versions (nnoremap/xnoremap).
    nmap <leader>q <plug>(QuickScopeToggle)
    xmap <leader>q <plug>(QuickScopeToggle)
endif

"let loaded_vifm=1

if 1 == 1
    " Translate
    nmap <silent> <Leader>w <Plug>TranslateW
    vmap <silent> <Leader>w <Plug>TranslateWV
    nmap <silent> <Leader>r <Plug>TranslateR
    vmap <silent> <Leader>r <Plug>TranslateRV
    nmap <silent> <Leader>x <Plug>TranslateX
endif

function SignFileType()
    " set different config by filetype
    if &filetype == 'c' || &filetype == 'h'
        set makeprg=gcc
    elseif &filetype =='cpp'
    elseif &filetype == 'sh'
        " shell
        set makeprg=zsh
    elseif &filetype == 'python'
    elseif &filetype == 'vim'
        " use the regix expression to change the first character to "
        nnoremap <buffer> <C-/> <ESC>:s/^/"/g<CR>
    elseif &filetype == 'java'
        " Use VIM to write java progress
        set path=.,**
        set path+=$JAVA_HOME/src/**
        " custom the make
        set makeprg=java14
        " only bring into effect on current buffer
        nnoremap <buffer> im /import<CR>N$a<CR>import<space>;<left>
        nnoremap <buffer> <Leader>/ <ESC>:s/^/\/\//g<CR>
        nnoremap <buffer> F- 0f-2xi
        nnoremap <buffer> f- f-2xi
        " use the // to  annotation code lead to single / become slow
        "nnoremap // 0i//<ESC>:Autoformat<CR>
        "vnoremap // 0I//<ESC>:Autoformat<CR>

        " must create a habit, and not more and more alter or update the vim
        " setting file
        if  !exists('g:idea_vimrc')
            " Only edit java code by vim,IDEA load the config
            inoremap <buffer> <silent> sout System.out.println(--);<ESC>
            inoremap <buffer> <silent> pv- @Test<CR>public void --(){<CR>}<ESC>
            inoremap <buffer> <silent> as- assert --:--;<ESC>
            inoremap <buffer> <silent> psv- @Test<CR>public static void --(){<CR>}<ESC>
            " you should use the psvm to instead of the main method code fragment rather than using the keyword of main.
            inoremap <buffer> <silent> psvm public static void main(String[] args){<CR>}<ESC>
            inoremap <buffer> <silent> m-nh Map<String,--> -- = new HashMap<String,-->();<ESC>
            inoremap <buffer> <silent> l-na List<--> -- = new ArrayList<-->();<ESC>
            inoremap <buffer> <silent> l-nl List<--> -- = new LinkedList<-->();<ESC>
            inoremap <buffer> <silent> ijum import java.util.Map;<CR>import java.util.HashMap;<ESC>
            inoremap <buffer> <silent> ijul import java.util.List;<CR>import java.util.ArrayList;<ESC>
            inoremap <buffer> <silent> pc- public class -- {<CR>}<ESC>
            inoremap <buffer> <silent> pi- public interface --{<CR>}<ESC>
            " method , variable
            inoremap <buffer> <silent> --- -- -- -- <ESC>
            inoremap <buffer> <silent> pS- private String --;<ESC>
            inoremap <buffer> <silent> pI- private Integer --;<ESC>
            inoremap <buffer> <silent> ttnt Thread -- = new Thread(--);<ESC>
            inoremap <buffer> <silent> iosbfa import org.springframework.beans.factory.annotation.--;<CR>
            inoremap <buffer> <silent> ioswba import org.springframework.web.bind.annotation.--;<CR>
            inoremap <buffer> <silent> ioss import org.springframework.stereotype.--;<CR>
            " how to kown the current project's package name
            inoremap <buffer> <silent> pced- package com.example.demo.--;<CR>
            inoremap <buffer> <silent> iced- import com.example.demo.--;<CR>
            inoremap <buffer> <silent> ijnc- import java.nio.channels.--;<CR>
            inoremap <buffer> <silent> ijn- import java.nio.--;<CR>
            inoremap <buffer> <silent> lllg Logger logger = LoggerFactory.getLogger(--.class);<ESC>
            inoremap <buffer> <silent> isceduas import static com.example.demo.util.Assertion.state;<CR>
            inoremap <buffer> <silent> iosL import org.slf4j.Logger;<CR>import org.slf4j.LoggerFactory;<CR><ESC>
        endif
    elseif &filetype == 'scala'
    elseif &filetype == 'js'
    elseif &filetype == 'md' || &filetype == 'vimwiki'
        map <silent> <Leader>v :VimwikiGoto<CR>
    endif
endfunction


