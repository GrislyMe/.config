
if exists('g:vscode')
	source $HOME/.config/nvim/vsKeybinding.vim
else
	source $HOME/.config/nvim/keybinding.vim
	source $HOME/.config/nvim/plugin.vim
	source $HOME/.config/nvim/defx_config.vim
	colorscheme gruvbox
	au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
	au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
endif

source $HOME/.config/nvim/generalSetting.vim

"remove unwanted space
command RSpace :%s/\s\+$//e
"remove unwanted space

"hexReader
command HexReader :%!xxd
"hexReader

"binaryReader
command BinReader :%!xxd -R
"binaryReader
