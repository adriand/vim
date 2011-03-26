set hidden															"manage buffers better
let mapleader = ","		  								"set my leader key to ,
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
colorscheme mustang										  "set the colours 
set guifont=Inconsolata:h15							"set the font:font size
set smarttab														"set smart tabs
set shiftwidth=2												"when selecting text, understand indenting
set softtabstop=2												"set soft tabs to 2
set tabstop=2														"set tabs at 2 (so they line up)
set expandtab														"use spaces instead of tabs
set nowrap                              "turn off word wrap
call pathogen#runtime_append_all_bundles()  "pathogen: http://www.vim.org/scripts/script.php?script_id=2332
set nocompatible                        "we don't need vi compatibility - it's 2010
let g:netrw_list_hide= '\(^\|\s\s\)\zs\.\S\+'        "hide dot files in netrw
set vb t_vb=                            "turn off the annoying beeps when cmds don't work
:command Text set spell | set linebreak | set wrap "quick settings for text editing
set guioptions-=T                       "turn off the GUI
:command Cfl CommandTFlush              "short cut for Command-T Flush

"ignore certain files with Command-T, etc.:
set wildignore=public/images/**,public/javascripts/ckeditor/**,tmp/**,public/system/**,public/javascripts/fckeditor/**
