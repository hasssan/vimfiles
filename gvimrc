" Change colorscheme
" let g:solarized_termcolors=256
" colorscheme solarized
" color codeschool
set background=dark
set t_Co=256

colorscheme base16-twilight
highlight clear SignColumn
highlight VertSplit    ctermbg=236
highlight ColorColumn  ctermbg=237
highlight LineNr       ctermbg=236 ctermfg=240
highlight CursorLineNr ctermbg=236 ctermfg=240
highlight CursorLine   ctermbg=236
highlight StatusLineNC ctermbg=238 ctermfg=0
highlight StatusLine   ctermbg=240 ctermfg=12
highlight IncSearch    ctermbg=0   ctermfg=3
highlight Search       ctermbg=0   ctermfg=9
highlight Visual       ctermbg=3   ctermfg=0
highlight Pmenu        ctermbg=240 ctermfg=12
highlight PmenuSel     ctermbg=0   ctermfg=3
highlight SpellBad     ctermbg=0   ctermfg=1

" set font
set guifont=Inconsolata\ for\ Powerline\ Medium\ 14
set linespace=0
" remove visual bell that cause flickering on motion
set vb t_vb=

set guioptions-=T       " disable Toolbar       
set guioptions-=L       " disable left scrollbar when window splitting
set guioptions-=R       " disable right scrollbar when window splitting
set guioptions+=l        " enable left scrollbar
set guioptions+=b       " horizontal scrollbar
set guioptions+=a       " auto select
set guioptions+=e       " add tab pages
set guioptions-=m       " menu bar is present
set guioptions-=g       " menu items that are not active grey
set guioptions+=i       " use a Vim icon
