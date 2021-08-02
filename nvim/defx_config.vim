if exists('g:config_defx')
    finish
endif
let g:config_defx = 1

call defx#custom#option('_', {
            \ 'columns': 'git:icons:indent:filename:type',
            \ 'split': 'vertical',
            \ 'winwidth': 35,
            \ 'direction': 'topleft',
            \ 'resume': v:false,
            \ 'toggle': v:true
            \ })

call defx#custom#column('git', 'indicators', {
			\ 'Modified'  : '*',
			\ 'Staged'    : '+',
			\ 'Untracked' : 'U',
			\ 'Renamed'   : 'R',
			\ 'Unmerged'  : '!',
			\ 'Ignored'   : ' ',
			\ 'Deleted'   : 'X',
			\ 'Unknown'   : '?'
			\ })

let g:defx_git#column_length = 0
hi def link Defx_filename_directory NERDTreeDirSlash
hi def link Defx_git_Modified Special
hi def link Defx_git_Staged Function
hi def link Defx_git_Renamed Title
hi def link Defx_git_Unmerged Label
hi def link Defx_git_Untracked Tag
hi def link Defx_git_Ignored Comment
