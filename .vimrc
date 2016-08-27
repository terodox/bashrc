" Keep artifact files tidy
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" Navigation
nnoremap <C-Tab> : bnext<CR>
nnoremap <S-C-Tab> : bprevious<CR>

" Visual: Theme
colorscheme desert "murphy darkblue desert

" Visual: Line numbers
set number
set cursorline

" Visual: Statusline
set laststatus=2        " always show statusline

set statusline=%n\ 
set statusline+=%F       " base of the filename
set statusline+=%m      " modified flag
set statusline+=%h      " help file flag
set statusline+=%r      " read only flag
set statusline+=%y      " filetype
set statusline+=%=      " left/right separator
set statusline+=%l:%c   " cursor line:column

" Editing: Save me from myself
set autowrite
set hidden
set confirm
set undofile

" Editing: Automatically indent, and tabs are 4 spaces
set autoindent
set shiftwidth=4
set softtabstop=4
set expandtab

" Editing: Omnicomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete " All omnicomplete, all the time
inoremap <C-space> <C-x><C-o>

" File: Ignore certain paths
set wildignore+=*/.git/*,*/node_modules/*

" Plugins: Pathogen
execute pathogen#infect()

" Plugins: CtrlP
let g:ctrlp_by_filename = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_lazy_update = 1
let g:ctrlp_max_files = 0
let g:ctrlp_show_hidden = 1
let g:ctrlp_working_path_mode = 'a'

" Plugins: NERDTree
map <C-n> :NERDTreeToggle <CR>
let g:NERDTreeShowHidden = 1
let g:NERDTreeChDirMode=2
runtime ~/.vim/bundle/nerdtree-git-plugin/nerdtree_plugin/git_status.vim

" Plugins: JsDoc
let g:jsdoc_allow_input_prompt=1
let g:jsdoc_input_description=1 
let g:jsdoc_param_description_separator=' - '
nmap <silent> <C-l> $?function<cr>:noh<cr><Plug>(jsdoc)
