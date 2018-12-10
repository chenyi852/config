"author adma
"modified by chenyi

if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
 	\| exe "normal g'\"" | endif
endif
set path=./**,**,
"set colorcolumn=80
" clean the colorcolumn
"set colorcolumn=
let &colorcolumn="80,".join(range(120,999),",")
highlight ColorColumn ctermbg=0 guibg=lightgrey
nmap csm :set colorcolumn=80<CR>
set hls
set tabstop=8
set softtabstop=8
set shiftwidth=8
set ts=8
highlight OverLength ctermbg=yellow ctermfg=black guibg=#592929
match OverLength /\%81v.\+/
set cindent
" need to add :cw<CR> at the end of command
set cscopequickfix=s-,c-,d-,i-,t-,e-,f-,g-
nmap wm :WMToggle<cr>
map  wmb :BottomExplorerWindow<cr>
map wmt  :FirstExplorerWindow<cr>
set nocst
set noswapfile
" execute without open a new slice window
nmap css :cs find s <C-R>=expand("<cword>")<CR><CR> :cw<CR>
nmap csg :cs find g <C-R>=expand("<cword>")<CR><CR> :cw<CR>
nmap csc :cs find c <C-R>=expand("<cword>")<CR><CR> :cw<CR>
nmap cst :cs find t <C-R>=expand("<cword>")<CR><CR> :cw<CR>
nmap cse :cs find e <C-R>=expand("<cword>")<CR><CR> :cw<CR>
nmap csf :cs find f <C-R>=expand("<cfile>")<CR><CR> :cw<CR>
nmap csi :cs find i <C-R>=expand("<cfile>")<CR><CR> :cw<CR>
nmap csd :cs find d <C-R>=expand("<cword>")<CR><CR> :cw<CR>
":autocmd FileType qf wincmd J
":botright copen 5

nmap csv :cs find g
nmap csq :q<CR>
nmap csql <C-W>l:q<CR>
nmap csqh <C-W>h:q<CR>
nmap wwl 30<C-W>>
nmap wws 30<C-W><
nmap csh :sp<CR>
nmap csu :vs<CR>
"nmap csi :exe Adammax()<CR>
"nmap csf :exe Adammaxh()<CR>
"nmap csb :Gblame<CR>o<C-W>j:q<CR><C-W>kcsi
" Using 'CTRL-spacebar' then a search type makes the vim window
" split horizontally, with search result displayed in
" the new window.
nmap	w=	:resize +3<CR>
nmap	w-	:resize -3<CR>
nmap	w,	:vertical resize -3<CR>
nmap	w.	:vertical resize +3<CR>

"nmap <C-/>s :scs find s <C-R>=expand("<cword>")<CR><CR> :cw<CR>
"nmap <C-/>g :scs find g <C-R>=expand("<cword>")<CR><CR> :cw<CR>
"nmap <C-/>c :scs find c <C-R>=expand("<cword>")<CR><CR> :cw<CR>
"nmap <C-/>t :scs find t <C-R>=expand("<cword>")<CR><CR> :cw<CR>
"nmap <C-/>e :scs find e <C-R>=expand("<cword>")<CR><CR> :cw<CR>
"nmap <C-/>f :scs find f <C-R>=expand("<cfile>")<CR><CR> :cw<CR>
"nmap <C-/>i :scs find i <C-R>=expand("<cfile>")<CR><CR> :cw<CR>
"nmap <C-/>d :scs find d <C-R>=expand("<cword>")<CR><CR> :cw<CR>

nmap scs :scs find s <C-R>=expand("<cword>")<CR><CR> :cw 5<CR>
nmap scg :scs find g <C-R>=expand("<cword>")<CR><CR> :cw 5<CR>
nmap scc :scs find c <C-R>=expand("<cword>")<CR><CR> :cw 5<CR>
nmap sct :scs find t <C-R>=expand("<cword>")<CR><CR> :cw 5<CR>
nmap sce :scs find e <C-R>=expand("<cword>")<CR><CR> :cw 5<CR>
nmap scf :scs find f <C-R>=expand("<cfile>")<CR><CR> :cw 5<CR>
nmap sci :scs find i <C-R>=expand("<cfile>")<CR><CR> :cw 5<CR>
nmap scd :scs find d <C-R>=expand("<cword>")<CR><CR> :cw 5<CR>

nmap vcs :vert scs find s <C-R>=expand("<cword>")<CR><CR> :cw 5<CR>
nmap vcg :vert scs find g <C-R>=expand("<cword>")<CR><CR> :cw 5<CR>
nmap vcc :vert scs find c <C-R>=expand("<cword>")<CR><CR> :cw 5<CR>
nmap vct :vert scs find t <C-R>=expand("<cword>")<CR><CR> :cw 5<CR>
nmap vce :vert scs find e <C-R>=expand("<cword>")<CR><CR> :cw 5<CR>
nmap vcf :vert scs find f <C-R>=expand("<cfile>")<CR><CR> :cw 5<CR>
nmap vci :vert scs find i <C-R>=expand("<cfile>")<CR><CR> :cw 5<CR>
nmap vcd :vert scs find d <C-R>=expand("<cword>")<CR><CR> :cw 5<CR>

highlight MyGroup ctermbg=gray guibg=gray

highlight MyGroup2 ctermbg=6 guibg=yellow
highlight MyGroup3 ctermbg=2 guibg=gray
nmap maf :match  MyGroup /<C-R>=expand("<cword>")<CR>/<CR>
nmap mas :2match  MyGroup2 /<C-R>=expand("<cword>")<CR>/<CR>
nmap mat :3match  MyGroup3 /<C-R>=expand("<cword>")<CR>/<CR>
nmap man :match<CR> :2match<CR> :3match<CR>
"nmap <C-l> 10l
"nmap <C-h> 10h
"nmap <C-j> 10j
"nmap <C-k> 10k

if ! has("gui_running")
  set t_Co=256
endif
if &diff
    colors peaksea
endif
colors peaksea
set mouse=a
nmap <C-e> $
nmap <C-a> ^
"nmap <C-u> [[o#if 0<Esc>][O#endif<Esc>
nmap <C-u><C-m> [[jdd<Esc>][kdd<Esc>
nmap <C-u>m  <Esc>:r !date<CR>i/* chenyi852@gmail.com edited at <Esc>$a*/<Esc>
"nmap <Tab> i<Space><Space><Space><Space><Esc>
"nnoremap <silent>  tlt :TlistToggle<CR>
"nnoremap <silent>  tlu :TlistUpdate<CR>
"nnoremap <silent> cwn :cn<CR>
"nnoremap <silent> col :col<CR>
"nnoremap <silent> cne :cnew<CR>
"nnoremap <silent> cwp :cp<CR>
"nnoremap <silent> cwc :ccl<CR>
"nnoremap <silent> cwo :cw<CR>
"Add for the fuzzer finder
"nmap uff :FufFile **/<C-R>=expand("<cword>")<CR><CR>
"nmap fff :FufFile **/<CR>
"nmap fff :LookupFile<CR>
"nmap ffd :FufFileWithCurrentBufferDir<CR>
"nmap ffb :FufBuffer<CR>
"nmap ffc printf("[%s] debug ---- @%d\n", __FUNCTION__, __LINE__);
"nmap fft :FufTag<CR>
"highlight Pmenu ctermbg=white ctermfg=black
"highlight PmenuSel ctermbg=yellow ctermfg=black
"highlight Search  ctermbg=white ctermfg=black cterm=bold
nmap grepw :vimgrep /<C-R>=expand("<cword>")<CR>/j
nmap grepo :vimgrep /<C-R>=expand("<cword>")<CR>/j <C-R>=expand("%")<CR><CR>
nmap grepd :vimgrep /<C-R>=expand("<cword>")<CR>/j <C-R>=expand("%:h")<CR>/**/*
nmap grepl :!ls -l  <C-R>=expand("%")<CR>
nmap ccw :!pandoc <C-R>=expand("%")<CR>\|w3m<CR>
"nmap wwt :let g:winManagerWindowLayout = 'TagList'
"nmap wwf :let g:winManagerWindowLayout e 'FileExplorer'
"nmap <C-r>  <C-w>=
nmap hex  :%!xxd<CR>
nmap hexr :%!xxd -r<CR>
nmap pl :Explore<CR>
nmap ww :w<CR>
map wwq :wq<CR>
"NERD tree related
nmap pn :NERDTreeToggle <C-R>=expand("%:h")<CR><CR>
nmap pc :cd <C-R>=expand("%:h")<CR><CR>
:let g:NERDTreeDirArrows=0
:let g:LookupFile_TagExpr='"./filenametags"'
:let g:LookupFile_ignorecase=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif

