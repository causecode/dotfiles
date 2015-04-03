set nocompatible
set exrc
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
set rtp+=~/.vim/bundle/vundleconfig/
call vundleconfig#init()


"Plugins management
Plugin 'causecode/vundleconfig.git'
Plugin 'gmarik/vundle'

"Code completion
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"Buffer management
Plugin 'jeetsukumaran/vim-buffergator.git'
Plugin 'BufOnly.vim'
Plugin 'ZoomWin'

"Navigation
Plugin 'kien/ctrlp.vim.git'
Plugin 'majutsushi/tagbar.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'jayflo/vim-skip'
Plugin 'sjl/gundo.vim.git'
Plugin 'tpope/vim-unimpaired.git'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'mhinz/vim-startify'
Plugin 'airblade/vim-rooter'
Plugin 'dbakker/vim-projectroot'

"Searching
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-abolish.git'

"terminal clipboard
Plugin 'kana/vim-fakeclip'

"Writing stuff
Plugin 'mattn/calendar-vim'
Plugin 'jmcantrell/vim-journal'

"Dash
Plugin 'rizzatti/funcoo.vim'
Plugin 'rizzatti/dash.vim'

"Editing
Plugin 'scrooloose/syntastic.git'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'sjurgemeyer/vim-grails-import'
Plugin 'taglist.vim'

"Formatting
Plugin 'vim-scripts/Align.git'
"Plugin 'tpope/vim-sleuth'
Plugin 'vim-scripts/SyntaxRange'
Plugin 'vim-scripts/SyntaxComplete'

"Filetype
Plugin 'tpope/vim-markdown'
Plugin 'suan/vim-instant-markdown'
Plugin 'csv.vim'

"Javascript stuff
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'vim-scripts/JavaScript-Indent'
Plugin 'Shutnik/jshint2.vim'

"TODO.txt
Plugin 'freitass/todo.txt-vim'
Plugin 'sjurgemeyer/vim-todo.txt-plugin'

Plugin 'vim-scripts/dbext.vim'

"Git
Plugin 'sjl/splice.vim'
Plugin 'tpope/vim-fugitive.git'
Plugin 'gregsexton/gitv.git'
Plugin 'idanarye/vim-merginal'

"github PR review
Plugin 'junkblocker/patchreview-vim'
Plugin 'codegram/vim-codereview'

"Utils
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-dispatch'
Plugin 'henrik/vim-qargs'

"Pretty
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'vim-scripts/JavaImp.vim--Lee'
Plugin 'akhaku/vim-java-unused-imports'
"Plugin 'slimv.vim'
Plugin 'tpope/vim-ragtag'
Plugin 'gcmt/wildfire.vim'
Plugin 'vim-scripts/Greplace.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'einars/js-beautify'
Plugin 'tpope/vim-endwise'
Plugin 'Raimondi/delimitMate'

call vundle#end()
"set rtp+=~/.vim/bundle/vundleconfig/
"call vundleconfig#init()

let mapleader = "q"
let g:mapleader = "q"
nnoremap <leader> q
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
au FileType java :so "/usr/share/vim/javakit/vim/JavaKit.vim"
syntax on
filetype plugin on
filetype plugin indent on

set nostartofline
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set path+=**
set encoding=utf-8
set termencoding=utf-8
set scrolloff=5
set autoindent
set autoread 
set history=1000
set shiftround
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set title titlestring=  " Sets the title of the window to the filename
set ruler
set backspace=indent,eol,start
set undofile
"set winwidth=119
set wildignore+=*.class,.git,.hg,.svn,test-integration/**,test-unit/**,**/target/**,**/build/**
set diffopt=filler,vertical

set tags=~/.tags
set ic
set smartcase
set incsearch 
set hls
set clipboard=unnamed

"Directories for swp files
set backupdir=~/.vimbackup
set directory=~/.vimbackup
set undodir=~/.vimundo

" Spell check
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.md set complete+=kspell
autocmd FileType gitcommit setlocal spell

" Startify
let g:ctrlp_reuse_window = 'startify'

" ` goes to the line and column by default, where ' only goes to the row.  Switch ' to be the more useful one
nnoremap ' `
nnoremap ` '


"Manipulate a comma seperated list"
vmap <D-[> :s/,\s*/,\r/g<CR>
vmap <D-]> :s/,\n/, /g<CR>

"clear current highlighting
map <C-c> :nohlsearch<CR>

"Next/Previous difference in vimdiff
map <D-k> [c
map <D-j> ]c

"Insert line
map <S-CR> <Esc>o<Esc>
"Paste newline
map <D-p> <S-CR>p

" Mappers
noremap <leader>f :Autoformat<cr><cr>

