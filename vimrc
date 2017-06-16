" Hassan Aly's vimrc
" use vim default settings
" This has to be first because it changes how some other options works. 
    set nocompatible

"this is for vundle
    filetype off

" start Vundle 
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

" Map Leader 
    let mapleader = ","

" Plugins List all Plugin
Plugin 'VundleVim/Vundle.vim'   " Let Vundle manage it self 

"Plugin 'tomtom/tlib_vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-fugitive'
Plugin 'YankRing.vim'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/gist-vim'
Plugin 'elzr/vim-json'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-surround'
Plugin 'delimitMate.vim'
Plugin 'taglist.vim'
Plugin 'netrw.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-scripts/matchit.zip'
Plugin 'danro/rename.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-commentary'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'pangloss/vim-javascript'
Plugin 'ChrisYip/Better-CSS-Syntax-for-Vim'
Plugin 'godlygeek/tabular'
Plugin 'einars/vim-phpfold'
Plugin 'mileszs/ack.vim'
Plugin 'majutsushi/tagbar'
Plugin 'gregsexton/gitv'
Plugin 'sjl/gundo.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'dracula/vim'
Plugin 'mxw/vim-jsx'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdcommenter'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'othree/yajs.vim'
Plugin 'gkz/vim-ls'
Plugin 'fatih/vim-go'
" Plugin 'smarty.vim'
" Plugin 'beyondwords/vim-twig'
" Plugin 'evidens/vim-twig'
" Plugin 'itspriddle/vim-jquery'
" Plugin 'tpope/vim-markdown'
" Plugin 'plasticboy/vim-markdown'
" Plugin 'tpope/vim-haml'
" Plugin 'vim-ruby/vim-ruby'
" Plugin 'slim-template/vim-slim'
" Plugin 'tpope/vim-endwise'
" Plugin 'mustache/vim-mustache-handlebars'
" Plugin 'Rykka/riv.vim'
" Plugin 'MarcWeber/vim-addon-local-vimrc'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on                       " Syntax highlight

