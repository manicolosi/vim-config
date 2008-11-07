" Set up the GUI.
set guioptions-=T
set guioptions-=b
set guioptions-=L
colorscheme native

set guifont="DejaVu Sans Mono 10"

" Printing
set printoptions=paper:letter,number:y,wrap:y
set printfont=mono:h8

" Use spaces instead of tabs for indention and set up indenting.
set expandtab
set shiftwidth=4
set tabstop=4

set textwidth=72

" Hilight searches and do incremental searches. Also ignore case for searches.
set hlsearch
set incsearch
set ignorecase

" Show extra status line.
set laststatus=2

" Allow switching buffers without saving the current one.
set hidden

" Tab and Shift-Tab to switch buffers
nmap <TAB>   :bn<CR>
nmap <S-TAB> :bp<CR>

" Show command prefixes.
set showcmd

" Menu of completions
set wildmenu

" Show line numbers
" set number

" Hilight the current line.
set cursorline

" Turn on syntax hilighting.
syntax enable

" Turn on auto indenting.
set autoindent
set smartindent
set smarttab

" Do these work?
set encoding=utf8
set fileencoding=utf8

" Keep 5 lines of context when scrolling.
" set scrolloff=5

" Keep vim's current directory the same as the current buffer's.
autocmd BufEnter * cd %:p:h

" From VimTip 153: Making Parenthesis and Brackets Handling Easier.
" http://vim.sourceforge.net/tip_view.php?tip_id=153
"inoremap ( ()<ESC>i

" Make a new line below/above the cursor and removes inserted characters there
" (such as comment characters).
nnoremap go o<ESC>S
nnoremap gO O<ESC>S

nnoremap gb :buffers<CR>:e #

" Auto-detect editing git commit files:
autocmd BufNewFile,BufRead COMMIT_EDITMSG set filetype=gitcommit

autocmd BufNewFile,BufRead *.boo set filetype=boo

" CSharp Stuff I Want:
" Select some code and move it to a new method.
" Select a private field and create a property for it.
" Create a new class in a new file using a template.
"
" This kind of stuff should probably be in a plugin.


" Other Things To Consider:
" VimTip 348: Quickly insert a single word.
" VimTip ?  : Quickly insert a single character.

map <C-T> <Esc>:tabnew<CR>
"map <C-W> <Esc>:tabclose<CR>

let g:proj_flags="imstvcg"

