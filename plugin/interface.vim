" Encoding and file format

  " Encoding inside vim
  if !has('nvim')
    set encoding=utf-8
  endif

  " Default file encoding
  set fileencodings=utf-8,cp1251

  " File format
  set fileformat=unix

" Wildmenu

  " Enable wildmenu
  set wildmenu

  " Wildmenu completion mode
  set wildmode=list:longest,full

  " Ignore list for wildmenu

    " Version control
    set wildignore+=.hg,.git,.svn

    " OS X
    set wildignore+=*.DS_Store

    " Python byte code
    set wildignore+=*.pyc

    " Binary images
    set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg,*.psd


" Linebreak

  " Wrap long lines
  set wrap

  " Don't break words when wrapping
  set linebreak

  " Show ↪ at the beginning of wrapped lines
  if has("linebreak")
    let &sbr = nr2char(8618).' '
  endif

  set nolist

  " Number of column to be highlighted
  set colorcolumn=80

  " Maximum width of text that is being inserted
  " Longer lines will be broken after white space to get this width
  set textwidth=0
  set wrapmargin=0

  set formatoptions+=l

  highlight ColorColumn ctermbg=187


" Indent

  " Copy indent from current line when starting a new line
  set autoindent

  " Do smart indenting when starting a new line
  set smartindent

  " Number of spaces to use for each step of (auto)indent
  set shiftwidth=2

  " Use spaces instead of tab
  set expandtab

  " Number of spaces that a tab counts for
  set tabstop=2

  " Number of spaces that a tab counts for while performing editing operations
  set softtabstop=2


" Cursorline and cursorcolumn

  " Enable cursorline only for active window
  augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
  augroup END

" Visualbell

  " Disable any beeps and flashes
  set visualbell
  set t_vb=

" Line numbers

  set relativenumber

" Autoread

  " Auto read when a file is changed from the outside
  set autoread

" Lines to the cursor

  set so=7

" Status line

  " Always show statusline
  set laststatus=2

" Search paths

  " Relative to the directory of the current file
  " Current directory
  " Downwards in a directory tree
  set path=.,,**

" Tabs

  " Always show tabs
  set showtabline=2

" Search

  " Incremental search
  set incsearch

  " Highlight search
  set hlsearch

  " Ignore case in search
  set ignorecase

  " Smart search case
  set smartcase

  set gdefault

" Mapping

  " Map russian cyrillic keys
  set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>


" GUI

if has("gui_running")
  set guifont=Fira\ Mono:h14
  set lines=999 columns=999
endif
