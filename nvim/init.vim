set nocompatible

call plug#begin('~/.local/share/nvim/plugins')
"colorScheme
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'

"auto complete
Plug 'Valloric/YouCompleteMe'

"nerd tree
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

"status bar
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'

"language support
Plug 'rhysd/vim-clang-format'
Plug 'octol/vim-cpp-enhanced-highlight', { 'for' : 'cpp'}
Plug 'vim-python/python-syntax', { 'for' : 'py' }
Plug 'udalov/kotlin-vim' , {'for' : 'kt'}

"git
Plug 'tpope/vim-fugitive'

"csv reader
Plug 'chrisbra/csv.vim'

"discord status
Plug 'aurieh/discord.nvim'


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

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_section_b = ' %{fugitive#statusline()}'
"airline

"Set nerdtree-tags
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let NERDTreeShowHidden=1
let NERDTreeWinSize=30
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeIgnore=['\.pyc','\~$','\.swp', '\.git', '\.gitignore']
let NERDTreeShowBookmarks=1
"Set nerdtree-tags

"Set fold
set foldmethod=marker
set foldlevel=0
"Set fold

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
set mouse=c
let mapleader = " "
"Other Settings


"Map
command WQ wq
command Wq wq
command W w
command Q q
inoremap {<CR> {<CR>}<esc>ko
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
map <leader>gs :Gstatus<CR>
map <F3> :NERDTreeTabsToggle<CR>
map <F4> :TagbarToggle<CR>
map <F5> :split<CR> :wincmd j<CR> :term<CR> :resize 10<CR>
map <C-a> gg=G<CR>
imap <Home> <Esc>^i
tnoremap <Esc> <C-\><C-n>
"Map

"remove unwanted space
command RSpace :%s/\s\+$//e
"remove unwanted space

"hexReader
command HexReader :%!xxd
"hexReader

"binaryReader
command BinReader :%!xxd -R
"binaryReader
"
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
