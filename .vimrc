" 文件编码
set fileencodings=ucs-bom,utf-8,gbk,cp936 ",gb18030,big5,latin1 "文件编码检查
set encoding=utf-8               "vim内部编码
set fileencoding=utf-8           "保存时,文件的编码格式
set termencoding=utf-8           "终端编码
language messages zh_CN.UTF-8    "提示信息中文

"source $VIMRUNTIME/vimrc_example.vim
set nocompatible                      " 关闭 vi 兼容模式
syntax on                             " 自动语法高亮
"filetype plugin indent on             " 开启插件
"filetype on                           " 自动检查文件类型

" 显示
colorscheme ccmolakai                 " 设定配色方案
set number                            " 显示行号
"set cursorline                       " 突出显示当前行
"set wrap                             " 设置折行
"set linebreak                        " 设置智能判断折行
"set ruler                             " 打开状态栏标尺
set guioptions-=T                     " 隐藏工具栏
set guioptions-=m                     " 隐藏菜单栏
"set list
"set listchars=tab:¦\ ,eol:¬           " 设置tab显示和末尾显示

" 缩进
set expandtab                         " 使用space代替tab.
"set smarttab                          " 根据文件中其他地方的缩进空格个数来确定一个 tab 是多少个空格
set smartindent                       " 开启新行时使用智能自动缩进
set shiftwidth=4                      " 每一级缩进是多少个空格
set softtabstop=4                     " 使得按退格键时可以一次删掉 4 个空格
set tabstop=4                         " 设定 tab 长度
set autoindent                        " Auto indent
set cindent                           " C-style indeting

" 文件和目录
set nobackup                          " 覆盖文件时不备份
set backupcopy=yes                    " 设置备份时的行为为覆盖
set autochdir                         " 自动切换当前目录为当前文件所在的目录

" 搜索
set ignorecase smartcase              " 搜索忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan                        " 禁止在搜索到文件两端时重新搜索
set incsearch                         " 输入搜索内容时就显示搜索结果
set hlsearch                          " 搜索时高亮显示被找到的文本

" 声音
set noerrorbells                      " 关闭错误信息响铃
set novisualbell                      " 关闭使用可视响铃代替呼叫
set t_vb=                             " 置空错误铃声的终端代码

" 折叠
"set foldenable                        " 开始折叠
"set foldmethod=indent                 " 设置语法折叠
"set foldcolumn=0                      " 设置折叠区域的宽度
"setlocal foldlevel=1                  " 设置折叠层数
"set completeopt=longest,menu          " 即时显示自动提示
set foldclose=all                      " 设置为自动关闭折叠

" 其他
"set showmatch                        " 插入括号时，短暂地跳转到匹配的对应括号
"set matchtime=2                      " 短暂跳转到匹配括号的时间
set magic                             " 开启：$.*^之外其他元字符都要加反斜杠；关闭：$^之外其他元字符都要加反斜杠。
"set hidden                           " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set backspace=indent,eol,start        " 不设定在插入状态无法用退格键和 Delete 键删除回车符
"set cmdheight=1                       " 设定命令行的行数为 1
set laststatus=2                      " 显示状态栏 (默认值为 1, 无法显示状态栏)


" mac and windows 区别设置
if (has("win32") || has("win64") || has("win32unix"))
    source $VIMRUNTIME/mswin.vim                         " 载入window配置
    set fileformat=dos
    set fileformats=dos
    set guifontwide=YouYuan:h11:cGB2312
    set guifont=Monaco:h11

    " 快捷载入vimrc
    nmap <leader>s <ESC>:source ~/.vimrc<CR>

    " 快捷打开.vimrc
    nmap <leader>z <ESC>:vnew ~/.vimrc<CR>

else
    set fileformat=unix
    set fileformats=unix
    set guifont=Monaco:h14

    " mac替换ESC
    " inoremap ` <ESC>

    " 快捷载入vimrc
    nmap <leader>s <ESC>:source ~/.vim/.vimrc<CR>

    " 快捷打开.vimrc
    nmap <leader>z <ESC>:vnew ~/.vim/.vimrc<CR>

    " 转换结尾字符
    map <leader>w :%s /\r\n/\r/g<cr>

endif

" 各种快捷键
" 删除行尾空白
map <leader>b :%s/[ \t\r]\+$//g<cr>
" 把文件内的tab转换成空格
nmap <leader>r :%retab!<CR>
" 高亮当前列
nmap <Leader>h :call SetColorColumn()<CR>
" IndentGuides
nmap <Leader>i :call indent_guides#toggle()<CR>
" NERDTree快捷键
map nt :NERDTree<CR>
" Mou打开
" nmap <leader>m :MouOpen<CR>
" 关闭语法检查
nmap <leader>d :SyntasticToggleMode<CR>

