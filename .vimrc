" You can use `:set all` to show all option.
" If you have questions about some option, you can use `:help <option>`.

set nocompatible
syntax on       " Turn on syntax highlighting.
set wildmenu    " show complete menu in Command-line. 
set path+=**

" show line numbers: number(nu) relativenumber(rnu)
set nu rnu
" indent: autoindent(ai) smartindent(si) cindent(cin)
set si
" search: incsearch(is) hlsearch(hls) ignorecase(ic) smartcase(scs)
set is hls ic scs

" the fucking Tab:
" shiftwidth(sw)      The size of input when press << or >> 
" tabstop(ts)         The true size and show size of Tab
" softtabstop(sts)    The size of input when press Tab key
" smarttab(sta)
set sw=4 ts=4
set list listchars=tab:--> " show Tabs

" auto complete bracket
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap < <><ESC>i
inoremap { {<cr><tab><cr>}<ESC>i


" 'Q' in normal mode enters Ex mode. You almost never want this.
nmap Q <Nop>

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

