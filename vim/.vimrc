
"vim global config
:let mapleader = ","
setlocal noswapfile
set nocompatible
set autochdir

set showcmd     " Show (partial) command in status line.
set showmatch       " Show matching brackets.
set hidden             " Hide buffers when they are abandoned
set mouse=a     " Enable mouse usage (all modes)

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


" another vimrc can be phased in
if filereadable("/etc/vim/vimrc.local")
   source /etc/vim/vimrc.local
endif


if has("syntax")
	  syntax on
  endif

filetype plugin on

let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<CR>
nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>

"for file exployer netrw
let g:netrw_winsize=20
nmap <silent> <leader>se :Sexployer!<CR>
nmap wj :resize -3<CR>
nmap wk :resize +3<CR>
nmap wh :vertical resize +3<CR>
nmap wl :vertical resize -3<CR>

"for minibuffer
map <C-h> :bp<CR>
map <C-l> :bn<CR>

"for quickfix
nmap <leader>cn :cn<CR>
nmap <leader>cp :cp<CR>
nmap <leader>cw :cw 10<CR>
nmap wn :cn<CR>
nmap wp :cp<CR>
nmap ww :cw<CR>

"for cscope quickfix window
cs add $TAGTOP/cscope.out $PRJTOP
:set cscopequickfix=s-,c-,d-,i-,t-,e-

nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

nmap wr :Rgrep<CR>
nnoremap <silent> <F3> :Rgrep<CR>
nmap wf :lv /<c-r>=expand("<cword>")<cr>/ %<cr>:lw<cr> 

"for code editing
set ts=4
set noexpandtab
set softtabstop=4
set shiftwidth=4

set hls
set nu
set updatetime=1000

"for ctags
set tags=$TAGTOP/tags

""Lookupfile related
let g:LookupFile_PreserveLastPattern = 0
let g:LookupFile_PreservePatternHistory = 1
let g:LookupFile_AlwaysAcceptFirst = 1
let g:LookupFile_AllowNewFiles = 0
let g:LookupFile_TagExpr = printf('"%s/tags/filenametags"',$PRJTOP)

"for gitv config
nmap <leader>gv :Gitv --all --no-merges<cr>
vmap <leader>gV :Gitv! --all<cr>
cabbrev git Git
let g:Gitv_CommitStep = 500

"process diff file
function FoldDiff()
	:%s/^diff/}}}\rdiff
	:%s/^commit/}}}\rcommit
	:set foldmarker=diff,}}}
	:set foldmethod=marker
	:set filetype=diff
endfunction
map <F12> :call FoldDiff()<CR>

"supertab
let g:SuperTabDefaultCompletionType = "<c-n>"

set pastetoggle=<F11>

nnoremap <silent> <F3> :Rgrep<CR>
map <F2> :set nu!<CR>

:colorscheme desert

set mouse=
