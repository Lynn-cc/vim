" Vim color scheme
"
" Name:         ccmolakai.vim
" Maintainer:   Lynn Martin <babyliner1026@gmail.com>
" Last Change:  12 Sep 2012
" License:      public domain
" Version:      1.0
"
" 模仿Subline Text 2的配色

hi clear
if exists("syntax_on")
   syntax reset
endif

let g:colors_name = "ccmolakai"

"if has("gui_running")
    set background=dark
    highlight Normal guifg=#c0c0c0   guibg=#111111
    highlight Cursor guifg=Black   guibg=#c0c0c0

    highlight Comment guifg=#75715E
    highlight MatchParen guibg=#75715E

    highlight Constant guifg=#FFEE98
    highlight String guifg=#E6DB74
    highlight Character guifg=#E6DB74
    highlight Number guifg=#AE81FF
    highlight Float guifg=#E6DB74
    highlight Boolean guifg=#AE81FF

    highlight Identifier guifg=#66FF00 gui=NONE
    highlight Function guifg=#48E2FF gui=NONE

    highlight Statement guifg=#FF0962 gui=NONE
    highlight Keyword guifg=#A6E22E
    highlight Operator guifg=#A6E22E

    highlight PreProc guifg=#A6E22E gui=NONE
    highlight Include guifg=#F8F8F0 gui=NONE
    highlight Define guifg=#EF20B2

    highlight Type guifg=#00D1EA gui=NONE
    highlight StorageClass guifg=#FFD800 gui=NONE
    highlight structure guifg=#E6DB74 gui=NONE

    highlight Special guifg=#FD971F gui=NONE
    highlight Tag guifg=#75715E gui=NONE

    highlight! link Title Normal
    highlight Search guibg=#FFE792 guifg=#000000
    highlight Visual guifg=#000000 guibg=#389402
    highlight Pmenu guibg=#333333 guifg=#000000
    highlight PmenuSel guifg=#333333
"    highlight CursorLine guibg=#666633 "高亮当前行

    "垂直分割线
    highlight VertSplit guibg=#000000 guifg=#555555
"endif

