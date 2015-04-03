let g:tagbar_ctags_bin='/usr/local/bin/ctags'  " Proper Ctags locations
let g:tagbar_width=26                          " Default is 40, seems too wide
let g:tagbar_type_groovy= {
    \ 'ctagstype' : 'groovy',
    \ 'kinds'     : [
        \ 'p:packages:1',
        \ 'V:values',
        \ 'v:variables',
        \ 'T:types',
        \ 'f:function',
        \ 't:traits',
        \ 'o:objects',
        \ 'a:aclasses',
        \ 'c:classes',
        \ 'r:cclasses',
        \ 'm:methods'
    \ ]
\ }

map <F3> :TagbarToggle<CR>


function! SetCtagsForProject()
	let projectRoot = projectroot#get() . '/.git/tags'
	set tags=projectRoot
endfunction