" General 

    " Base16 config
    "if filereadable(expand("~/.vimrc_background"))
    "  let base16colorspace=256
    "  source ~/.vimrc_background
    "endif
    colorscheme dracula

    " Visual and Motion 
        set ruler           " Display current cursor position on lower right corner
        set showmatch       " set show matching parenthesis
        set number          " Show lines numbers
        set cursorline      " highlight cursorline
        set showmode        " always show what mode we're currently editing in
        set scrolloff=8     " keep 4 lines off the edges of the screen when scrolling
        set mousehide       " Hide Mouse when typing
        set linespace=2     " Prefer a slightly higher line height

        set novisualbell    " don't beep
        set noerrorbells    " don't beep

        set showcmd         " Show command in bottom right of the screen
        set title           " set terminal title

        set backspace=indent,eol,start      " Allow backspacing in insert mode
        set virtualedit=all " allow the cursor to go in to 'invalid' places

    set timeoutlen=500  " Lower timeout leader key + command
    set hidden          " Switch between buffers without saving
    set autoread        " autoread external modification

    " Add the unnamed register to the clipboard
    set clipboard+=unnamed

    "Split windows below the current window.
    set splitbelow         

    "Resize vsplit
    nmap <C-q> :vertical resize +5<cr>
    nmap 25 :vertical resize 40<cr>
    nmap 50 <c-w>=
    nmap 75 :vertical resize 120<cr>

    " Quickly go forward or backward to buffer
    nmap :bp :BufSurfBack<cr>
    nmap :bn :BufSurfForward<cr>

    " all about Tab 
    set tabstop=4
    set shiftwidth=4
    set softtabstop=4
    set expandtab
    set autoindent      " Autoindenting on
    set copyindent      " copy the previous indentation on auto indenting
    set smarttab        " Insert tabs on the start of a line accroding to 
                        "   shiftwidth, not tabstop

    " Search and menu 
    set wildmenu                            " More useful command-line completion
    set wildmode=list:longest,full          " Auto-completion menu, tab selection
    " set wildignorecase                      " Make it easier to complete buffers, 
                                              " open files, etc..
    set complete=.,w,b,t                    " Same as default
    " set completeopt=longest,menu,preview
    
    set wrapscan        " set the search scan to wrap lines
    set incsearch       " show search matches as you type                 
    set hlsearch        " Highlight searching                             
    set ignorecase      " ignore case when searching                      
    set smartcase       " Ignore case if search pattern is all lowercase, 
                        " case-sensitive otherwise                      
    set showfulltag     " When completing by tag, show the whole tag,     
                        " not just the function name                    
    
    " No backup and swap 
    set nobackup
    set noswapfile

    " Nice Statusbar 
    set laststatus=2                        " Always show the status line
    set statusline=                         
    set statusline+=%<\                     " truncation point
    set statusline+=%n\                     " buffer number
    set statusline+=%y\                     " Filetype
    set statusline+=%f\                     " filename
    set statusline+=%h%m%r%w                " flags
    set statusline+=[%{&ff}]                " file format
    set statusline+=%{fugitive#statusline()}  " for vim-fugitive statusline
    set statusline+=%=                      " align right
    set statusline+=%#error#              " start sytastic
    set statusline+=%{SyntasticStatuslineFlag()}  " sytastic show error
    set statusline+=%*                      " end syntastic
    "set statusline+=%{strftime(\"%c\",getftime(expand(\"%:p\")))}  "modified time
    set statusline+=%4l                     " line number
    set statusline+=/%L                     " total lines
    set statusline+=%3c%V                   " column number

    " History 
    set history=1000                         " keep some stuff in the history
    set undolevels=1000                     " many, many, undo
    if v:version >= 730
      set undofile                          " keep a presistent backup file
      set undodir=~/.vim/.undo,~/tmp,/tmp
    endif

    " Better line wrapping 
    set nowrap
    set textwidth=80
    set formatoptions=qrnl
                                            
    " Fold settings 
    " source http://smartic.us/2009/04/06/code-folding-in-vim/
    " set foldmethod=marker                 " fold based on indent
    " set foldnestmax=3                     " deepest fold is 3 levels
    " set nofoldenable                      " dont fold by default
    " set foldcolumn=2                      " add fold column

" Mapping 
    " Save vim with sudo
    cmap w!! w !sudo tee  > /dev/null %

    " set text wrapping toggles
    nmap <silent> ,ww :set invwrap<CR>:set wrap?<CR>

    " Wipe out all buffers
    nmap <silent> ,wba :l,9000bwipeout<cr>

    " Yank and Paste key to/from X clipboard
    map <F9> "+gP 
    vmap <C-F9> "+y

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

    " quicly close the current window
    nnoremap <leader>q :q<CR>
    nnoremap <leader>wq :wq<CR>

    " write all buffer
    nnoremap <leader>wa :wall<CR>

    " Easier window navigation
    nmap <C-h> <C-w>h 
    nmap <C-j> <C-w>j
    nmap <C-k> <C-w>k
    nmap <C-l> <C-w>l

    " Make Horizontal scrolling easier
    nmap <silent> <C-o> 10zl
    nmap <silent> <C-i> 10zh

    " change to directory of the opened file
    cmap cd. lcd %:p:h
    cmap cwd lcd %:p:h

    "explorer mappings
    nnoremap <f2> :NERDTreeToggle<cr>
    nnoremap <f3> :BuffergatorToggle<cr>
    nnoremap <f4> :TagbarToggle<cr>
    nnoremap <f5> :GundoToggle<cr>

    " easier moving blocks of code
    vnoremap < <gv
    vnoremap > >gv

" Custom Functions 

" SetWrap For Markdown 
    function! SetWrap()
      setlocal wrap linebreak nolist
      set virtualedit=
      setlocal display+=lastline
      noremap  <buffer> <silent> k gk
      noremap  <buffer> <silent> j gj
      noremap  <buffer> <silent> <Home> g<Home>
      noremap  <buffer> <silent> <End>  g<End>
      inoremap <buffer> <silent> <Up>   <C-o>gk
      inoremap <buffer> <silent> <Down> <C-o>gj
      inoremap <buffer> <silent> <Home> <C-o>g<Home>
      inoremap <buffer> <silent> <End>  <C-o>g<End>
    endfunction

    " au BufNewFile,BufRead *.markdown,*.md,*.mdown,*.mkd,*.mkdn call SetWrap()

""" Plugin Setting
        
" vim-markdown {
" let g:vim_markdown_folding_disabled=1
" let g:vim_markdown_frontmatter=1
"}

" EditorConfig
    let g:EditorConfig_exclude_patterns = ['fugitive://.*']  
" Utilsnips 
    let g:UltiSnipsExpandTrigger="<C-tab>"
    let g:UltiSnipsJumpForwardTrigger="<C-j>"
    let g:UltiSnipsJumpBackwardTrigger="<C-k>"
" Fugitive 
    cmap gcim Gcommit -m 
    cmap gst Gstatus
    cmap gwr Gwrite

" Yankring 
    nnoremap <silent> <f1> :YRShow<CR>

" Ctrlp 
    let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
    let g:ctrlp_extensions = ['buffertag', 'mixed']
    map <C-r> :CtrlPBufTag<cr>

" Syntastic 
    let g:syntastic_enable_signs=1
    let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
    let g:syntastic_php_checkers=['php']
    let g:syntastic_javascript_checkers = ['eslint']

" EasyMotion 
    let g:EasyMotion_leader_key = '<leader>m'

" Buffergator 
    let g:buffergator_viewport_split_policy = "B"
    let g:buffergator_split_size = 10
    let g:buffergator_autoexpand_on_split = 0

" NERDTree 
    let g:NERDTreeShowBookmarks=1 " Show the Bookmarks        

" Gist Vim 
    let g:gist_detect_filetype=1

" Vim json 
    let g:vim_json_syntax_conceal=0


" JSX support 
    " let g:jsx_ext_required = 0

" Solarized Color 
    " " Set 256 color
    "
    " " setting for colorscheme
    " let g:solarized_termcolors=16
    " colorscheme solarized
    "
    " " Toggle switch background light or dark
    " map <F6> :let &background = ( &background == 'dark'? 'light' : 'dark' )<CR> 

" NERDCommenter 
    map <leader>/ <Plug>NERDCommenterToggle
    imap <C-/> <Esc><Plug>NERDCommenterToggle<CR>i

" Session Manager 
    " load Session Manager Dependencies"
    set sessionoptions-=options
    set sessionoptions+=resize
    let g:session_directory="~/.vimsession"
    let g:session_autoload="no"
    let g:session_autosave="no"
    nnoremap <leader>ef :OpenSession<CR>

" Powerline 
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup

" Private setting 
if filereadable($HOME.'/.vim/local.setting')
    source ~/.vim/local.setting
endif
