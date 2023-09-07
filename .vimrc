set nocompatible " Enable modern Vim features not compatible with Vi spec. Required

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
if isdirectory(expand('$HOME/.vim/bundle/Vundle.vim'))
  call vundle#begin()
    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'vim-airline/vim-airline'
    Plugin 'flazz/vim-colorschemes'
    Plugin 'vim-syntastic/syntastic'
    Plugin 'tpope/vim-commentary' " `gcc` in normal mode to comment out a line. `gc` in visual mode to comment out selections.
    Plugin 'junegunn/fzf'
    Plugin 'junegunn/fzf.vim'
  call vundle#end()
else
  echomsg 'Vundle is not installed.'
endif
filetype plugin indent on

syntax on
set background=dark
set number
set relativenumber
set hlsearch
set nosmartindent
set clipboard=unnamed           " Change this to unnamedplus for Linux.
set cursorline
set scrolloff=3
set splitbelow splitright
set laststatus=2
set cursorline                  " Highlight the current line.
set hidden                      " Allow buffer backgrounding.
set scrolloff=3                 " Add top/bottom scroll margins.
set ttyfast lazyredraw          " Make drawing faster.
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
set wildmode=list,longest,full  " Act like shell completion. Nice menu when typing `:find *.java`
set list listchars=tab:»\ ,trail:°    " Use » to mark Tabs and ° to mark trailing whitespace.
let mapleader=","               " Default is \, I prefer ,.

nnoremap <silent> <C-L> :noh<CR> " Use CTRL-L to clear the hightlighting of 'hlsearch'.

"=============================="
"       Plugin settings        "
"=============================="

colorscheme molokai

"=syntastic="
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"=netrw="
let g:netrw_banner = 0          " Remove the banner.
let g:netrw_liststyle = 3       " Tree list style view.
let g:netrw_browse_split = 4    " 3 to open files in a new tab. 4 to open in previous window.
let g:netrw_altv = 1            " Open the file on the right.
let g:netrw_winsize = 25        " Width 25% of the page.

" Open netrw when opening Vim.
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

nnoremap <unique> <leader>t :Lexplore .<CR>
nnoremap <unique> <leader>T :Vexplore<CR>
nnoremap <unique> <leader>v+ :vertical resize +5<CR>
nnoremap <unique> <leader>v- :vertical resize -5<CR>
nnoremap <unique> <leader>+ :resize +5<CR>
nnoremap <unique> <leader>- :resize -5<CR>

"=fzf="
nnoremap <unique> <C-P> :Files<CR>
nnoremap <unique> <leader>b :Buffers<CR>

