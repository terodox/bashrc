" Keep artifact files tidy
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" Navigation
nnoremap <C-Tab> : bnext<CR>
nnoremap <S-C-Tab> : bprevious<CR>

" Visual: Line numbers
set number

" Visual: Statusline
set laststatus=2        " always show statusline

set statusline=%t       " base of the filename
set statusline+=%m      " modified flag
set statusline+=%h      " help file flag
set statusline+=%r      " read only flag
set statusline+=%y      " filetype
set statusline+=%=      " left/right separator
set statusline+=%c:     " cursor column
set statusline+=%l/%L   " cursor line/total lines

" Editing: Second chance for bad commands 
set confirm

" Editing: Automatically indent, and tabs are 4 spaces
set autoindent
set shiftwidth=4
set softtabstop=4
set expandtab
