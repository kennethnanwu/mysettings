" :find %:h/<TAB>
let mapleader=','
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Required
" let Vundle manage Vundle, required
  Plugin 'gmarik/vundle'
  "Plugin 'scrooloose/nerdcommenter'
  Plugin 'Valloric/MatchTagAlways'
  Plugin 'vim-scripts/netrw.vim'
  Plugin 'tpope/vim-sensible'
  Plugin 'SirVer/ultisnips'
  Plugin 'scrooloose/syntastic'
  Plugin 'vim-airline/vim-airline'
  "Plugin 'prabirshrestha/vim-lsp'
  "Plugin 'prabirshrestha/asyncomplete.vim'
  "Plugin 'prabirshrestha/asyncomplete-lsp.vim'
  Plugin 'flazz/vim-colorschemes'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'Valloric/YouCompleteMe'

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
" use » to mark Tabs and ° to mark trailing whitespace. This is a
" non-obtrusive way to mark these special characters.
set list listchars=tab:»\ ,trail:°
set laststatus=2

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

colorscheme molokai

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
"augroup ProjectDrawer
  "autocmd!
  "autocmd VimEnter * :Vexplore
"augroup END

let g:ctrlp_working_path_mode = 0

" let g:syntastic_java_checkers = ['glint']
nnoremap <unique> <leader>jd :YcmCompleter GoToDefinition<cr>
nnoremap <unique> <leader>jc :YcmCompleter GoToDeclaration<cr>
nnoremap <unique> <leader>jr :YcmCompleter GoToReferences<cr>
nnoremap <unique> <leader>ji :YcmCompleter GoToImplementation<cr>
nnoremap <unique> <leader>jm :YcmCompleter GoToSymbol<CR>
nnoremap <unique> <leader>jj :YcmCompleter GoTo<CR>
nnoremap <unique> <leader>jf :YcmCompleter FixIt<CR>

nnoremap <unique> ; :

nnoremap <unique> <leader>t :e .<CR>
nnoremap <unique> <leader>v+ :vertical resize +5<CR>
nnoremap <unique> <leader>v- :vertical resize -5<CR>
nnoremap <unique> <leader>+ :resize +5<CR>
nnoremap <unique> <leader>- :resize -5<CR>

let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_add_preview_to_completeopt = 0
set completeopt-=preview

filetype plugin indent on
