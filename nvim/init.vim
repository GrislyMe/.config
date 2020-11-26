"Set Vim-Plug"
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible

call plug#begin('~/.local/share/nvim/plugins')
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'powerline/powerline-fonts'
Plug 'udalov/kotlin-vim' , {'for' : 'kt'}
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'rhysd/vim-clang-format'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'octol/vim-cpp-enhanced-highlight', { 'for' : 'cpp'}
Plug 'vim-python/python-syntax', { 'for' : 'py' }
Plug 'stevearc/vim-arduino', {'for' : 'ino'}
"Plug 'jiangmiao/auto-pairs'
call plug#end()
"Set Vim-Plug


"Set vim-clang-format
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11"}
"Set vim-clang-format

"Set YouCompleteMe
let g:ycm_clangd_uses_ycmd_caching = 0
let g:ycm_clangd_binary_path = exepath("clangd")
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 3
let g:ycm_collect_identifiers_from_comments_and_strings = 2
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt-=preview
"set completeopt=menu,menuone
"Set YouCompleteMe

"Set tagbar
set tags=./tags,./TAGS,tags;~,TAGS;~
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_width=30
let g:tarbar_left = 1
"Set tagbar


"Set nerdtree-tags

let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let NERDTreeShowHidden=1
let NERDTreeWinSize=31
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeIgnore=['\.pyc','\~$','\.swp', '\.git', '\.gitignore']
let NERDTreeShowBookmarks=1
"Set nerdtree-tags

"Set fold
set foldmethod=marker
set foldlevel=0
"Set fold

"Set AirLine
let g:airline#extensions#tabline#enabled = 1
"Set AirLine
"
let g:python_highlight_all = 1


"Other Setting
syntax on
set t_Co=256
colorscheme gruvbox
set encoding=utf8
set autoindent
set number
set relativenumber
set ignorecase
set smartcase
set hlsearch
set incsearch
set cindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set scrolloff=5
set confirm
set backspace=indent,eol,start
set laststatus=2
set list
set listchars=tab:▶\ ,eol:\ ,nbsp:␣,trail:•
set showmode
set showmatch
set wrap
set autowrite
set mouse=a
let mapleader = " "
"Other Settings


"Map
command WQ wq
command Wq wq
command W w
command Q q
map <leader>t :NERDTreeToggle<CR>
map <leader>h :wincmd h <CR>
map <leader>j :wincmd j <CR>
map <leader>k :wincmd k <CR>
map <leader>l :wincmd l <CR>
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <Home> ^
map <F3> :NERDTreeToggle <CR>
map <F4> :TagbarToggle <CR>
map <C-a> gg=G <CR>
imap <Home> <Esc>^i
inoremap ( ()<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap [ []<Esc>i
inoremap {<CR> {<CR>}<Esc>ko
"Map


"Switch Mouse Mode (Ctrl+n)
map <C-n> :call SwitchMouseMode()<CR>
map! <C-n> <Esc>:call SwitchMouseMode()<CR>
function SwitchMouseMode()
    if (&mouse == "a")
        let &mouse = ""
        echo "Mouse is disabled."
    else
        let &mouse = "a"
        echo "Mouse is enabled."
    endif
endfunction
"ctrl+n switch mouse mode

"Tab To Space
map <C-t> :call TabToSpaces()<CR>
map! <C-t> <Esc>:call TabToSpaces()<CR>
function TabToSpaces()
    retab
    echo "Convert tab to spaces."
endfunction
"Tab To Space

"remove unwanted space
command Rspace :%s/\s\+$//e
"remove unwanted space

