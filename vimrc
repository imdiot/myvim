"leader
let mapleader = '`'
let g:mapleader = '`'

if filereadable(expand("~/myvim/vimrc.bundles"))
  source ~/myvim/vimrc.bundles
endif

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

map <C-n> :tabnew<CR>
map <C-h> :tabprev<CR>
map <C-l> :tabnext<CR>

"缩进配置
set smartindent   " Smart indent
set autoindent    " 打开自动缩进

"Python
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai
