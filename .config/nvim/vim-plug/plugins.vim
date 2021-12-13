" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " For kitty
    Plug 'fladson/vim-kitty'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " airline
    Plug 'vim-airline/vim-airline'
    " airline themes
    Plug 'vim-airline/vim-airline-themes'
    " quickScope
    Plug 'unblevable/quick-scope'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    Plug 'junegunn/rainbow_parentheses.vim'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'easymotion/vim-easymotion'
    " Use release branch (recommend)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
call plug#end()
