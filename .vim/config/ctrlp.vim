"CtrlP
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'rtscript']
let g:ctrlp_mruf_exclude = '/tmp/.*\|/temp/.*\|.*/target/.*\|.*/build/.*|*.orig'
  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v(docs|build|target|\.git|\.hg|\.svn|\.sass-cache|node_modules|dist|\.gradle)$',
    \ 'file': '\v\.(orig|)$',
    \ }
let g:ctrlp_max_files = 50000
let g:ctrlp_max_depth = 100
let g:ctrlp_lazy_update = 1

"Open CTRLP with current word prepopulated
map <F2> :CtrlP<CR>
map <M-f> <C-p><C-\>w
nmap <Leader>m :CtrlPMRUFiles<CR>
