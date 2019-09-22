">>>>>>>>>>>>>>>>>> Plugin Manager >>>>>>>>>>>>>>>"

set nocompatible              " be iMproved, required

filetype off                  " required

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'scrooloose/nerdtree'

Plugin 'yggdroot/indentline'

Plugin 'sheerun/vim-polyglot'

Plugin 'davidhalter/jedi-vim'

Plugin 'nvie/vim-flake8'

Plugin 'WolfgangMehner/c-support'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Plugins for colorschemes "

Plugin 'morhetz/gruvbox'

Plugin 'dense-analysis/ale'

Plugin 'danilo-augusto/vim-afterglow'

Plugin 'ChrisKempson/Tomorrow-Theme'

Plugin 'joshdick/onedark.vim'

Plugin 'sickill/vim-monokai'


" All of your Plugins must be added before the following line

call vundle#end()            " required

filetype plugin indent on    " required

"<<<<<<<<<<<<<<<<<< Plugin Manager <<<<<<<<<<<<<<<<<"

">>>>>>>>>>>>> color settings for vim >>>>>>>>>>>>>>" 

" setting up colorscheme
colorscheme afterglow

" setting up background color
set background=dark 

highlight SpecialKey cterm=bold ctermfg=0

" table line colors
highlight TabLineFill ctermfg=DarkGray
highlight TabLine ctermfg=4 ctermbg=DarkGray cterm=bold
highlight TabLineSel ctermfg=7 cterm=none ctermbg=DarkGray

" number column colors
highlight LineNr cterm=none ctermbg=none ctermfg=4

" fold colors
highlight Folded cterm=none ctermbg=none ctermfg=4
highlight FoldColumn cterm=none ctermbg=none ctermfg=4

"visual mode colors
highlight Visual ctermbg=7 ctermfg=4

" diff colors
highlight DiffAdd cterm=none ctermbg=4
highlight DiffDelete cterm=none ctermbg=4
highlight DiffChange cterm=none ctermbg=4
highlight DiffText cterm=none ctermbg=4

" keep cursor column last so it overrides all others 
highlight CursorColumn cterm=none ctermbg=Black
highlight CursorLine cterm=none ctermbg=Black

highlight Search cterm=none ctermbg=7 ctermfg=4

set t_Co=256
"<<<<<<<<<<<<< color settings for vim <<<<<<<<<<<<<<"

">>>>>>>>>>>>>> Spaces & Tabs >>>>>>>>>>>>>"

syntax enable " enable syntax processing 

set tabstop=4 " number of visual spaces per TAB

set softtabstop=4 " number of spaces in tab when editing

set expandtab " tabs are spaces

"<<<<<<<<<<<<<< Spaces & Tabs <<<<<<<<<<<<<<"

">>>>>>>>>>>>>> UI Config >>>>>>>>>>>>>>>"

set number " shows line numbers in left starting column

set relativenumber " shows relative line numbers with respect to other lines

set showcmd " show command in bottom bar

set cursorline "highlights current line

filetype indent on " load filetype-specific indent files

set wildmenu " visual autocomplete for command menu

set lazyredraw " redraw only when we need to 

set showmatch " highlight matching [{()}]

set showmode " shows current mode in status

"<<<<<<<<<<<<<< UI Config <<<<<<<<<<<<<<<"

">>>>>>>>>>>>>> Searching >>>>>>>>>>>>>>>"

set incsearch " search as characters are entered 

set hlsearch " highlight matches

nnoremap <leader><space> :nohlsearch<CR> " turn off search highlight

"<<<<<<<<<<<<<< Searching >>>>>>>>>>>>>>>"

">>>>>>>>>>>>>> Folding >>>>>>>>>>>>>>>"

set foldenable " enable folding 

set foldlevelstart=10 " open most folds by default

set foldnestmax=10 "10 nested fold max 

nnoremap <space> za " space open/closes folds 

set foldmethod=indent " fold based on indent level

"<<<<<<<<<<<<<<< folding <<<<<<<<<<<<<<<"

">>>>>>>>>>>>> movements >>>>>>>>>>>>>>"

" move vertically by visual line

nnoremap j gj
nnoremap k gk

" move to beginning/end of line 
nnoremap B ^
nnoremap E $

" $/^ doesn't do anyting
nnoremap $ <nop>
nnoremap ^ <nop>

" highlight last inserted text
nnoremap gV `[v`]

"<<<<<<<<<<<< movements <<<<<<<<<<<<<<<"

">>>>>>>>>>>>>>>> Shell >>>>>>>>>>>>>>>"

set shell " setting up vim to accept shell commands

"<<<<<<<<<<<<<<<< Shell <<<<<<<<<<<<<<<"

">>>>>>>>>>> vim settings >>>>>>>>>>>>>"

set laststatus=2 " displays the vim status line everytime

"<<<<<<<<<<< vim settings <<<<<<<<<<<<<"
set noswapfile " restricting the swap file creation of .vimrc.swap  

"indentation option 
set shiftwidth=2
set autoindent
set cindent

" some settings for Plugins "

let g:C_UseTool_cmake = 'yes' "c-support Plugin cmake fun enable 

let g:C_UseTool_doxygen = 'yes' " c-support Plugin doxygen fun enable

set encoding=utf-8 "UTF-8 Support for vim encoding

let python_highlight_all=1 
