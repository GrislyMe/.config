set nocompatible

call plug#begin('~/.local/share/nvim/plugins')
"colorScheme
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'

"auto complete
Plug 'Valloric/YouCompleteMe'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

"file explore
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'

"FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

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

call plug#end()
"Set Vim-Plug

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

"set clang format
let g:clang_format#auto_format=1
let g:clang_format#detect_style_file=1
"set clang format

let g:python_highlight_all=1