map <leader>j 50k
map <leader>w :w!<cr>
map <leader>h :JSHint <cr>
map <leader>w :w!<cr>
map <leader><leader>h :help usr_41.txt<cr>
map <leader><leader>H :help function-list<cr>
map <C-o> :TlistToggle<cr>
map <leader>b :CtrlPBuffer<cr>
map <leader>a :BufExplorer<cr>
map <leader>k :BufOnly<cr>
if has('mac') && ($TERM == 'xterm-256color' || $TERM == 'screen-256color')
	map <Esc>OP <F1>
	map <Esc>OQ <F2>
	map <Esc>OR <F3>
	map <Esc>OS <F4>
	map <Esc>[16~ <F5>
	map <Esc>[17~ <F6>
	map <Esc>[18~ <F7>
	map <Esc>[19~ <F8>
	map <Esc>[20~ <F9>
	map <Esc>[21~ <F10>
	map <Esc>[23~ <F11>
	map <Esc>[24~ <F12>
endif

function! RemoveSwapFile()
	let backupdir = &backupdir
	let file = expand("%:t:r")
	:execute "!rm " . backupdir . "/" . file . ".sw*"
endfunction
command! RemoveSwapFile :call RemoveSwapFile()

command! Big :set guifont=Source\ Code\ Pro\ Semibold\ for\ Powerline:h40
command! Small :set guifont=Source\ Code\ Pro\ Semibold\ for\ Powerline:h13

"Cleanup quickfix
au Filetype qf setl nolist 
au Filetype qf setl nocursorline 
au Filetype qf setl nowrap

"change underscore variables to camel case
:nnoremap + /\$\w\+_<CR>
:nnoremap _ f_x~

"Remove spaces at the end of lines
command! RemoveEndSpaces :silent %s/ \+$//g

"JSON
command! FormatJSON :%!python -m json.tool

:nnoremap <A-c> /\v<[A-Z][a-zA-Z]+><CR>

" select previously pasted text
nnoremap gp `[v`] 

"Move lines up and down
:nmap <C-Down> ddp
:nmap <C-Up> ddkP

"Set tab options
function! TabWidth(width)
	let &tabstop=a:width
	let &shiftwidth=a:width
	let &softtabstop=a:width
endfunction

"Make vim work as a word processor
func! WordProcessorMode() 
	colorscheme iawriter
	setlocal formatoptions=1 
	setlocal noexpandtab 
	"map j gj 
	"map k gk
	setlocal spell spelllang=en_us 
	set thesaurus+=/Users/sjurgemeyer/.vim/thesaurus/mthesaur.txt
	set complete+=s
	setlocal formatprg=par
	setlocal wrap 
	setlocal linebreak 
	set colorcolumn=
	set laststatus=0 " don't show status line
	set gfn=Cousine:h14                " font to use
	set nonumber
	set guifont=Source\ Code\ Pro\ Semibold\ for\ Powerline:h15
endfu 
command! WP :call WordProcessorMode()

"Undo wordprocessormode
func! CodeMode() 
	colorscheme solarized
	let jshint2_save = 1
	let jshint2_read = 1
	"set expandtab 
	"map j gj 
	"map k gk
	set colorcolumn=121
	set laststatus=2 " don't show status line
	set guifont=Source\ Code\ Pro\ Semibold\ for\ Powerline:h13
	set number
endfu 
command! CodeMode :call CodeMode()

func! CodeModeLight() 
	set background=light
	:call CodeMode()
endfu 
command! Codel :call CodeModeLight()

func! CodeModeDark() 
	set background=dark
	:call CodeMode()
endfu 
command! Code :call CodeModeDark()


"dragVisuals shortcuts
vmap <expr> <LEFT> DVB_Drag('left')
vmap <expr> <RIGHT> DVB_Drag('right')
vmap <expr> <UP> DVB_Drag('up')
vmap <expr> <DOWN> DVB_Drag('down')
vmap <expr> D DVB_Duplicate()


"Cursor in terminal mode
if $TERM_PROGRAM =~ "iTerm"
	let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
	let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode"
endif

if ! has('gui_running')
	set ttimeoutlen=10
	augroup FastEscape
		autocmd!
		au InsertEnter * set timeoutlen=0
		au InsertLeave * set timeoutlen=1000
	augroup END
endif

augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost '~/.vimrc' source '~/.vimrc'
augroup END " }

let g:UltiSnipsSnippetDirectories=["~/.ultisnips","UltiSnips","snippets/angularjs/UltiSnips", "~/.vim/bundle/vim-snippets/snippets"]

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" js-beautify
let g:formatprg_args_expr_javascript = '"-".(&expandtab ? "s ".&shiftwidth : "t").(&textwidth ? " -w ".&textwidth : "")." -"'

" Go to a certain definition, works with ctags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Let statements
" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'
" display indentation guides
" Tagbar groovy config
let g:tagbar_type_groovy = {
    \ 'ctagstype' : 'groovy',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'c:class',
        \ 'i:interface',
        \ 'f:function',
        \ 'v:variables',
    \ ]
\ }

" Keep the following line at the very end
set secure
" Add a private vim-rc for other things
" source ~/.vimrc-private

"Code mode by default
:Codel
