let mapleader=" "

let g:tabular_loaded = 1
" terminal
"let $TERM='iterm2'
"autocmd VimEnter * Tmuxline
" netrw
let g:netrw_banner=0
let g:netrw_preview=1
let g:netrw_liststyle=3
let g:netrw_browse_split=4
" 新打开窗口的宽度
let g:netrw_winsize=70
hi netrwCompress term=NONE cterm=NONE gui=NONE ctermfg=10 guifg=green  ctermbg=0 guibg=black
hi netrwData term=NONE cterm=NONE gui=NONE ctermfg=9 guifg=blue ctermbg=0 guibg=black
hi netrwHdr term=NONE cterm=NONE,italic gui=NONE guifg=SeaGreen1
hi netrwLex term=NONE cterm=NONE,italic gui=NONE guifg=SeaGreen1
hi netrwYacc term=NONE cterm=NONE,italic gui=NONE guifg=SeaGreen1
hi netrwLib term=NONE cterm=NONE gui=NONE ctermfg=14 guifg=yellow
hi netrwObj term=NONE cterm=NONE gui=NONE ctermfg=12 guifg=red
hi netrwTilde term=NONE cterm=NONE gui=NONE ctermfg=12 guifg=red
hi netrwTmp term=NONE cterm=NONE gui=NONE ctermfg=12 guifg=red
hi netrwTags term=NONE cterm=NONE gui=NONE ctermfg=12 guifg=red
hi netrwDoc term=NONE cterm=NONE gui=NONE ctermfg=220 ctermbg=27 guifg=yellow2 guibg=Blue3
hi netrwSymLink  term=NONE cterm=NONE gui=NONE ctermfg=220 ctermbg=27 guifg=grey60

" Augroup VimStartup: 判断打开的文件是有一个空文件的话。
augroup VimStartup
    au!
    au VimEnter * if expand("%") == "" | e . | endif
augroup END

" python
let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_prog = '/usr/bin/python2'
"colorscheme desert
set helplang=cn
set mouse=nv
" set list
set timeoutlen=150
set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50
set title titlestring=%<%F%=%l/%L-%P\ titelen=70
set encoding=utf-8
set number
set nowrap
set smartcase
set ignorecase
set showcmd
set cmdheight=1
"set termguicolors
set fillchars=stl:\ ,stlnc:\ ,vert:│,fold:·,diff:-
set formatexpr=mylang#Format()
"set verbose=9

autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline
set complete-=i   " disable scanning included files
set complete-=t   " disable searching tags

set smarttab
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab

hi Pmenu ctermfg=black ctermbg=gray  guibg=#444444
hi PmenuSel ctermfg=7 ctermbg=4 guibg=#555555 guifg=#ffffff
hi PmenuSbar ctermfg=8 ctermbg=5 guibg=#666666 guifg=#AAAAAA
hi PmenuThumb ctermfg=9 ctermbg=6  guibg=#777777 guifg=#BBBBBB

set clipboard+=unnamedplus

set autoindent
set smartindent

set nobackup
set nowritebackup
set noswapfile

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on


set path+=**
set wildmenu
set wildmode=list:full
set wildignore=*.o,*.obj,*.class,*.bak,*/target/,*/out/,*/.vim/,*/.git/

set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" set statusline=%{get(g:,'coc_git_status','')}%{get(b:,'coc_git_blame','')}
set ttyfast
set scrolloff=4
set scrolljump=0
set scrollback=4

set signcolumn=yes
set shortmess+=c
set showbreak=>\

map ; :
map - $
" map s <nop>
nnoremap <silent> <expr>s col(".")==1?"$":"0"
vnoremap <silent> <expr>s col(".")==1?"$h":"0"
map <LEADER>n :Explore .<CR>
map <LEADER>b :CocCommand explorer <CR>
" 使用autoformat会自动将空格删除掉。所以使用<SPACE>
map <LEADER>f :find<SPACE>
map <LEADER>d :!mkdir -p<SPACE>
map <LEADER>e :edit %:p:h/
map <LEADER>s :nohlsearch<CR>

" 搜索高亮 离开关掉高亮
augroup vimrc-incsearch-highlight
    autocmd!
    autocmd CmdlineEnter /,\? :set hlsearch
    autocmd CmdlineLeave /,\? :set nohlsearch
augroup END

