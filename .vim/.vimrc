if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs 
     \https://raw.GitHub.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
execute 'source ~/.config/nvim/keysmapping.vim'
execute 'source ~/.config/nvim/plugin.vim'
"execute 'source ~/.config/nvim/nerdtree.vim'
execute 'source ~/.config/nvim/markdown.vim'
" execute 'source ~/.config/nvim/defx.vim'
execute 'source ~/.config/nvim/fzf.vim'
execute 'source ~/.config/nvim/airline.vim'
execute 'source ~/.config/nvim/coc.vim'
execute 'source ~/.config/nvim/filetype.vim'
execute 'source ~/.config/nvim/floaterm.vim'
execute 'source ~/.config/nvim/clap.vim'
" execute 'source ~/.config/nvim/dashboard.vim'
