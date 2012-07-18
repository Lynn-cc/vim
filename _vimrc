set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 "文件编码检查
set encoding=utf-8 "vim内部编码
set fileencoding=utf-8 "保存时,文件的编码格式
set termencoding=cp936 "终端编码
language messages zh_CN.UTF-8

set nocompatible
set guifont=Consolas:h12
set sw=2             "缩进值
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
colorscheme doriath "corporation desertEx
set nocompatible      " 关闭 vi 兼容模式
syntax on         " 自动语法高亮
colorscheme desertEx    " 设定配色方案
set number          " 显示行号
"set cursorline        " 突出显示当前行
set ruler         " 打开状态栏标尺
"set shiftwidth=4      " 设定 << 和 >> 命令移动时的宽度为 4
"set softtabstop=4       " 使得按退格键时可以一次删掉 4 个空格
"set tabstop=4       " 设定 tab 长度为 4
set nobackup        " 覆盖文件时不备份
set autochdir       " 自动切换当前目录为当前文件所在的目录
filetype plugin indent on " 开启插件
set backupcopy=yes      " 设置备份时的行为为覆盖
set ignorecase smartcase  " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan        " 禁止在搜索到文件两端时重新搜索
set incsearch       " 输入搜索内容时就显示搜索结果
set hlsearch        " 搜索时高亮显示被找到的文本
set noerrorbells      " 关闭错误信息响铃
set novisualbell      " 关闭使用可视响铃代替呼叫
set t_vb=         " 置空错误铃声的终端代码
" set showmatch         " 插入括号时，短暂地跳转到匹配的对应括号
" set matchtime=2       " 短暂跳转到匹配括号的时间
"set magic           " 设置魔术
"set hidden          " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set guioptions-=T     " 隐藏工具栏
"set guioptions-=m       " 隐藏菜单栏
set smartindent       " 开启新行时使用智能自动缩进
set backspace=indent,eol,start
" 不设定在插入状态无法用退格键和 Delete 键删除回车符
set cmdheight=1       " 设定命令行的行数为 1
set laststatus=2      " 显示状态栏 (默认值为 1, 无法显示状态栏)
set foldenable        " 开始折叠
set foldmethod=syntax   " 设置语法折叠
set foldcolumn=0      " 设置折叠区域的宽度
setlocal foldlevel=1    " 设置折叠层数为
"set completeopt=longest,menu "即时显示自动提示
" set foldclose=all       " 设置为自动关闭折叠                
" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" 用空格键来开关折叠
set smarttab
set lbr
set tw=0
"Auto indent
set ai
" Smart indet
set si
" C-style indeting
set cindent
" Wrap lines
set wrap

set expandtab " 使用space代替tab. 

:auto BufNewFile  * retab! 2
:auto BufReadPost * retab! 2
:auto BufWritePre * retab! 2 
:auto BufWritePost  * retab! 2

au FileType html,css,php,java,python,vim,javascript setl shiftwidth=2
au FileType html,css,php,java,python,vim,javascript setl tabstop=2

au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

let b:javascript_fold=1  "开启折叠      javascript插件设置
let g:js_indent_log = 0 "js html indent插件设置
let javascript_enable_domhtmlcss=1    "启用对dom,html,css高亮支持 javascript插件设置
let loaded_matchit = 1 "开启语法匹配插件

set t_Co=256 "cssColor

set tags=tags;
set autochdir
filetype on "taglist配置

map <F3> :tabprevious<CR>
map <F4> :tabnext<CR>
map nt   :NERDTree<CR>
map <F11> :w<CR>:!python %<CR>
map <F3> :MRU<CR><CR>

" 插入匹配括号
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT><CR><ESC>O<tab>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap < <><LEFT>
" 删除所有行未尾空格
nnoremap <F12> :%s/[ \t\r]\+$//g<cr>

set diffexpr=MyDiff()
function MyDiff()
    let opt = '-a --binary '
    if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
    if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
    let arg1 = v:fname_in
    if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
    let arg2 = v:fname_new
    if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
    let arg3 = v:fname_out
    if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
    let eq = ''
    if $VIMRUNTIME =~ ' '
        if &sh =~ '\<cmd'
            let cmd = '""' . $VIMRUNTIME . '\diff"'
            let eq = '"'
        else
            let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
        endif
    else
        let cmd = $VIMRUNTIME . '\diff'
    endif
    silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"80字符限制
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.*/ 
