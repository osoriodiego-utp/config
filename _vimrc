"Plugins
call plug#begin('~/.vim/plugged')
"theme
  Plug 'morhetz/gruvbox'
  Plug 'maximbaz/lightline-ale'
  Plug 'itchyny/lightline.vim'
"navigation
  Plug 'scrooloose/nerdtree'
  Plug 'christoomey/vim-tmux-navigator'
"search
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim' "no tested by me
"ide js
  Plug 'yuezk/vim-js'
  Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
"editor
  Plug 'jiangmiao/auto-pairs'
  Plug 'alvan/vim-closetag'
  Plug 'preservim/nerdcommenter'
  "Plug 'sheerun/vim-polyglot' need python
  Plug 'yggdroot/indentline'
"autocomplete
  "Plug 'sirver/ultisnips' need python
"others
  Plug 'tpope/vim-surround'
  Plug 'mhinz/vim-signify' "no tested by me
call plug#end()

"Theme config
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
set guifont=Fira_Code_Retina:h10

"Editor
  set title
  set encoding=utf8
  set clipboard=unnamed
  set paste "Copy clipboard Ctrl+Shift+V
  set mouse=a
  set numberwidth=1
  set showcmd
  set ruler
  set showmatch
  set number "line number
  set cursorline
  set relativenumber
  set spell
  set laststatus=2
  set sw=2
  set backspace=2
  set noshowmode
  set autoindent
  set smartindent
  syntax on

"Keymaps
  let mapleader = " "
  
  nmap <Leader>nt :NERDTreeFind<CR>
  let NERDTreeQuitOnOpen=1
  
  nmap <Leader>cc :NERDCommenterToggle<CR>
  let g:NERDSpaceDelims = 1
  
  let g:closetag_shortcut = '>'
  let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
  
  "move_line_up
  nnoremap <S-Up> :m-2<CR>
  "move_line_down
  nnoremap <S-Down> :m+<CR>

"Macros
let @q='viwS"el'	"quotes
let @c='0i// j0'	"comment //
let @u='03x$'		"uncomment //
