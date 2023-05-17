execute pathogen#infect()
set hidden															"manage buffers better
let mapleader = ","		  								"set my leader key to ,
nnoremap <leader>t :CtrlP<CR>
set history=1000												"set the command buffer to something better
set wildmenu														"when matching commands, show a menu
set wildmode=list:longest								"make this matching similar to terminal's
set ignorecase													"when searching for text, default to case-insensitive
set smartcase														"let's be smart about it
set title																"set the title of the window
set scrolloff=3													"set the scroll offset to 3 lines, not 1
" for setting special swap + backup folders as per https://stackoverflow.com/a/15317146
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set ruler																"show the cursor position in the bottom of the pane
set number															"show line numbers
set backspace=indent,eol,start					"smart backspacing
set incsearch														"search dynamically, as you type
set smarttab														"set smart tabs
set shiftwidth=2												"when selecting text, understand indenting
set softtabstop=2												"set soft tabs to 2
set tabstop=2														"set tabs at 2 (so they line up)
set expandtab														"use spaces instead of tabs
set nowrap                              "turn off word wrap
set visualbell                          " use visual bell instead of an audible beep
set listchars=eol:$,nbsp:_,tab:>-,trail:~,extends:>,precedes:<  "show all whitespace characters if desired
:command Text set spell | set linebreak | set wrap "quick settings for text editing
" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
set shortmess+=A                        "do not complain about swap files

set autoread
au FocusGained,BufEnter * :checktime

" leap
" https://github.com/ggandor/leap.nvim
lua require('leap').add_default_mappings()

if exists('g:vscode')
  " VSCode extension
else
  " Vanilla neovim
  runtime macros/matchit.vim							"load the matchit plugin
  syntax on																"syntax hightlighting on
  filetype on															"based on filetype
  filetype plugin on											"something...
  filetype indent on											"indent based on filetype
  set background=dark											"set the background dark
  colorscheme molokai	  								  "set the colours 
  set guifont=Inconsolata:h15							"set the font:font size
  set guioptions-=T                       "turn off the GUI
  "ignore certain files with:
  set wildignore=public/images/**,public/javascripts/ckeditor/**,tmp/**,public/system/**,public/javascripts/fckeditor/**
  let g:ctrlp_max_files=50000
  let g:ctrlp_custom_ignore = 'node_modules\|tmp\|DS_Store\|git'
  if has('gui_running')
    set columns=130 lines=55              "set the window size
  endif
  if has("balloon_eval")
    set noballooneval       " disable vim-ruby's annoying tooltip
  endif
endif
