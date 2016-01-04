execute pathogen#infect()
set hidden															"manage buffers better
let mapleader = ","		  								"set my leader key to ,
nnoremap <leader>t :CtrlP<CR>
set history=1000												"set the command buffer to something better
runtime macros/matchit.vim							"load the matchit plugin
set wildmenu														"when matching commands, show a menu
set wildmode=list:longest								"make this matching similar to terminal's
set ignorecase													"when searching for text, default to case-insensitive
set smartcase														"let's be smart about it
set title																"set the title of the window
set scrolloff=3													"set the scroll offset to 3 lines, not 1
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp		"keep temp and swap files in one place
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set ruler																"show the cursor position in the bottom of the pane
set number															"show line numbers
set backspace=indent,eol,start					"smart backspacing
syntax on																"syntax hightlighting on
filetype on															"based on filetype
filetype plugin on											"something...
filetype indent on											"indent based on filetype
set incsearch														"search dynamically, as you type
set background=dark											"set the background dark
colorscheme molokai	  								  "set the colours 
set guifont=Inconsolata:h15							"set the font:font size
set smarttab														"set smart tabs
set shiftwidth=2												"when selecting text, understand indenting
set softtabstop=2												"set soft tabs to 2
set tabstop=2														"set tabs at 2 (so they line up)
set expandtab														"use spaces instead of tabs
set nowrap                              "turn off word wrap
set visualbell                          " use visual bell instead of an audible beep
set guioptions-=T                       "turn off the GUI
:command Text set spell | set linebreak | set wrap "quick settings for text editing
"ignore certain files with Command-T, etc.:
set wildignore=public/images/**,public/javascripts/ckeditor/**,tmp/**,public/system/**,public/javascripts/fckeditor/**
let g:ctrlp_max_files=50000
let g:ctrlp_custom_ignore='.git$|\tmp$'
let g:ctrlp_user_command = {
      \ 'types': {
      \   1: ['.git/', 'cd %s && git ls-files']
      \   },
      \ 'fallback': 'find %s -type f'
      \ }
if has('gui_running')
  set columns=130 lines=55              "set the window size
endif
set shortmess+=A                        "do not complain about swap files

" syntastic linters
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_ruby_rubocop_exec = '~/scripts/rubocop'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_wq = 0

if has("balloon_eval")
  set noballooneval       " disable vim-ruby's annoying tooltip
endif