map <LEADER>t yaw<ESC>:!pbpaste \| say<CR>
map <LEADER>r :tabedit ~/.config/nvim<CR>:lcd ~/.config/nvim<CR>
map <LEADER>rc :edit ~/.config/nvim/init.vim<CR>
map <LEADER>sc :source ~/.config/nvim/init.vim<CR>
nmap bd :%bdelete<CR>
nmap N Nzz
nmap n nzz
"nmap <tab> V>
"nmap <s-tab> V<
"vmap <tab> >gv
"vmap <s-tab> <gv
vmap <LEADER>/ <C-v>0I//<ESC>

noremap H :vertical resize+10<CR>
noremap J :below resize+10<CR>
noremap <C-j> <PageDown>
noremap K :below resize-10<CR>
noremap <C-k> <PageUp>
noremap L :vertical resize-10<CR>
noremap <LEADER><CR> :CocFix<CR>
noremap <LEADER>c :CocList<CR>
noremap <LEADER>cc :CocList colors<CR>
noremap <LEADER>cg :CocList grep<CR>
noremap <LEADER>cb :CocList buffers<CR>
noremap <LEADER>cm :CocList marketplace<CR>
noremap <LEADER>cl :CocList LeetcodeProblems<CR>
noremap <LEADER>- :tabprevious<CR>
noremap <LEADER>= :tabNext<CR>
noremap <LEADER>[ :bprevious<CR>
noremap <LEADER>] :bNext<CR>
noremap <LEADER>m :call SetMakeprg()<CR>:make %<CR>
noremap <LEADER>q :bdelete % <CR>
noremap af :Autoformat<CR>
noremap cc <C-w>
noremap co :copen 10<CR>
" 使用同一个快捷键，做不同的效果。
"let g:floaterm = 1
if exists('g:floaterm')
    noremap tt :FloatermToggle <CR>
    noremap lg :terminal lazygit floaterm<CR>a
    " noremap fm <C-w>v<Esc>:terminal vifm | FloatermToggle<CR>
else
    noremap lg <C-w>v<Esc>:terminal lazygit<CR>
    noremap fm <C-w>v<Esc>:terminal vifm .<CR>
    noremap tm :CocCommand terminal.Toggle<CR>
    noremap tt <C-w>v<Esc>:terminal <CR>i
endif

tnoremap <S-Esc> <C-\><C-n>
tnoremap <LEADER>q <C-\><C-n>a<CR>exit<CR><ESC>i
nnoremap <buffer> <LEADER>i :!./% <CR>

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
                \https://raw.GitHub.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin("~/.config/nvim/plugged")
Plug 'Chiel92/vim-autoformat'
Plug 'tpope/vim-surround'
"Plug 'SirVer/ultisnips'
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'tomtom/tlib_vim'
"Plug 'garbas/vim-snipmate'
"Plug 'honza/vim-snippets'
"Plug 'tpope/vim-pathogen'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'voldikss/vim-floaterm'
"Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
"Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
Plug 'terryma/vim-multiple-cursors'
Plug 'voldikss/vim-translator'
Plug 'lyokha/vim-xkbswitch'
call plug#end()
"xkbswitch
let g:XkbSwitchEnabled = 1
" Goyo
"
"let g:goyo_vim = 1
if exists('g:goyo_vim')
    map gy <ESC>:Goyo<CR>
    function! s:goyo_enter()
        if executable('tmux') && strlen($TMUX)
            silent !tmux set status off
            silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
        endif
        set noshowmode
        set noshowcmd
        set scrolloff=999
        "Limelight
        " ...
    endfunction

    function! s:goyo_leave()
        if executable('tmux') && strlen($TMUX)
            silent !tmux set status on
            silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
        endif
        set showmode
        set showcmd
        set scrolloff=5
        "Limelight!
        " ...
    endfunction

    autocmd! User GoyoEnter nested call <SID>goyo_enter()
    autocmd! User GoyoLeave nested call <SID>goyo_leave()
