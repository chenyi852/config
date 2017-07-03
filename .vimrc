"created by chenyi

if has("autocmd") 
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") 
 	\| exe "normal g'\"" | endif 
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ��ʾ���  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set shortmess=atI   " ������ʱ����ʾ�Ǹ�Ԯ���ڸɴ��ͯ����ʾ  
"winpos 5 5          " �趨����λ��  
"set lines=40 columns=155    " �趨���ڴ�С  
"set go=             " ��Ҫͼ�ΰ�ť  
"color asmanian2     " ���ñ�������  
"set guifont=Courier_New:h10:cANSI   " ��������  
"syntax on           " �﷨����  
"autocmd InsertLeave * se nocul  " ��ǳɫ������ǰ��  
"autocmd InsertEnter * se cul    " ��ǳɫ������ǰ��  
"set ruler           " ��ʾ���  
set showcmd         " �����������ʾ�������������Щ  
"set cmdheight=1     " �����У���״̬���£��ĸ߶ȣ�����Ϊ1  
"set whichwrap+=<,>,h,l   " ����backspace�͹�����Խ�б߽�(������)  
"set scrolloff=3     " ����ƶ���buffer�Ķ����͵ײ�ʱ����3�о���  
"set novisualbell    " ��Ҫ��˸(������)  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "״̬����ʾ������  
set laststatus=1    " ������ʾ״̬��(1),������ʾ״̬��(2)  
set foldenable      " �����۵�  
set foldmethod=manual   " �ֶ��۵�  
"set background=dark "����ʹ�ú�ɫ 
set nocompatible  "ȥ��������й�viһ����ģʽ��������ǰ�汾��һЩbug�;���  
" ��ʾ���İ���
if version >= 603
	set helplang=cn
	set encoding=utf-8
endif
" ������ɫ����
"colorscheme murphy
"���� 
"if (has("gui_running")) 
"   set guifont=Bitstream\ Vera\ Sans\ Mono\ 10 
"endif 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""ʵ������
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ���õ��ļ����Ķ�ʱ�Զ�����
set autoread
" quickfixģʽ
"autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"���벹ȫ 
"set completeopt=preview,menu 
"������  
"filetype plugin on
"���������  
"set clipboard+=unnamed 
"�Ӳ�����  
set nobackup
"make ����
:set makeprg=g++\ -Wall\ \ %
"�Զ�����
set autowrite
"set ruler                   " ��״̬�����
"set cursorline              " ͻ����ʾ��ǰ��
"set magic                   " ����ħ��
"set guioptions-=T           " ���ع�����
"set guioptions-=m           " ���ز˵���
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
" ������״̬����ʾ����Ϣ
set foldcolumn=0
"set foldmethod=indent 
"set foldlevel=3 
"set foldenable              " ��ʼ�۵�
" ��Ҫʹ��vi�ļ���ģʽ������vim�Լ���
set nocompatible
" �﷨����
set syntax=on
" ȥ������������ʾ����
set noeb
" �ڴ���δ�����ֻ���ļ���ʱ�򣬵���ȷ��
set confirm
" �Զ�����
set autoindent
set cindent
" Tab���Ŀ��
set tabstop=4
" ͳһ����Ϊ4
set softtabstop=4
set shiftwidth=4
" ��Ҫ�ÿո�����Ʊ��
set noexpandtab
" ���кͶο�ʼ��ʹ���Ʊ��
set smarttab
" ��ʾ�к�
set number
" ��ʷ��¼��
set history=1000
"��ֹ������ʱ�ļ�
set noswapfile
"�������Դ�Сд
"set ignorecase
"�������ַ�����
set hlsearch
set incsearch
"�����滻
set gdefault
"��������
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"��������
set langmenu=zh_CN.UTF-8
set helplang=cn
" �ҵ�״̬����ʾ�����ݣ������ļ����ͺͽ��룩
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
" ������ʾ״̬��
set laststatus=2
" �����У���״̬���£��ĸ߶ȣ�Ĭ��Ϊ1��������2
set cmdheight=2
" ����ļ�����
filetype on
" �����ļ����Ͳ��
"filetype plugin on
" Ϊ�ض��ļ�����������������ļ�
"filetype indent on
" ����ȫ�ֱ���
set viminfo+=!
" �������·��ŵĵ��ʲ�Ҫ�����зָ�
set iskeyword+=_,$,@,%,#,-
" �ַ���������������Ŀ
set linespace=0
" ��ǿģʽ�е��������Զ���ɲ���
"set wildmenu
" ʹ�ظ����backspace����������indent, eol, start��
set backspace=2
" ����backspace�͹�����Խ�б߽�
set whichwrap+=<,>,h,l
" ������buffer���κεط�ʹ����꣨����office���ڹ�����˫����궨λ��
"set mouse=a
""set selection=exclusive
""set selectmode=mouse,key
" ͨ��ʹ��: commands������������ļ�����һ�б��ı��
set report=0
" �ڱ��ָ�Ĵ��ڼ���ʾ�հף������Ķ�
set fillchars=vert:\ ,stl:\ ,stlnc:\
" ������ʾƥ�������
set showmatch
" ƥ�����Ÿ�����ʱ�䣨��λ��ʮ��֮һ�룩
set matchtime=1
" ����ƶ���buffer�Ķ����͵ײ�ʱ����3�о���
set scrolloff=3
" ΪC�����ṩ�Զ�����
"set smartindent
" ������ʾ��ͨtxt�ļ�����Ҫtxt.vim�ű���
au BufRead,BufNewFile *  setfiletype txt
"�Զ���ȫ
":inoremap ( ()<ESC>i
":inoremap ) <c-r>=ClosePair(')')<CR>
"":inoremap { {<CR>}<ESC>O
"":inoremap } <c-r>=ClosePair('}')<CR>
":inoremap [ []<ESC>i
":inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap " ""<ESC>i
":inoremap ' ''<ESC>i
"function! ClosePair(char)
"	if getline('.')[col('.') - 1] == a:char
"		return "\<Right>"
"	else
"		return a:char
"	endif
"endfunction
"filetype plugin indent on 
"���ļ����ͼ��, �������ſ��������ܲ�ȫ
"set completeopt=longest,menu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ��F8��ť���ڴ��ڵ�������taglist�Ĵ���,��vc������workpace
nnoremap <silent> <F8> :TlistToggle<CR><CR>
" :Tlist              ����TagList
 let Tlist_Show_One_File=0                    " ֻ��ʾ��ǰ�ļ���tags
 let Tlist_Exit_OnlyWindow=1                  "
" ���Taglist���������һ���������˳�Vim
let Tlist_Use_Right_Window=1                 " ���Ҳര������ʾ
let Tlist_File_Fold_Auto_Close=1             " �Զ��۵�
