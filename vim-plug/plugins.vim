" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    "Autocomplete COC
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-python']
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    Plug 'ryanoasis/vim-devicons'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    "---THEMES---"
    Plug 'dracula/vim'
    Plug 'cseelus/vim-colors-lucid'
    Plug 'morhetz/gruvbox'
    "Fuzzi finder
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    "Easy Motion
    Plug 'Lokaltog/vim-easymotion'
    "--KNOWARK
    Plug 'mattn/emmet-vim'   
    Plug 'cakebaker/scss-syntax.vim'
    Plug 'jonsmithers/vim-html-template-literals'
    Plug 'mitsuhiko/vim-rst'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'pangloss/vim-javascript'
    Plug 'tpope/vim-commentary'
    Plug 'xuyuanp/nerdtree-git-plugin'
    Plug 'zivyangll/git-blame.vim'
    Plug 'vim-scripts/vim-auto-save'
    Plug 'airblade/vim-gitgutter'
    Plug 'itchyny/vim-gitbranch'
    Plug 'mhinz/vim-startify'
call plug#end()
