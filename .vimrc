"-- General --
set ruler                "Show the line and column number of the cursor position
set textwidth=79

"-- Programming --
set autoindent                "Copy indent from current line when starting a new line

"-- Spaces/Tabs --
set expandtab                "Use spaces instead of tabs
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set autoindent

"-- Searching --
set hlsearch                "Highlight search results
set ignorecase                "When doing a search, ignore the case of letters
set smartcase                "Override the ignorecase option if the search pattern contains upper case letters

"Clear the search highlight by pressing ENTER when in Normal mode (Typing commands)
:nnoremap <CR> :nohlsearch<CR>/<BS><CR>

"-- Tabbed Editing --
"Open a new (empty) tab by pressing CTRL-T. Prompts for name of file to edit
map <C-T> :tabnew<CR>:edit 
"Open a file in a new tab by pressing CTRL-O. Prompts for name of file to edit
map <C-O> :tabfind 
"Switch between tabs by pressing Shift-Tab
map <S-Tab> gt

"-- Tweaks --
"Add tweak for better backspace support
set backspace=indent,eol,start

syn on

if has('gui_running')
    colo jellybeans
    set lines=40
    set co=120
    set number
    set background=dark
    set guifont=Liberation\ Mono\ 10
else
    set number
    set t_Co=256
    set term=screen-256color
    colo jellybeans
    "set background=dark
    "hi LineNr ctermbg=233 ctermfg=145
    "hi Normal ctermbg=black
endif
 
set cursorline
hi CursorLine term=bold cterm=none ctermbg=black gui=bold guibg=#000000
set cursorcolumn
hi CursorColumn term=bold cterm=none ctermbg=black guibg=#000000
set guifont=Liberation\ Mono
 
set wrapmargin=2
set nowrap 
set spell
set spelllang=en_ca

"Python"
filetype plugin on
filetype indent on   