"set ignorecase
nmap gn :set ignorecase
nmap zgn :set noignorecase
nmap vs :vs<CR>:Explore<CR>
let g:Powerline_symbols = 'fancy'
"let g:Powerline_symbols = 'unicode'
"let g:Powerline_colorscheme = 'solarized'
"let g:Powerline_colorscheme = 'skwp'
set nocompatible
set laststatus=2
set encoding=utf-8
set t_Co=256
"set cursorline
"nmap <C-c> :set cursorline<CR>:set cursorcolumn<CR>
"nmap <C-n><C-c> :set nocursorline<CR>:set nocursorcolumn<CR>
hi CursorLine   cterm=NONE ctermbg=yellow ctermfg=black guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"hi Cursor cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"hi CursorIM cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi Cursor ctermbg=15 ctermfg=8
cnoremap <c-a> <C-B>
"when in insert mode, press <F5> to go to paste mode, where you can paste mass data
"that won't be autoindented
set pastetoggle=<F4>
nnoremap <silent> <F6> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
nmap qq :q<CR>
"nmap du <C-w>k
"nmap dd <C-w>u
set ww=b,s,h,l
"set expandtab
set nu
"按F9即可打开tagbar interface
nmap <silent> <F9> :TagbarToggle<CR>
"tagbar以来ctags插件
let g:tagbar_ctags_bin = 'ctags'
"让tagbar在页面左侧显示，默认右边
let g:tagbar_left = 0
"设置tagbar的宽度为30列，默认40
let g:tagbar_width = 30
"这是tagbar一打开，光标即在tagbar页面内，默认在vim打开的文件内
let g:tagbar_autofocus = 1
"设置标签不排序，默认排序
let g:tagbar_sort = 0

"ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
"Change the default mapping and the default command to invoke CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"When invoked, unless a starting directory is specified, CtrlP will set its
"local working directory according to this variable
let g:ctrlp_working_path_mode = 'ra'
"Exclude files or directories using Vim's
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
"And/Or CtrlP's own g:ctrlp_custom_ignore
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll|o|pyc|tar|tar.gz|elf)$',
	\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
	\ }
"Specify an external tool to use for listing files instead of using Vim's
"globpath(). Use %s in place of the target directory
let g:ctrlp_user_command = 'find %s -type f'

" abbreviates
abbreviate ACKme Acked-by: Zhe Tao <zhe.tao@intel.com>
abbreviate Signme Signed-off-by: Chen Yi <chenyi852@gmail.com>
abbreviate CHENYI chenyi852@gmail.com
abbreviate __S <tab>--yliu
abbreviate dpdkorg dev@dpdk.org
"abbreviate DPDK 'NPG-PRC-SW DPDK <npg-prc-sw.dpdk@intel.com>'


if has("cscope") && filereadable("/usr/bin/cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst
   set nocsverb
   " add any database in current directory
   if filereadable("cscope.out")
      cs add cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   set csverb
endif
nmap csp csu<C-w>lcsg
nmap csi csu<C-w>lcsc

" If installed using Homebrew
set rtp+=/usr/local/opt/fzf

" If installed using git
set rtp+=~/.fzf

"按F5运行python"
map <F3> :Autopep8<CR> :w<CR> :call RunPython()<CR>
function RunPython()
    let mp = &makeprg
    let ef = &errorformat
    let exeFile = expand("%:t")
    setlocal makeprg=python\ -u
    set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
    silent make %
    copen
    let &makeprg = mp
    let &errorformat = ef
endfunction\
let python_highlight_all=1
syntax on

"Flagging Unnecessary Whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
" for YouCompleteMe
"ensures that the auto-complete window goes away when you’re done with it
let g:ycm_autoclose_preview_window_after_completion=1
"defines a shortcut for goto definition
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"默认配置文件路径"
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"打开vim时不再询问是否加载ycm_extra_conf.py配置"
let g:ycm_confirm_extra_conf=0
set completeopt=longest,menu
"python解释器路径"
let g:ycm_path_to_python_interpreter='/usr/bin/python'
"是否开启语义补全"
let g:ycm_seed_identifiers_with_syntax=1
"是否在注释中也开启补全"
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
"开始补全的字符数"
let g:ycm_min_num_of_chars_for_completion=2
"补全后自动关机预览窗口"
let g:ycm_autoclose_preview_window_after_completion=1
" 禁止缓存匹配项,每次都重新生成匹配项"
let g:ycm_cache_omnifunc=0
"字符串中也开启补全"
let g:ycm_complete_in_strings = 1
"离开插入模式后自动关闭预览窗口"
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"回车即选中当前项 换行自动增加 \"
"inoremap <expr> <CR>       pumvisible() ? '<C-y>' : '\<CR>'

"上下左右键行为"
inoremap <expr> <Down>     pumvisible() ? '\<C-n>' : '\<Down>'
inoremap <expr> <Up>       pumvisible() ? '\<C-p>' : '\<Up>'
inoremap <expr> <PageDown> pumvisible() ? '\<PageDown>\<C-p>\<C-n>' : '\<PageDown>'
inoremap <expr> <PageUp>   pumvisible() ? '\<PageUp>\<C-p>\<C-n>' : '\<PageUp>'

" bundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin '你的插件'
"Auto-Indentation
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
call vundle#end()
filetype plugin indent on