endif
" gitgutter
if exists('g:vim_gitgutter')


    let g:gitgutter_max_signs = 500  " default value (Vim < 8.1.0614, Neovim < 0.4.0)
    let g:gitgutter_max_signs = -1   " default value (otherwise)

    nmap ]h <Plug>(GitGutterNextHunk)
    nmap [h <Plug>(GitGutterPrevHunk)

    let g:gitgutter_show_msg_on_hunk_jumping = 1

    command! Gqf GitGutterQuickFix | copen

    nmap ghs <Plug>(GitGutterStageHunk)
    nmap ghu <Plug>(GitGutterUndoHunk)

    nmap ghp <Plug>(GitGutterPreviewHunk)

    omap ih <Plug>(GitGutterTextObjectInnerPending)
    omap ah <Plug>(GitGutterTextObjectOuterPending)
    xmap ih <Plug>(GitGutterTextObjectInnerVisual)
    xmap ah <Plug>(GitGutterTextObjectOuterVisual)

    set foldtext=gitgutter#fold#foldtext()

    " Your vimrc
    function! GitStatus()
        let [a,m,r] = GitGutterGetHunkSummary()
        return printf('+%d ~%d -%d', a, m, r)
    endfunction
    set statusline+=%{GitStatus()}

    " vim-gitgutter used to do this by default:
    highlight! link SignColumn LineNr

    " or you could do this:
    highlight SignColumn guibg=whatever ctermbg=gray

    " Vim 7.4.2201
    set signcolumn=yes

    let g:gitgutter_sign_allow_clobber = 1
    let g:gitgutter_set_sign_backgrounds = 1
    highlight GitGutterAdd    guifg=#009900 ctermfg=2
    highlight GitGutterChange guifg=#bbbb00 ctermfg=3
    highlight GitGutterDelete guifg=#ff2222 ctermfg=1


    let g:gitgutter_sign_added = 'xx'
    let g:gitgutter_sign_modified = 'yy'
    let g:gitgutter_sign_removed = 'zz'
    let g:gitgutter_sign_removed_first_line = '^^'
    let g:gitgutter_sign_removed_above_and_below = '{'
    let g:gitgutter_sign_modified_removed = 'ww'

    highlight link GitGutterChangeLine DiffText

    highlight link GitGutterChangeLineNr Underlined
    let g:gitgutter_diff_relative_to = 'working_tree'
    let g:gitgutter_diff_base = '<commit SHA>'
    let g:gitgutter_git_args = '--git-dir-""'
    let g:gitgutter_diff_args = '-w'
    let g:gitgutter_grep = 'grep'
    " let g:gitgutter_async = 0
    function! CleanUp(...)
        if a:0  " opfunc
            let [first, last] = [line("'["), line("']")]
        else
            let [first, last] = [line("'<"), line("'>")]
        endif
        for lnum in range(first, last)
            let line = getline(lnum)

            " clean up the text, e.g.:
            let line = substitute(line, '\s\+$', '', '')

            call setline(lnum, line)
        endfor
    endfunction

    nmap <silent> <Leader>x :set opfunc=CleanUp<CR>g@

    function! GlobalChangedLines(ex_cmd)
        for hunk in GitGutterGetHunks()
            for lnum in range(hunk[2], hunk[2]+hunk[3]-1)
                let cursor = getcurpos()
                silent! execute lnum.a:ex_cmd
                call setpos('.', cursor)
            endfor
        endfor
    endfunction

    command -nargs=1 Glines call GlobalChangedLines(<q-args>)


    function! GitGutterNextHunkCycle()
        let line = line('.')
        silent! GitGutterNextHunk
        if line('.') == line
            1
            GitGutterNextHunk
        endif
    endfunction

    function! NextHunkAllBuffers()
        let line = line('.')
        GitGutterNextHunk
        if line('.') != line
            return
        endif

        let bufnr = bufnr('')
        while 1
            bnext
            if bufnr('') == bufnr
                return
            endif
            if !empty(GitGutterGetHunks())
                1
                GitGutterNextHunk
                return
            endif
        endwhile
    endfunction

    function! PrevHunkAllBuffers()
        let line = line('.')
        GitGutterPrevHunk
        if line('.') != line
            return
        endif

        let bufnr = bufnr('')
        while 1
            bprevious
            if bufnr('') == bufnr
                return
            endif
            if !empty(GitGutterGetHunks())
                normal! G
                GitGutterPrevHunk
                return
            endif
        endwhile
    endfunction

    nmap <silent> ]c :call NextHunkAllBuffers()<CR>
    nmap <silent> [c :call PrevHunkAllBuffers()<CR>


endif

""" Configuration example
" Echo translation in the cmdline
nmap <silent> <Leader>t <Plug>Translate
vmap <silent> <Leader>t <Plug>TranslateV
" Display translation in a window
nmap <silent> <Leader>w <Plug>TranslateW
vmap <silent> <Leader>w <Plug>TranslateWV
" Replace the text with translation
nmap <silent> <Leader>r <Plug>TranslateR
vmap <silent> <Leader>r <Plug>TranslateRV
" Translate the text in clipboard
nmap <silent> <Leader>x <Plug>TranslateX

nnoremap <silent><expr> <M-f> translator#window#float#has_scroll() ?
            \ translator#window#float#scroll(1) : "\<M-f>"
nnoremap <silent><expr> <M-b> translator#window#float#has_scroll() ?
            \ translator#window#float#scroll(0) : "\<M-f>"

function SetMakeprg()
    if &filetype == 'c'
        set makeprg=gcc
    elseif &filetype =='cpp'
        set makeprg=g++
    elseif &filetype == 'python'
        set makeprg=python3
    elseif &filetype == 'vim'
        set makeprg=source
    elseif &filetype == 'java'
        set makeprg=~/Library/Java/JavaVirtualMachines/jdk-14.0.1+7/Contents/Home/bin/java
    elseif &filetype == 'scala'
        set makeprg=scala
    elseif &filetype == 'js'
        set makeprg=node
    endif
endfunction

function Markdown()
    if &filetype=='markdown'
        nnoremap bs :!pbpaste \| bash \| tee /dev/tty \| pbcopy<CR>
    endif
endfunction



function SignDefine()
    if &filetype == 'c' || &filetype == 'h'
    elseif &filetype =='cpp'
    elseif &filetype == 'python'
    elseif &filetype == 'vim'
    elseif &filetype == 'java'

        command! MakeTags :!ctags -R . <CR>
        nnoremap im /import<CR>N$a<CR>import<space>;<left>
        nnoremap // 0i//<ESC>:Autoformat<CR>
        vnoremap // 0I//<ESC>:Autoformat<CR>
    elseif &filetype == 'scala'
    elseif &filetype == 'js'
    endif
endfunction

" 根据不同的文件类型，控制当前的path。直接重置path，禁止第三方插件对path的修改。
function SetPath()
    if &filetype=='java'
        set path=.,**,~/sourceSpace/jdk/src/**
        set path+=~/Library/Java/JavaVirtualMachines/jdk8u252-b09/Contents/Home/include/**
    elseif &filetype == 'python'
        set path=.,**,~/Library/Python/3.7/lib/python/site-packages/**
    endif
endfunction

autocmd FileType scala nnoremap <buffer> <LEADER>i :!scala %<CR>
autocmd FileType c nnoremap <buffer> <LEADER>i :!gcc % && ./a.out && rm ./a.out <CR>
autocmd FileType cpp nnoremap <buffer> <LEADER>i :!g++ % && ./a.out && rm ./a.out <CR>
autocmd FileType python nnoremap <buffer> <LEADER>i :!python3 % <CR>
autocmd FileType sh nnoremap <buffer> <LEADER>i :!sh % <CR>
autocmd FileType go nnoremap <buffer> <LEADER>i :!go run % <CR>
autocmd FileType java nnoremap <buffer> <LEADER>i :!/Users/zhangxiaomin/Library/Java/JavaVirtualMachines/jdk-14.0.1+7/Contents/Home/bin/java % <CR>
autocmd FileType rust nnoremap <buffer> <LEADER>i :!cargo run <CR>
autocmd FileType javascript nnoremap <buffer> <LEADER>i :!node % <CR>
autocmd FileType markdown nnoremap <buffer> <LEADER>i :Typora <CR>
autocmd FileType vim,zsh,tmux nnoremap <buffer> <LEADER>i :source % <CR>
autocmd FileType html nnoremap <buffer> <leader>i :!/Applications/Firefox.app/Contents/MacOS/firefox-bin %:p<CR>
autocmd FileType * call SetPath()
autocmd FileType * call SignDefine()
autocmd BufWrite * execute('Autoformat')
autocmd TermOpen * set nonumber
autocmd FileType markdown call Markdown()

autocmd BufNewFile *.java 0r ~/.config/nvim/template/java.tpl | autocmd! BufNewFile
autocmd BufNewFile *.py 0r ~/.config/nvim/template/python.tpl | autocmd! BufNewFile
autocmd BufNewFile *.go 0r ~/.config/nvim/template/golang.tpl | autocmd! BufNewFile
autocmd BufNewFile *.c 0r ~/.config/nvim/template/c.tpl | autocmd! BufNewFile
autocmd BufNewFile *.cpp 0r ~/.config/nvim/template/cpp.tpl | autocmd! BufNewFile
autocmd BufNewFile *.rs 0r ~/.config/nvim/template/rust.tpl | autocmd! BufNewFile
autocmd BufNewFile *.html 0r ~/.config/nvim/template/html.tpl | autocmd! BufNewFile
autocmd BufNewFile *.js 0r ~/.config/nvim/template/javascript.tpl | autocmd! BufNewFile

augroup java_class
    autocmd!
    autocmd BufEnter *.class !javap -v % | less
    autocmd BufEnter *.class bdelete
augroup end
" vim的term终端应该不是item2，然后是不能显示图片,还有是这个less没有起作用。
" 可以使用vim吊起预览的命令不一定使用imgcat打印在终端。
augroup image
    autocmd!
    autocmd BufEnter *.jpg,*.png,*.pdf !/Applications/Firefox.app/Contents/MacOS/firefox-bin %:p
    autocmd BufEnter *.jpg,*.png,*.pdf bdelete!
augroup end
augroup uncompress
    autocmd!
    autocmd BufEnter *.gz %!gunzip
augroup end

augroup gzip
    autocmd!
    autocmd BufReadPre,FileReadPre    *.gz set bin
    autocmd BufReadPost,FileReadPost  *.gz '[,']!gunzip
    autocmd BufReadPost,FileReadPost  *.gz set nobin
    autocmd BufReadPost,FileReadPost  *.gz execute ":doautocmd BufReadPost " . expand("%:r")
    autocmd BufWritePost,FileWritePost    *.gz !mv <afile> <afile>:r
    autocmd BufWritePost,FileWritePost    *.gz !gzip <afile>:r

    autocmd FileAppendPre     *.gz !gunzip <afile>
    autocmd FileAppendPre     *.gz !mv <afile>:r <afile>
    autocmd FileAppendPost        *.gz !mv <afile> <afile>:r
    autocmd FileAppendPost        *.gz !gzip <afile>:r
augroup END

autocmd BufWritePre,FileWritePre *.html   ks|call LastMod()|'s
fun LastMod()
    if line("$") > 20
        let l = 20
    else
        let l = line("$")
    endif
    exe "1," . l . "g/Last modified: /s/Last modified: .*/Last modified: " .
                \ strftime("%Y %b %d")
endfun
" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
    inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
    inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> 'p <Plug>(coc-diagnostic-prev)
nmap <silent> 'n <Plug>(coc-diagnostic-next)
" grep word under cursor
command! -nargs=+ -complete=custom,s:GrepArgs Rg exe 'CocList grep '.<q-args>

function! s:GrepArgs(...)
    let list = ['-S', '-smartcase', '-i', '-ignorecase', '-w', '-word',
                \ '-e', '-regex', '-u', '-skip-vcs-ignores', '-t', '-extension']
    return join(list, "\n")
endfunction

" Keymapping for grep word under cursor with interactive mode
nnoremap <silent> <Leader>cf :exe 'CocList -I --input='.expand('<cword>').' grep'<CR>

vnoremap <leader>g :<C-u>call <SID>GrepFromSelected(visualmode())<CR>
nnoremap <leader>g :<C-u>set operatorfunc=<SID>GrepFromSelected<CR>g@

function! s:GrepFromSelected(type)
    let saved_unnamed_register = @@
    if a:type ==# 'v'
        normal! `<v`>y
    elseif a:type ==# 'char'
        normal! `[v`]y
    else
        return
    endif
    let word = substitute(@@, '\n$', '', 'g')
    let word = escape(word, '| ')
    let @@ = saved_unnamed_register
    execute 'CocList grep '.word
endfunction



let g:markdown_fenced_languages = ['css', 'js=javascript']
let g:mkdj_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
            \ 'mkit': {},
            \ 'katex': {},
            \ 'uml': {},
            \ 'maid': {},
            \ 'disable_sync_scroll': 0,
            \ 'sync_scroll_type': 'middle',
            \ 'hide_yaml_meta': 1,
            \ 'sequence_diagrams': {},
            \ 'flowchart_diagrams': {},
            \ 'content_editable': v:false
            \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = '8888'
let g:mkdp_page_title = '「${name}」'




if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰ '
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:snipMate = { 'snippet_version' : 1 }
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tab_count = 2
let g:airline#extensions#tabline#excludes = []
let g:airline#extensions#tabline#exclude_preview = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab
let g:airline#extensions#coc#enabled = 0
let g:airline#extensions#coc#error_symbol = 'Error:'
let g:airline#extensions#coc#warning_symbol = 'Warning:'
let g:airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let g:airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
let g:airline#extensions#fzf#enabled = 1
let g:airline#extensions#nerdtree_status = 1
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'
let airline#extensions#ale#show_line_numbers = 1
let airline#extensions#ale#open_lnum_symbol = '(L'
let airline#extensions#ale#close_lnum_symbol = ')'

let g:airline#extensions#tmuxline#enabled = 0
let airline#extensions#tmuxline#color_template = 'normal'
let airline#extensions#tmuxline#snapshot_file =  "~/.tmux-statusline-colors.conf"

" lightline
let g:lightline = {
            \ 'active': {
            \   'left': [
            \     [ 'mode', 'paste' ],
            \     [ 'ctrlpmark', 'git', 'diagnostic', 'cocstatus', 'filename', 'method' ]
            \   ],
            \   'right':[
            \     [ 'filetype', 'fileencoding', 'lineinfo', 'percent' ],
            \     [ 'blame' ]
            \   ],
            \ },
            \ 'component_function': {
            \   'blame': 'LightlineGitBlame',
            \ }
            \ }

function! LightlineGitBlame() abort
    let blame = get(b:, 'coc_git_blame', '')
    " return blame
    return winwidth(0) > 120 ? blame : ''
endfunction


" floating terminal

let g:floaterm_width = 0.8
let g:floaterm_height = 0.8

""" Configuration
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F10>'

nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>

" hi Floaterm guibg=black
" hi FloatermBorder guibg=gray guifg=blue

function s:floatermSettings()
    setlocal number
    " more settings
endfunction

autocmd FileType floaterm call s:floatermSettings()

function Typora()
    " Launch Typora
    call system("open -a Typora \"" . expand("%") . "\"")
    setlocal autoread
endfunction

command! Typora call Typora()


if exists('g:coc_nvim')


    " Use tab for trigger completion with character ahead and navigate.
    " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
    " other plugin before putting this into your config.
    inoremap <silent><expr> <TAB>
                \ pumvisible() ? "\<C-n>" :
                \ <SID>check_back_space() ? "\<TAB>" :
                \ coc#refresh()
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

    function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    " Use <c-space> to trigger completion.使用C-r重新触发自动补全。
    if has('nvim')
        inoremap <silent><expr> <C-r> coc#refresh()
    endif

    "nmap <leader><leader>t <Plug>(coc-translator-p)
    "vmap <Leader><leader>t <Plug>(coc-translator-pv)
    nmap <leader><Leader>e <Plug>(coc-translator-e)
    vmap <leader><Leader>e <Plug>(coc-translator-ev)
    nmap <leader><Leader>r <Plug>(coc-translator-r)
    vmap <leader><Leader>r <Plug>(coc-translator-rv)

    nnoremap <silent> <space>w  :exe 'CocList -I --normal --input='.expand('<cword>').' words'<CR>


    " GoTo code navigation.
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)

    " Use K to show documentation in preview window
    nnoremap <silent> M :call <SID>show_documentation()<CR>
    function! s:show_documentation()
        if (index(['im','help'], &filetype) >= 0)
            execute 'h '.expand('<cword>')
        else
            call CocAction('doHover')
        endif
    endfunction


    augroup mygroup
        autocmd!
        " Setup formatexpr specified filetype(s).
        autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
        " Update signature help on jump placeholder.
        autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
    augroup end

    autocmd CursorHold * silent call CocActionAsync('highlight')

    imap <C-l> <Plug>(coc-snippets-expand)

    vmap <C-j> <Plug>(coc-snippets-select)

    let g:coc_snippet_next = '<C-j>'

    let g:coc_snippet_prev = '<C-k>'

    imap <C-j> <Plug>(coc-snippets-expand-jump)


    inoremap <silent><expr> <TAB>
                \ pumvisible() ? coc#_select_confirm() :
                \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
                \ <SID>check_back_space() ? "\<TAB>" :
                \ coc#refresh()

    function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1]  =~# '\s'
    endfunction


    let g:coc_snippet_next = '<tab>'

    let g:coc_global_extensions=[
                \'coc-cfn-lint',
                \'coc-clangd',
                \'coc-db',
                \'coc-emmet',
                \'coc-explorer',
                \'coc-git',
                \'coc-go',
                \'coc-highlight',
                \'coc-jedi',
                \'coc-json',
                \'coc-html',
                \'coc-lists',
                \'coc-marketplace',
                \'coc-markmap',
                \'coc-metals',
                \'coc-pairs',
                \'coc-pyright',
                \'coc-python',
                \'coc-snippets',
                \'coc-terminal',
                \'coc-todolist',
                \'coc-translator',
                \'coc-tsserver',
                \'coc-twitch-highlight',
                \'coc-vimlsp',
                \'coc-xml',
                \'coc-yank',
                \'coc-java',
                \'coc-java-debug',
                \'coc-java-lombok'
                \]
    " CocCommand explorer
    let g:coc_explorer_global_presets = {
                \   '.vim': {
                \     'root-uri': '~/.vim',
                \   },
                \   'tab': {
                \     'position': 'tab',
                \     'quit-on-open': v:true,
                \   },
                \   'floating': {
                \     'position': 'floating',
                \     'open-action-strategy': 'sourceWindow',
                \   },
                \   'floatingTop': {
                \     'position': 'floating',
                \     'floating-position': 'center-top',
                \     'open-action-strategy': 'sourceWindow',
                \   },
                \   'floatingLeftside': {
                \     'position': 'floating',
                \     'floating-position': 'left-center',
                \     'floating-width': 50,
                \     'open-action-strategy': 'sourceWindow',
                \   },
                \   'floatingRightside': {
                \     'position': 'floating',
                \     'floating-position': 'right-center',
                \     'floating-width': 50,
                \     'open-action-strategy': 'sourceWindow',
                \   },
                \   'simplify': {
                \     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
                \   }
                \ }

    " Use preset argument to open it
    nmap <space>ed :CocCommand explorer --preset .vim<CR>
    nmap <space>ef :CocCommand explorer --preset floating<CR>

    " List all presets
    nmap <space>el :CocList explPresets<CR>

    " navigate chunks of current buffer
    nmap [g <Plug>(coc-git-prevchunk)
    nmap ]g <Plug>(coc-git-nextchunk)
    " navigate conflicts of current buffer
    nmap [c <Plug>(coc-git-prevconflict)
    nmap ]c <Plug>(coc-git-nextconflict)
    " show chunk diff at current position
    nmap gs <Plug>(coc-git-chunkinfo)
    " show commit contains current position
    nmap gc <Plug>(coc-git-commit)
    " create text object for git chunks
    omap ig <Plug>(coc-git-chunk-inner)
    xmap ig <Plug>(coc-git-chunk-inner)
    omap ag <Plug>(coc-git-chunk-outer)
    xmap ag <Plug>(coc-git-chunk-outer)
    nnoremap <silent> <space>g  :<C-u>CocList --normal gstatus<CR>
    autocmd CursorHold * :CocCommand git.refresh


endif


if exists('g:idea_vimrc')
    nnoremap ; :action RunAnything<cr>
    " 这个设置是没有生效的。
    " set cmdheight=2
    " normal模式使用english
    set keep-english-in-normal
    " 进入insert模式恢复输入法
    set keep-english-in-normal-and-restore-in-insert
    " goto file
    noremap gf <ESC>:action GotoFile<CR>
    noremap <leader>` <ESC>:action SelectInProjectView<CR>
    "nnoremap <C-l> :action Tree-selectChild<cr>
    "nnoremap <C-j> :action Tree-selectNext<cr>
    "nnoremap <C-h> :action Tree-selectParent<cr>
    "nnoremap <C-k> :action Tree-selectPrevious<cr>
    "凡是不能使用hjkl这四个键位的，都可以用ctrl
    nnoremap <C-l> <Right>
    nnoremap <C-j> <Down>
    nnoremap <C-h> <Left>
    nnoremap <C-k> <Up>
    nnoremap <C-O> <ESC>:action Back<CR>
    nnoremap <C-I> <ESC>:action Forward<CR>

    nnoremap <LEADER>sc :source  ~/.ideavimrc<cr>
    nnoremap <LEADER>nb :action ActivateNavBar<CR>
    nnoremap cow :action EditorToggleUseSoftWraps<cr>
    nnoremap col :action EditorToggleShowWhitespaces<cr>
    nnoremap <LEADER>l :action ShowPopupMenu<cr>
    nnoremap <LEADER>q :action CloseContent<cr>
    nnoremap <LEADER>Q :action ReopenClosedTab<cr>
    nnoremap <LEADER>\ :action VimFilePrevious<cr>
    nnoremap <LEADER>e :action SearchEverywhere<cr>
    nnoremap <LEADER>E :action Switcher<cr>
    nnoremap <LEADER>fs :action FileStructurePopup<cr>
    nnoremap <LEADER>gs :action GotoSymbol<cr>
    nnoremap <LEADER>se :action SearchEverywhere<cr>
    "nnoremap <LEADER>a :action GotoAction<cr>
    " 这个东西为什么会有提示呢。
    nnoremap <LEADER>bp :action ToggleLineBreakpoint<cr>
    nnoremap <LEADER>ip :action GotoImplementation<cr>
    nnoremap <LEADER>sm :action GotoSuperMethod<cr>
    nnoremap <LEADER>u :action FindUsages<cr>
    nnoremap <LEADER>gt :action GotoTest<cr>
    nnoremap <LEADER>k :action HighlightUsagesInFile<cr>
    nnoremap \r :action RunClass<cr>
    nnoremap \R :action Run<cr>
    nnoremap \d :action DebugClass<cr>
    nnoremap \D :action Debug<cr>
    nnoremap \c :action CheckStyleCurrentFileAction<cr>
    nnoremap <LEADER>rr :action RenameElement<cr>
    nnoremap [<LEADER> O<esc>j
    nnoremap ]<LEADER> o<esc>k
    nnoremap [q :action PreviousOccurence<cr>
    nnoremap ]q :action NextOccurence<cr>
    nnoremap [m :action MethodUp<cr>
    nnoremap ]m :action MethodDown<cr>
    nnoremap [c :action VcsShowPrevChangeMarker<cr>
    nnoremap ]c :action VcsShowNextChangeMarker<cr>
    nnoremap <c-o> :action Back<cr>
    nnoremap <c-i> :action Forward<cr>
    nnoremap g<c-o> <c-o>
    nnoremap g<c-i> <c-i>
    nnoremap / :action Find<cr>
    nnoremap g/ /
    nnoremap <LEADER>m   :action ActivateMavenToolWindow<cr>
    " nnoremap <LEADER>n  :action ActivateProjectToolWindow<cr>
    " nnoremap <LEADER>n <M-1>
    nnoremap <LEADER>s :action
    nnoremap <LEADER>n :action ActivateProjectToolWindow<CR>
    nnoremap <LEADER>t   :action ActivateTerminalToolWindow<cr>
    "nnoremap <LEADER>-   :action GotoPreviousBookmark<cr>
    nnoremap <LEADER>1 :action   GoToTab1<cr>
    nnoremap <LEADER>2 :action   GoToTab2<cr>
    nnoremap <LEADER>3 :action   GoToTab3<cr>
    nnoremap <LEADER>4 :action   GoToTab4<cr>
    nnoremap <LEADER>5 :action   GoToTab5<cr>
    nnoremap <LEADER>6 :action   GoToTab6<cr>
    nnoremap <LEADER>7 :action   GoToTab7<cr>
    nnoremap <LEADER>8 :action   GoToTab8<cr>
    nnoremap <LEADER>9 :action   GoToTab9<cr>
    nnoremap <LEADER>b    :action HideActiveWindow<cr>
    nnoremap <LEADER>sc   <ESC>:action IdeaVim.ReloadVimRc.reload<cr>
    nnoremap <LEADER>-    :action NextTab<cr>
    nnoremap <LEADER>=   :action PreviousTab<cr>
    nnoremap <LEADER>r    :action ReformatCode<cr>
    nnoremap <LEADER>f   :action ToggleFullScreen<cr>
    nnoremap <LEADER>z   :action ToggleZenMode<cr>
    " nnoremap <LEADER>z    :action ZoomCurrentWindow<cr>
endif