" 用空格键来开关折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" 上下左右方向键切换窗口
nmap <LEFT> <C-w>h
nmap <DOWN> <C-w>j
nmap <UP> <C-w>k
nmap <RIGHT> <C-w>l
" 插入匹配括号
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
"inoremap { {}<LEFT><CR><ESC>O
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap < <><LEFT>

" 各种设置, 自动运行
" 高亮行尾空白
highlight tailBlack ctermbg=red guibg=#555555
match tailBlack /\(\S\+\)\@<=[ \t\r]\+$/
" 高亮80字符限制
" highlight overLength ctermbg=red guibg=#792929
" 2match overLength /\(.\{80}\)\@<=.*\S\+/
" NERDTree设置窗口宽度
let g:NERDTreeWinSize=20
" IndentGuides
"let g:indent_guides_guide_size=1
"coffee配置
"let coffee_compile_vert = 1
"let coffee_watch_vert = 1

" 强制文件类型
"au BufRead,BufNewFile jquery.*.js jq.js set ft=jquery
"au BufRead,BufNewFile *.tpl set ft=html
"au BufRead,BufNewFile *.md set ft=markdown
au! BufRead,BufNewFile *.json set filetype=javascript

"保存文件时自动运行命令
"autocmd BufWritePre,FileWritePre

" coffee即时编译
"autocmd BufWritePost *.coffee silent make!
"vim-mou 插件配置
"let g:mou_dir = "/Applications/Mou.app"
" Syntastic 配置
let g:syntastic_javascript_jshint_args = '--config ~/.jshintrc'
let g:statline_syntastic = 1
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_check_on_open=1
let g:syntastic_stl_format = '[%E{ Err: %fe #%e}%B{ , }%W{ Warn: %fw #%w}]'

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:used_javascript_libs = 'angularjs,jquery'


" My bundles here:
set nocompatible              " be iMproved
filetype off                  " required!

if (has("win32") || has("win64") || has("win32unix"))
    set rtp+=~/vimfiles/bundle/Vundle.vim/
    let path='~/vimfiles/bundle'
    call vundle#begin(path)
else
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
endif

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

" vim-scripts repos
" utility
Plugin 'The-NERD-tree'
"Plugin 'jsbeautify'
"Plugin 'vim-mou'
"Plugin 'vim-coffee-script'
Plugin 'Emmet.vim'
"Plugin 'Indent-Guides'
"Plugin 'Colorizer--Brabandt'
Plugin 'mru.vim'
"Plugin 'surround.vim'
"Plugin 'VimIM'
"Plugin 'vimcdoc'
"Plugin 'listtag'
Plugin 'Lynn-cc/jsbeautify'
"Plugin 'Tagbar'
"Plugin 'pathogen.vim'
Plugin 'Syntastic'
"Plugin 'Conque-Shell'
"Plugin 'Command-T'
Plugin 'Lokaltog/vim-powerline'

"Dash
"Plugin 'rizzatti/funcoo.vim'
"Plugin 'rizzatti/dash.vim'

"indent and syntax
Plugin 'pangloss/vim-javascript'
"Plugin 'php.vim-html-enhanced'

"indent
"Plugin 'indentpython.vim'
Plugin 'Simple-Javascript-Indenter'
"Plugin 'jade.vim'
"Plugin 'JavaScript-Indent'
"Plugin 'html-improved-indentation'
"Plugin 'sh.vim'
Plugin 'indenthtml.vim'

"syntax
"Plugin 'Sass'
Plugin 'Markdown-syntax'
"Plugin 'jQuery'
"Plugin 'HTML5-Syntax-File'
"Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" 其他函数
" 高亮当前列函数
function! SetColorColumn()
    let col_num = virtcol(".")
    let cc_list = split(&cc, ',')
    if count(cc_list, string(col_num)) <= 0
        execute "set cc+=".col_num
    else
        execute "set cc-=".col_num
    endif
endfunction


if (has("win32") || has("win64") || has("win32unix"))
    set diffexpr=MyDiff()
    function! MyDiff()
        let opt = '-a --binary '
        if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
        if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
        let arg1 = v:fname_in
        if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
        let arg2 = v:fname_new
        if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
        let arg3 = v:fname_out
        if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
        if $VIMRUNTIME =~ ' '
            if &sh =~ '\<cmd'
                if empty(&shellxquote)
                    let l:shxq_sav = ''
                    set shellxquote&
                endif
                let cmd = '"' . $VIMRUNTIME . '\diff"'
            else
                let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
            endif
        else
            let cmd = $VIMRUNTIME . '\diff'
        endif
        silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
        if exists('l:shxq_sav')
            let &shellxquote=l:shxq_sav
        endif
    endfunction
endif
