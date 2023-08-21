filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Required
" let Vundle manage Vundle, required
  Plugin 'gmarik/vundle'
  Plugin 'vim-airline/vim-airline'
  Plugin 'flazz/vim-colorschemes'
call vundle#end()

" Enable modern Vim features not compatible with Vi spec.
set nocompatible
syntax on
set number
set relativenumber
set hlsearch
set incsearch
set nosmartindent
set clipboard=unnamedplus
set smartcase
set cursorline
set scrolloff=3
set splitbelow splitright
set laststatus=2
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set cursorline                  " Highlight the current line.
set hidden                      " Allow buffer backgrounding.
set scrolloff=3                 " Add top/bottom scroll margins.
set ttyfast lazyredraw          " Make drawing faster.
set shell=sh                    " I use fish-shell. Vim shouldn't.

let mapleader=","               " Default is \, I prefer ,.
set backup                      " Be safe.
set history=1000                " Remember a lot.
set incsearch                   " Search incrementally as I type.
set relativenumber number       " Use relative line numbers.
set showcmd                     " Show the last command.
set showmatch                   " When a bracket is typed show its match.
set smartcase                   " Be smart about when case sensitivity matters.
set smarttab                    " Only respect shiftwidth for code indents.
set splitbelow splitright       " Windows are created in the direction I read.
set undofile                    " Saves undo history across sessions.
set viewoptions=cursor,folds    " Save cursor position and folds.
set wildmenu                    " Enhanced completion.
set wildmode=list:longest       " Act like shell completion.

" use » to mark Tabs and ° to mark trailing whitespace. This is a
" non-obtrusive way to mark these special characters.
set list listchars=tab:»\ ,trail:°

colorscheme molokai

" remove the banner.
let g:netrw_banner = 0
" tree list style view.
let g:netrw_liststyle = 3
" 3 to open files in a new tab. 4 to open in previous window.
let g:netrw_browse_split = 4
" open the file on the right.
let g:netrw_altv = 1
" width 25% of the page.
let g:netrw_winsize = 25
" Open netrw when opening Vim
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

nnoremap <unique> <leader>t :e .<CR>
nnoremap <unique> <leader>v+ :vertical resize +5<CR>
nnoremap <unique> <leader>v- :vertical resize -5<CR>
nnoremap <unique> <leader>+ :resize +5<CR>
nnoremap <unique> <leader>- :resize -5<CR>

filetype plugin indent on
