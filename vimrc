"leader
let mapleader = '`'
let g:mapleader = '`'

if filereadable(expand("~/myvim/vimrc.bundles"))
  source ~/myvim/vimrc.bundles
endif

"鼠标支持
set mouse=a
"语法高亮
syntax on
"检测文件类型
filetype on
"针对不同的文件类型采用不同的缩进格式
filetype indent on
"允许插件
filetype plugin on
"启动自动补全
filetype plugin indent on
set cot=menuone,preview
autocmd insertleave * if pumvisible() == 0|pclose|endif
autocmd filetype html,markdown setlocal omnifunc=htmlcomplete#Completetags
autocmd filetype javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd filetype python setlocal omnifunc=pythoncomplete#Complete
autocmd filetype xml setlocal omnifunc=xmlcomplete#completetags
autocmd filetype css set omnifunc=csscomplete#CompleteCSS
autocmd filetype c set omnifunc=ccomplete#Complete
autocmd filetype java set omnifunc=javacomplete#Complete
autocmd filetype php set omnifunc=phpcomplete#CompletePHP
autocmd fileType ruby set omnifunc=rubycomplete#Complete

"文件修改后自动载入
set autoread

" use syntax complete if nothing else available
if has("autocmd") && exists("+omnifunc")
    autocmd Filetype *
                \   if &omnifunc == "" |
                \       setlocal omnifunc=syntaxcomplete#Complete |
                \   endif
endif

set laststatus=2
set t_Co=256

"设置新文件的编码为 UTF-8
set encoding=utf-8
"自动判断编码时，依次尝试以下编码：
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn

"显示行号
set number
"突出显示当前列
set cursorcolumn
"突出显示当前行
set cursorline

map <C-t> :tabnew<CR>
map <C-p> :tabprev<CR>
map <C-n> :tabnext<CR>

"缩进配置
set smartindent   " Smart indent
set autoindent    " 打开自动缩进

set tabstop=4     " 设置Tab键的宽度        [等同的空格个数]
set shiftwidth=4  " 每一次缩进对应的空格数
set softtabstop=4 " 按退格键时可以一次删掉 4 个空格
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop 按退格键时可以一次删掉 4 个空格

"Python
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai
"Go
let g:go_fmt_command = "goimports"

colorscheme molokai
