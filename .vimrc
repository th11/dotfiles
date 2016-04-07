set nocompatible                " Use vim rather than vi settings

" Plugins
" =============
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-surround'    " surround text ex. cs' if on a word surrounds

call vundle#end()            " required
filetype plugin indent on    " required

" General configs
" =============
set nomodeline

" Syntax
syntax on
syntax enable
set t_Co=256

set encoding=utf-8              " standard encoding
set number                      " line numbers
set backspace=indent,eol,start  " Allow backspace in insert mode
set autoread                    " Reload files changed outside vim
set hidden                      " Buffers can exist in the background
set history=1000                " Store lots of :cmdline history
"Dont dump distracting text to terminal during searches!
set shellpipe=2>/dev/null>
set textwidth=0 
set wrapmargin=0

" Send more characters for redraws
set ttyfast

set mouse=a          " Enable mouse use in all modes
set incsearch        " Find the next match as we type the search
set hlsearch         " Highlight searches by default
"set autoindent
"set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set nowrap           " Don't wrap lines
set laststatus=2     " always show status line
set splitright       " Opens vertical split right of current window
set splitbelow       " Opens horizontal split below current window

" Turn Off Swap Files
" ===================

set noswapfile
set nobackup
set nowritebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


"This unsets the 'last search pattern' register by hitting return
nnoremap <CR> :noh<CR><CR>

" Experimental
" ============
set smartcase


" Automatic formatting
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.go :%s/\s\+$//e
autocmd BufWritePre *.haml :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e
autocmd BufWritePre *.slim :%s/\s\+$//e


" === Plugin Settings ===
" CtrlP settings

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'


" NERDTree settings
map <C-n> :NERDTreeToggle<CR>

" Syntastic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
