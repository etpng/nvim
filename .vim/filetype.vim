autocmd FileType c nnoremap <buffer> <LEADER>i :!gcc % && ./a.out && rm ./a.out <CR>
autocmd FileType cpp nnoremap <buffer> <LEADER>i :!g++ % && ./a.out && rm ./a.out <CR>
autocmd FileType python nnoremap <buffer> <LEADER>i :AsyncRun -raw python3 % <CR>
autocmd FileType sh nnoremap <buffer> <LEADER>i :AsyncRun -raw sh % <CR>
autocmd FileType go nnoremap <buffer> <LEADER>i :!go run % <CR>
autocmd FileType java nnoremap <buffer> <LEADER>i :!javac % && java %:r <CR>
autocmd FileType rust nnoremap <buffer> <LEADER>i :!cargo run <CR>
autocmd FileType javascript nnoremap <buffer> <LEADER>i :!node % <CR>
nnoremap <buffer> <LEADER>i :!./% <CR>
autocmd FileType vim,zsh,tmux nnoremap <buffer> <LEADER>i :source % <CR>

" 0r 光标从0开始读取文件.
autocmd BufNewFile *.java 0r ~/.config/nvim/template/java.tpl | autocmd! BufNewFile
autocmd BufNewFile *.py 0r ~/.config/nvim/template/python.tpl | autocmd! BufNewFile
autocmd BufNewFile *.go 0r ~/.config/nvim/template/golang.tpl | autocmd! BufNewFile
autocmd BufNewFile *.c 0r ~/.config/nvim/template/c.tpl | autocmd! BufNewFile
autocmd BufNewFile *.cpp 0r ~/.config/nvim/template/cpp.tpl | autocmd! BufNewFile
autocmd BufNewFile *.rs 0r ~/.config/nvim/template/rust.tpl | autocmd! BufNewFile
autocmd BufNewFile *.html 0r ~/.config/nvim/template/html.tpl | autocmd! BufNewFile
autocmd BufNewFile *.js 0r ~/.config/nvim/template/javascript.tpl | autocmd! BufNewFile

