"this is for pathogen
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" filetype detection on
filetype plugin indent on

" use vim default settings
" This has to be first because it changes how some other options works. 
set nocompatible

" Syntax highlight
syntax on

" Display current cursor posision on lover right corner.
set ruler

" Change map leader than \
let mapleader = ","

" Lower timeout leader key + command
set timeoutlen=500

" Switch between buffers without saving
set hidden

" all about Tab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set autoindent      " Autoindenting on
set copyindent      " copy the previous indentation on auto indenting
set showcmd         " Show command in bottom right of the screen
set number          " Show lines numbers
set showmode        " always show what mode we're currently editing in
set smarttab        " Insert tabs on the start of a line accroding to 
                    "   shiftwidth, not tabstop
set scrolloff=8     " keep 4 lines off the edges of the screen when scrolling
set virtualedit=all " allow the cursor to go in to 'invalid' places
set wrapscan        " set the search scan to wrap lines
set title           " set terminal title
set novisualbell    " don't beep
set noerrorbells    " don't beep
set showmatch       " set show matching parenthesis
set incsearch       " show search matches as you type                 
set hlsearch        " Highlight searching                             
set ignorecase      " ignore case when searching                      
set smartcase       " ignore case if search pattern is all lowercase, 
                    "   case-sensitive otherwise                      
set showfulltag     " when completing by tag, show the whole tag,     
                    "   not just the function name                    

" backup is oldskool
set nobackup
set noswapfile

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Nice Statusbar
set laststatus=2                        " Always show the status line
set statusline=                         
set statusline+=%<\                     " truncation point
set statusline+=%n\                     " buffer number
set statusline+=%y\                     " Filetype
set statusline+=%f\                     " filename
set statusline+=%h%m%r%w                " flags
set statusline+=[type:%{&ff}]           " file format
set statusline+=%{fugitive#statusline()}	" for vim-fugitive statusline
set statusline+=%=                      " align right
set statusline+=%#error#	            " start sytastic
set statusline+=%{SyntasticStatuslineFlag()}	" sytastic show error
set statusline+=%*	                    " end syntastic
"set statusline+=%{strftime(\"%c\",getftime(expand(\"%:p\")))}	"modified time
set statusline+=%4l                     " line number
set statusline+=/%L                     " total lines
set statusline+=%3c%V                   " column number

" Make the 'cw' and like commands put an $ at the end instead of just deleting
" the text and replacing it
" set cpoptions=ces$

set history=100                         " keep some stuff in the history

" Prefer a slightly higher line height
set linespace=3

" Better line wrapping
set wrap
set textwidth=80
set formatoptions=qrnl

set clipboard+=unnamed                  " Add the unnamed register to the clipboard

" fold settings 
" source http://smartic.us/2009/04/06/code-folding-in-vim/
set foldmethod=indent 	                " fold based on indent
set foldnestmax=10	                    " deepest fold is 10 levels
set nofoldenable	                    " dont fold by default
set foldlevel=1

set mousehide                           " Hide Mouse when typing

set wildmenu                            " More useful command-line completion
set wildmode=longest,list:longest       " Auto-completion menu
set complete=.,w,b,t                    " Same as default
set completeopt=longest,menu,preview

" Save vim with sudo from inside
cmap w!! w !sudo tee  > /dev/null %

" Wipe out all buffers
nmap <silent> ,wa :l,9000bwipeout<cr>

" Toggle paste mode
nmap <silent> ,p :set invpaste<CR>:set paste?<CR>
imap <F5> <C-O><F5>
set pastetoggle=<F5>

" Turn off that stupid highlight search
nmap <silent> ,n :nohls<CR>

" Show all available VIM servers
nmap <silent> ,ss :echo serverlist()<CR>

" Jump to matching pair easily with tab
nnoremap <Tab> %
vnoremap <Tab> %

" Make shift-insert work line in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" edit the vimrc file
nmap <silent> ,ev :e $MYVIMRC<CR>
nmap <silent> ,sv :so $MYVIMRC<CR>

" change that annoying shift+; for all Vim Commands
nnoremap ; :

" Easier window navigation
nmap <C-h> <C-w>h 
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Make Horizontal scrolling easier
nmap <silent> <C-o> 10zl
nmap <silent> <C-i> 10zh

" change to directory of the opened file
nmap <silent> <leader>cd :cd %:p:h<CR>

"explorer mappings
nnoremap <f2> :NERDTreeToggle<cr>
nnoremap <f4> :TlistToggle<cr>
nnoremap <f3> :BufExplorer<cr>

" Quicly get out of insert mode without your finger 
" having move home row
"inoremap <C-space> <C-c>

" Set 256 color
set t_Co=256

" setting for colorscheme
set background=dark
let g:solarized_termcolors=16
colorscheme solarized

"----------------------------------
"--- switch between Relative and Absolute line number
"----------------------------------
function! g:ToggleNuMode()
    if(&rnu == 1)
        set nu
    else
        set rnu
    endif
endfunc
nnoremap ,m :call g:ToggleNuMode()<cr>
"----------------------------------
"--- NERDTree plugin settings
"----------------------------------
"shortcut for nerdtreetoggle
"nmap <F2> :NERDTreeToggle <CR>

"Show hidden files in nerdtree
"let NERDTreeShowHidden=1

" Show the Bookmarks        
let g:NERDTreeShowBookmarks=1 

"autoopen Nerdtree focus cursor in new document
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

"----------------------------------
"--- EasyMotion settings
"----------------------------------
let g:EasyMotion_leader_key = '<leader>m'

"----------------------------------
"--- command-T settings
"----------------------------------
let g:CommandTMaxHeight=10

"----------------------------------
"--- superTab settings
"----------------------------------
"let g:SuperTabMappingForward = '<C-Space>' 
"let g:SuperTabMappingBackward = '<S-C-Space>' 
let g:SuperTabDefaultCompletionType = "context"

"----------------------------------
"--- Syntastic settings
"----------------------------------
let g:syntastic_enable_signs=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

"----------------------------------
"--- Yankring settings
"----------------------------------
nnoremap <silent> <f1> :YRShow<CR>
