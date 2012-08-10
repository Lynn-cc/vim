" Vim color scheme
"
" Name:         vibrantink.vim
" Maintainer:   Jo Vermeulen <jo.vermeulen@gmail.com> 
" Last Change:  30 Jul 2007 
" License:      public domain
" Version:      1.2
"
" This scheme should work in the GUI and in xterm's 256 color mode. It won't
" work in 8/16 color terminals.
"
" I based it on John Lam's initial VibrantInk port to Vim [1]. Thanks to a
" great tutorial [2], I was able to convert it to xterm 256 color mode. And
" of course, credits go to Justin Palmer for creating the original VibrantInk
" TextMate color scheme [3].
"
" [1] http://www.iunknown.com/articles/2006/09/04/vim-can-save-your-hands-too
" [2] http://frexx.de/xterm-256-notes/
" [3] http://encytemedia.com/blog/articles/2006/01/03/textmate-vibrant-ink-theme-and-prototype-bundle

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let g:colors_name = "vibrantink"

if has("gui_running")

    highlight Normal guifg=White   guibg=Black
    highlight Cursor guifg=Black   guibg=White

    highlight Comment guifg=#75715E

    highlight Constant guifg=#66FF00
    highlight String guifg=#ffd800
    highlight Character guifg=#AE81FF
    highlight Number guifg=#AE81FF
    highlight Float guifg=#66FF00
    highlight Boolean guifg=#66FF00

    highlight Identifier guifg=#66ff00 gui=NONE
    highlight Function guifg=#66D9EF gui=NONE

    highlight Statement guifg=#ff0962 gui=NONE
    highlight Keyword guifg=#ff0962
    highlight Operator guifg=#ff0962

    highlight PreProc guifg=#AE81FF gui=NONE
    highlight Include guifg=#AE81FF gui=NONE
    highlight Define guifg=#ff0962

    highlight Type guifg=#48e2ff gui=NONE
    highlight StorageClass guifg=#A6E22E gui=NONE
    highlight structure guifg=#66D9EF gui=NONE

    highlight Special guifg=#AAAAAA gui=NONE
    highlight Tag guifg=#F92672 gui=NONE

    highlight rubySymbol guifg=#339999 gui=NONE
    highlight rubyStringDelimiter guifg=#66FF00
    highlight rubyInterpolation guifg=White
    highlight rubyPseudoVariable guifg=#339999
    highlight Constant guifg=#FFEE98
    highlight Search guibg=#bbbbbb guifg=#004e57
"    highlight CursorLine guibg=#666633
else
    set t_Co=256
    highlight Normal ctermfg=White ctermbg=Black 
    highlight Cursor ctermfg=Black ctermbg=Yellow 
    highlight Keyword ctermfg=202 
    highlight Define ctermfg=202 
    highlight Comment ctermfg=98
    highlight Type ctermfg=White 
    highlight rubySymbol ctermfg=66 
    highlight Identifier ctermfg=White 
    highlight rubyStringDelimiter ctermfg=82 
    highlight rubyInterpolation ctermfg=White 
    highlight rubyPseudoVariable ctermfg=66 
    highlight Constant ctermfg=228 
    highlight Function ctermfg=220 
    highlight Include ctermfg=220 
    highlight Statement ctermfg=202
    highlight String ctermfg=82 
    highlight Search ctermbg=White 
    highlight CursorLine cterm=NONE ctermbg=235
endif
