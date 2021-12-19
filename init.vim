source $HOME/.config/nvim/vim-plug/plugins.vim


"Config
" if (has("termguicolors"))
"  set termguicolors
" endif
syntax enable
colorscheme gruvbox
"NERDTree config
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" Emmet
imap ,, <C-y>,

"SWITCH PANELS
  " use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

"FUZZY FINDER CONFIG
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

set number
" set relativenumber

"EASY MOTION CONFIG
" <Leader>m{char} to move to {char}
map  <Leader>, <Plug>(easymotion-bd-f)
nmap <Leader>, <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

"KNOWARK CONFIG

set mouse=a
set scrolloff=5
set ttyfast
set laststatus=2
set showmode
set showcmd
set noswapfile
set encoding=utf-8
set clipboard=unnamed
set clipboard=unnamedplus

set linebreak
set showbreak=+++
set colorcolumn=80
set nowrap
set hlsearch
set lazyredraw

set ignorecase
set smartcase
set incsearch
set confirm
set ruler
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set cmdheight=2
set shortmess+=c

set undolevels=1000
set backspace=indent,eol,start
set autowrite
set autowriteall
set showtabline=2

"#VARIABLES
"
let g:javascript_plugin_jsdoc = 1
let g:html_indent_style1 = "inc"
let g:htl_all_templates = 1
let g:far#source = 'rg'
let g:far#ignore_files = ['.gitignore']
let g:far#preview_window_height = 15
let g:UltiSnipsExpandTrigger = "<leader>Enter"
let g:user_emmet_mode='n'
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0

" #########
" Shortcuts
" #########

map <space> <leader>
map <S-Tab> :tabn<CR>
map <Tab> <C-w>
nmap <F2> :Startify<CR>
nmap <F3> :set invnumber<CR>
nmap <F4> :NERDTreeToggle<CR>
nmap <F6> :Git<CR>
nmap <F7> :Farf<cr>
nmap <F8> :q<CR>
nmap <S-F8> :q!<CR>
nmap <silent> <esc><esc> :noh<return>
imap <c-space> <c-x><c-o>
nmap <Bs> dd
nmap <CR> o<Esc>
tmap <silent> <F12> <C-W>N

nmap <A-Up> :m .-2<CR>==
nmap <A-Down> :m .+1<CR>==
imap <A-Up> <Esc>:m .-2<CR>==gi
imap <A-Down> <Esc>:m .+1<CR>==gi
vmap <A-Up> :m '<-2<CR>gv=gv
vmap <A-Down> :m '>+1<CR>gv=gv
nmap <S-Up> V
nmap <S-Down> V
vmap <S-Up> k
vmap <S-Down> j
map <Leader>gs :Gstatus<CR>
nmap <Leader>gc :Gcommit<CR>
nmap <Leader>gd :Gdiff<CR>
nmap <Leader>gb :Gblame<CR>
nmap <Leader>gr :Gread<CR>
nmap <Leader>gw :Gwrite<CR>
nmap <Leader>gp :Gpush<CR>
nmap <Leader>g- :Silent Git stash<CR>:e<CR>
nmap <Leader>g+ :Silent Git stash pop<CR>:e<CR>
nmap <Leader>n  :NERDTreeFind<CR>
nmap <leader>f  <Plug>(coc-format-selected)
nmap <C-S-Up> :Gpush<CR>
nmap <C-S-Down> :Gpull<CR>
nmap <C-S-CR> :Gcommit<CR>
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<Bar>gv
imap <C-Space> <C-x><C-o>
imap <C-@> <C-Space>
" search for visually hightlighted text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>  
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap bb {<Enter>}<Esc><S-o>

" lisp scheme ident
autocmd filetype lisp,scheme,art setlocal equalprg=scmindent.rkt

" Niji color config
let g:niji_dark_colours = [
    \ [ '81', '#5fd7ff'],
    \ [ '99', '#875fff'],
    \ [ '1',  '#dc322f'],
    \ [ '76', '#5fd700'],
    \ [ '3',  '#b58900'],
    \ [ '2',  '#859900'],
    \ [ '6',  '#2aa198'],
    \ [ '4',  '#268bd2'],
    \ ]

" tslime {{{
let g:tslime_ensure_trailing_newlines = 1
let g:tslime_normal_mapping = '<localleader>t'
let g:tslime_visual_mapping = '<localleader>t'
let g:tslime_vars_mapping = '<localleader>T'
" }}}
