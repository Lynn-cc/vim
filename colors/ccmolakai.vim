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

if has("gui_running")
    set background=dark
    highlight Normal guifg=#c0c0c0   guibg=#111111
    highlight Cursor guifg=Black   guibg=#c0c0c0

    highlight Comment guifg=#75715E
    highlight MatchParen guibg=#75715E

    highlight Constant guifg=#FFEE98
    highlight String guifg=#E6DB74
    highlight Character guifg=#E6DB74
    highlight Number guifg=#C68B34
    highlight Float guifg=#C68B34
    highlight Boolean guifg=#C68B34

    highlight Identifier guifg=#FF5932 gui=NONE
    highlight Function guifg=#AE51FF gui=NONE
    highlight Label guifg=#BE81FF gui=NONE

    highlight Statement guifg=#FF0962 gui=NONE
    highlight Keyword guifg=#A6E22E
    highlight Operator guifg=#A6E22E

    highlight PreProc guifg=#A6E22E gui=NONE
    highlight Include guifg=#B8A8C0 gui=NONE
    highlight Define guifg=#EF40B2

    highlight Type guifg=#48C2FF gui=NONE
    highlight StorageClass guifg=#FFD800 gui=NONE
    highlight structure guifg=#E6DB74 gui=NONE

    highlight Special guifg=#FD971F gui=NONE
    highlight Tag guifg=#75715E gui=NONE

    "highlight! link Title Normal
    highlight Search guibg=#FFE792 guifg=#000000
    highlight Visual guifg=#000000 guibg=#389402
    highlight Pmenu guibg=#333333 guifg=#000000
    highlight PmenuSel guifg=#333333
    "highlight CursorLine guibg=#666633 "高亮当前行
    
    highlight Noise guifg=#666666

    "垂直分割线
    highlight VertSplit guibg=#000000 guifg=#555555
endif

if &t_Co > 255
    hi Boolean         ctermfg=135
    hi Character       ctermfg=144
    hi Number          ctermfg=135
    hi String          ctermfg=144
    hi Conditional     ctermfg=161               cterm=bold
    hi Constant        ctermfg=135               cterm=bold
    hi Cursor          ctermfg=16  ctermbg=253
    hi Debug           ctermfg=225               cterm=bold
    hi Define          ctermfg=81
    hi Delimiter       ctermfg=241

    hi Directory       ctermfg=118               cterm=bold
    hi Error           ctermfg=219 ctermbg=89
    hi Float           ctermfg=135
    hi FoldColumn      ctermfg=67  ctermbg=16
    hi Folded          ctermfg=67  ctermbg=16
    hi Function        ctermfg=118
    hi Identifier      ctermfg=208
    hi Ignore          ctermfg=244 ctermbg=232
    hi IncSearch       ctermfg=193 ctermbg=16

    hi Keyword         ctermfg=161               cterm=bold
    hi Label           ctermfg=229               cterm=none
    hi Macro           ctermfg=193
    hi SpecialKey      ctermfg=81

    hi MatchParen      ctermfg=16  ctermbg=208   cterm=bold
    hi ModeMsg         ctermfg=229
    hi MoreMsg         ctermfg=229
    hi Operator        ctermfg=161

    "complete menu
    hi Pmenu ctermfg=81 ctermbg=16
    hi PmenuSel ctermbg=244
    hi PmenuSbar ctermbg=232
    hi PmenuThumb ctermfg=81
    hi Search ctermfg=253 ctermbg=66

    hi Statement ctermfg=161 cterm=bold
    hi StatusLine ctermfg=238 ctermbg=253
    hi StatusLineNC ctermfg=244 ctermbg=232
    hi StorageClass ctermfg=208
    hi Structure ctermfg=81
    hi Tag ctermfg=161
    hi Title ctermfg=166
    hi Todo ctermfg=231 ctermbg=232 cterm=bold

    hi Typedef ctermfg=81
    hi Type ctermfg=81 cterm=none
    hi Underlined ctermfg=244 cterm=underline

    hi VertSplit ctermfg=244 ctermbg=232 cterm=bold
    hi Visual ctermbg=235
    hi WarningMsg ctermfg=231 ctermbg=238 cterm=bold

    hi Normal ctermfg=252 ctermbg=233
    hi Comment ctermfg=59
end
