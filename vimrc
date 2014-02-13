" vim: set foldmarker={,} foldlevel=0 foldmethod=marker:
" My Vim Configuration
" Environment {
    " use vim default settings
    " This has to be first because it changes how some other options works. 
    set nocompatible

    "this is for vundle
    filetype off

    " start Vundle {
        set rtp+=~/.vim/bundle/vundle/
        call vundle#rc()
    " }
    
    " Map Leader {
        let mapleader = ","
    " }
" }

" Bundles {
" List all Bundle
    " Let Vundle manage it self {
        Bundle 'gmarik/vundle'
    " }

    " utilsnips {
        Bundle 'tomtom/tlib_vim'
        Bundle 'MarcWeber/ultisnips'
        " Bundle 'SirVer/ultisnips'
        Bundle 'honza/vim-snippets'

        " let g:ultisnipsexpandtrigger="<c-tab>"
        " let g:ultisnipsjumpforwardtrigger="<c-j>"
        " let g:ultisnipsjumpbackwardtrigger="<c-k>"

        let g:UltiSnips = {}
        let g:UltiSnips.UltiSnips_ft_filter = {
                \ 'default' : {'filetypes': ["FILETYPE","all"] },
                \ 'all'     : {'filetypes': ['all']},
                \ }
        let g:UltiSnips.snipmate_ft_filter = {
                \ 'default' : {'filetypes': ["FILETYPE", "_"] },
                \ }
        let g:UltiSnips.ExpandTrigger="<c-tab>"
        let g:UltiSnips.JumpForwardTrigger="<c-j>"
        let g:UltiSnips.JumpBackwardTrigger="<c-k>"
        " let g:UltiSnips.always_use_first_snippet = 1    
        let g:snips_author = "Hassan Aly"
    " }

    " Fugitive {
        Bundle 'tpope/vim-fugitive'
        cmap gcim Gcommit -m 
        cmap gst Gstatus
        cmap gwr Gwrite
    " }

    " Yankring {
        Bundle 'YankRing.vim'
        nnoremap <silent> <f1> :YRShow<CR>
    " }

    " Ctrlp {
        Bundle 'kien/ctrlp.vim'
        let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
    " }

    " Syntastic {
        Bundle 'scrooloose/syntastic'
        let g:syntastic_enable_signs=1
        let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
        let g:syntastic_php_checkers=['php']
    " }

    " superTab {
        " Bundle 'ervandew/supertab'
        "let g:SuperTabMappingForward = '<C-Space>' 
        "let g:SuperTabMappingBackward = '<S-C-Space>' 
        "let g:SuperTabDefaultCompletionType = 'context'
    " }

    " Powerline {
        " Bundle 'Lokaltog/vim-powerline'
        Bundle 'Lokaltog/powerline'
        " let g:Powerline_symbols='fancy'
        " let g:Powerline_colorscheme='solarized256'
        set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
    " }

    " EasyMotion {
        Bundle 'Lokaltog/vim-easymotion'
        let g:EasyMotion_leader_key = '<leader>m'
    " }

    " Buffergator {
        Bundle 'jeetsukumaran/vim-buffergator'
        let g:buffergator_viewport_split_policy = "B"
        let g:buffergator_split_size = 10
        let g:buffergator_autoexpand_on_split = 0
    " }

    " emmet {
        Bundle 'mattn/emmet-vim'
    " }

    " NERDTree {
        Bundle 'scrooloose/nerdtree'
        "shortcut for nerdtreetoggle
        "nmap <F2> :NERDTreeToggle <CR>
        "Show hidden files in nerdtree
        "let NERDTreeShowHidden=1
        " Show the Bookmarks        
        let g:NERDTreeShowBookmarks=1 

        "autoopen Nerdtree focus cursor in new document
        "autocmd VimEnter * NERDTree
        "autocmd VimEnter * wincmd p
    " }

    " Gist Vim {
        Bundle 'mattn/gist-vim'
        let g:gist_detect_filetype=1
    " }

    " PIV {
        "Bundle 'spf13/PIV'
        " let g:DisableAutoPHPFolding = 1 "{"}
    " }

    Bundle 'Valloric/YouCompleteMe'
    " command
    Bundle 'tpope/vim-git'
    Bundle 'tpope/vim-surround'
    Bundle 'delimitMate.vim'
    Bundle 'taglist.vim'
    Bundle 'netrw.vim'
    Bundle 'tpope/vim-unimpaired'
    Bundle 'tomtom/tcomment_vim'
    Bundle 'matchit.zip'
    Bundle 'danro/rename.vim'
    Bundle 'terryma/vim-multiple-cursors'
    " Bundle 'bufexplorer.zip'

    " language tool
    Bundle 'nathanaelkane/vim-indent-guides'
    Bundle 'smarty.vim'
    " Bundle 'beyondwords/vim-twig'
    Bundle 'pangloss/vim-javascript'
    Bundle 'itspriddle/vim-jquery'
    Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'
    " Bundle 'tpope/vim-markdown'
    Bundle 'plasticboy/vim-markdown'
    Bundle 'tpope/vim-haml'
    Bundle 'einars/vim-phpfold'
    Bundle 'vim-scripts/tracwiki'

    Bundle 'mileszs/ack.vim'
    Bundle 'majutsushi/tagbar'
    Bundle 'godlygeek/tabular'
    Bundle 'gregsexton/gitv'
    Bundle 'sjl/gundo.vim'
" }

" General {
    
    filetype plugin indent on       " filetype detection on Required!
    syntax on                       " Syntax highlight

    " Visual and Motion {
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
    " }

    set timeoutlen=500  " Lower timeout leader key + command
    set hidden          " Switch between buffers without saving
    set autoread        " autoread external modification

    " Add the unnamed register to the clipboard
    set clipboard+=unnamed

   "Split windows below the current window.
    set splitbelow         

    " all about Tab {
        set tabstop=4
        set shiftwidth=4
        set softtabstop=4
        set expandtab
        set autoindent      " Autoindenting on
        set copyindent      " copy the previous indentation on auto indenting
        set smarttab        " Insert tabs on the start of a line accroding to 
                            "   shiftwidth, not tabstop
    " }

    " Search and menu {
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
    " }
    
    " No backup and swap {
        set nobackup
        set noswapfile
    " }

    " Nice Statusbar {
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
    " }

    " History {
        set history=1000                         " keep some stuff in the history
        set undolevels=1000                     " many, many, undo
        if v:version >= 730
          set undofile                          " keep a presistent backup file
          set undodir=~/.vim/.undo,~/tmp,/tmp
        endif
    " }

    " Better line wrapping {
        set nowrap
        set textwidth=80
        set formatoptions=qrnl
    " }
                                            
    " fold settings {
        " source http://smartic.us/2009/04/06/code-folding-in-vim/
        " set foldmethod=marker                 " fold based on indent
        " set foldnestmax=3                     " deepest fold is 3 levels
        " set nofoldenable                      " dont fold by default
        " set foldcolumn=2                      " add fold column
    " }

" }

" Mapping {
    " Save vim with sudo
    cmap w!! w !sudo tee  > /dev/null %

    " set text wrapping toggles
    nmap <silent> ,ww :set invwrap<CR>:set wrap?<CR>

    " Wipe out all buffers
    nmap <silent> ,wba :l,9000bwipeout<cr>

    " Toggle paste mode
    " nmap <silent> ,p :set invpaste<CR>:set paste?<CR>
    " imap <F5> <C-O><F5>
    " set pastetoggle=<F5>

    " Yank and Paste key to/from X clipboard
    map <F9> "+gP 
    vnoremap <C-F9> "+y

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

    " easier moving blocks of code
    vnoremap < <gv
    vnoremap > >gv
" }

" Custom Functions {

" SetWrap For Markdown {
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

    au BufNewFile,BufRead *.markdown,*.md,*.mdown,*.mkd,*.mkdn call SetWrap()
"}

    au BufNewFile,BufRead *.lex setlocal filetype=html

"}

" Solarized Color {
    Bundle 'altercation/vim-colors-solarized'
    " Set 256 color
    set t_Co=256

    " setting for colorscheme
    set background=dark
    let g:solarized_termcolors=16
    colorscheme solarized

    " Toggle switch background light or dark
    map <F6> :let &background = ( &background == "dark"? "light" : "dark" )<CR>
" }

" Switch between Relative and Absolute line number {
    "function! g:ToggleNuMode()
        "if(&rnu == 1)
            "set nu
        "else
            "set rnu
        "endif
    "endfunc
    "nnoremap ,c :call g:ToggleNuMode()<cr>
" }

" NERDCommenter {
    Bundle 'scrooloose/nerdcommenter'
    map <leader>/ <Plug>NERDCommenterToggle
    imap <C-/> <Esc><Plug>NERDCommenterToggle<CR>i
" }

" Session Manager {
    " load Session Manager Dependencies"
    Bundle 'xolox/vim-misc'
    Bundle 'xolox/vim-session'
    set sessionoptions-=options
    set sessionoptions+=resize
    let g:session_directory="~/.vimsession"
    let g:session_autoload="no"
    let g:session_autosave="no"
    nnoremap <leader>ef :OpenSession<CR>
" }

" Private source {
    source ~/.vim/local.setting
" }
