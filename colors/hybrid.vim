" Copyright (c) 2011 Ethan Schoonover
" Copyright (c) 2009-2012 NanoTech
" Copyright (c) 2012 w0ng
"
" Permission is hereby granted, free of charge, to any per‐
" son obtaining a copy of this software and associated doc‐
" umentation files (the “Software”), to deal in the Soft‐
" ware without restriction, including without limitation
" the rights to use, copy, modify, merge, publish, distrib‐
" ute, sublicense, and/or sell copies of the Software, and
" to permit persons to whom the Software is furnished to do
" so, subject to the following conditions:
"
" The above copyright notice and this permission notice
" shall be included in all copies or substantial portions
" of the Software.
"
" THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY
" KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
" THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICU‐
" LAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
" DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CON‐
" TRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CON‐
" NECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.

if !has("gui_running") && &t_Co < 256
  finish
endif

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "hybrid"

" GUI Palettes:
" ----------------------------------------------------------------------------
let s:vmode      = "gui"
let s:background = "#222426"
let s:foreground = "#C1C3C2"
let s:selection  = "#3B3F44"
let s:line       = "#3B3F44"
let s:comment    = "#6C747B"
let s:red        = "#C36364"
let s:orange     = "#EA9A67"
let s:yellow     = "#E9BF77"
let s:green      = "#BFC674"
let s:aqua       = "#90C7C0"
let s:blue       = "#7FA1BB"
let s:purple     = "#AF92B7"

let s:window     = "#303030"
let s:darkcolumn = "#1c1c1c"
let s:addbg      = "#5F875F"
let s:addfg      = "#d7ffaf"
let s:changebg   = "#5F5F87"
let s:changefg   = "#d7d7ff"
let s:darkblue   = "#00005f"
let s:darkcyan   = "#005f5f"
let s:darkred    = "#5f0000"
let s:darkpurple = "#5f005f"

" let s:vmode      = "cterm"
" let s:background = "234"
" let s:window     = "236"
" let s:darkcolumn = "234"
" let s:addbg      = "65"
" let s:addfg      = "193"
" let s:changebg   = "60"
" let s:changefg   = "189"
" let s:darkblue   = "17"
" let s:darkcyan   = "24"
" let s:darkred    = "52"
" let s:darkpurple = "53"

" let s:background = "NONE"
" let s:foreground = "7"
" let s:selection  = "0"
" let s:line       = "0"
" let s:comment    = "15"
" let s:red        = "1"
" let s:orange     = "11"
" let s:yellow     = "3"
" let s:green      = "2"
" let s:aqua       = "6"
" let s:blue       = "4"
" let s:purple     = "5"

" Formatting Options:
" ----------------------------------------------------------------------------
let s:none   = "NONE"
let s:t_none = "NONE"
let s:n      = "NONE"
let s:c      = ",undercurl"
let s:r      = ",reverse"
let s:s      = ",standout"
let s:b      = ",bold"
let s:u      = ",underline"
let s:i      = ",italic"

" Highlighting Primitives:
" ----------------------------------------------------------------------------
exe "let s:bg_none       = ' ".s:vmode."bg=".s:none      ."'"
exe "let s:bg_foreground = ' ".s:vmode."bg=".s:foreground."'"
exe "let s:bg_background = ' ".s:vmode."bg=".s:background."'"
exe "let s:bg_selection  = ' ".s:vmode."bg=".s:selection ."'"
exe "let s:bg_line       = ' ".s:vmode."bg=".s:line      ."'"
exe "let s:bg_comment    = ' ".s:vmode."bg=".s:comment   ."'"
exe "let s:bg_red        = ' ".s:vmode."bg=".s:red       ."'"
exe "let s:bg_orange     = ' ".s:vmode."bg=".s:orange    ."'"
exe "let s:bg_yellow     = ' ".s:vmode."bg=".s:yellow    ."'"
exe "let s:bg_green      = ' ".s:vmode."bg=".s:green     ."'"
exe "let s:bg_aqua       = ' ".s:vmode."bg=".s:aqua      ."'"
exe "let s:bg_blue       = ' ".s:vmode."bg=".s:blue      ."'"
exe "let s:bg_purple     = ' ".s:vmode."bg=".s:purple    ."'"
exe "let s:bg_window     = ' ".s:vmode."bg=".s:window    ."'"
exe "let s:bg_darkcolumn = ' ".s:vmode."bg=".s:darkcolumn."'"
exe "let s:bg_addbg      = ' ".s:vmode."bg=".s:addbg     ."'"
exe "let s:bg_addfg      = ' ".s:vmode."bg=".s:addfg     ."'"
exe "let s:bg_changebg   = ' ".s:vmode."bg=".s:changebg  ."'"
exe "let s:bg_changefg   = ' ".s:vmode."bg=".s:changefg  ."'"
exe "let s:bg_darkblue   = ' ".s:vmode."bg=".s:darkblue  ."'"
exe "let s:bg_darkcyan   = ' ".s:vmode."bg=".s:darkcyan  ."'"
exe "let s:bg_darkred    = ' ".s:vmode."bg=".s:darkred   ."'"
exe "let s:bg_darkpurple = ' ".s:vmode."bg=".s:darkpurple."'"

exe "let s:fg_none       = ' ".s:vmode."fg=".s:none      ."'"
exe "let s:fg_foreground = ' ".s:vmode."fg=".s:foreground."'"
exe "let s:fg_background = ' ".s:vmode."fg=".s:background."'"
exe "let s:fg_selection  = ' ".s:vmode."fg=".s:selection ."'"
exe "let s:fg_line       = ' ".s:vmode."fg=".s:line      ."'"
exe "let s:fg_comment    = ' ".s:vmode."fg=".s:comment   ."'"
exe "let s:fg_red        = ' ".s:vmode."fg=".s:red       ."'"
exe "let s:fg_orange     = ' ".s:vmode."fg=".s:orange    ."'"
exe "let s:fg_yellow     = ' ".s:vmode."fg=".s:yellow    ."'"
exe "let s:fg_green      = ' ".s:vmode."fg=".s:green     ."'"
exe "let s:fg_aqua       = ' ".s:vmode."fg=".s:aqua      ."'"
exe "let s:fg_blue       = ' ".s:vmode."fg=".s:blue      ."'"
exe "let s:fg_purple     = ' ".s:vmode."fg=".s:purple    ."'"
exe "let s:fg_window     = ' ".s:vmode."fg=".s:window    ."'"
exe "let s:fg_darkcolumn = ' ".s:vmode."fg=".s:darkcolumn."'"
exe "let s:fg_addbg      = ' ".s:vmode."fg=".s:addbg     ."'"
exe "let s:fg_addfg      = ' ".s:vmode."fg=".s:addfg     ."'"
exe "let s:fg_changebg   = ' ".s:vmode."fg=".s:changebg  ."'"
exe "let s:fg_changefg   = ' ".s:vmode."fg=".s:changefg  ."'"
exe "let s:fg_darkblue   = ' ".s:vmode."fg=".s:darkblue  ."'"
exe "let s:fg_darkcyan   = ' ".s:vmode."fg=".s:darkcyan  ."'"
exe "let s:fg_darkred    = ' ".s:vmode."fg=".s:darkred   ."'"
exe "let s:fg_darkpurple = ' ".s:vmode."fg=".s:darkpurple."'"

exe "let s:fmt_none      = ' ".s:vmode."=NONE".          " term=NONE"        ."'"
exe "let s:fmt_bold      = ' ".s:vmode."=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_bldi      = ' ".s:vmode."=NONE".s:b.      " term=NONE".s:b    ."'"
exe "let s:fmt_undr      = ' ".s:vmode."=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_undb      = ' ".s:vmode."=NONE".s:u.s:b.  " term=NONE".s:u.s:b."'"
exe "let s:fmt_undi      = ' ".s:vmode."=NONE".s:u.      " term=NONE".s:u    ."'"
exe "let s:fmt_curl      = ' ".s:vmode."=NONE".s:c.      " term=NONE".s:c    ."'"
exe "let s:fmt_ital      = ' ".s:vmode."=NONE".s:i.      " term=NONE".s:i    ."'"
exe "let s:fmt_stnd      = ' ".s:vmode."=NONE".s:s.      " term=NONE".s:s    ."'"
exe "let s:fmt_revr      = ' ".s:vmode."=NONE".s:r.      " term=NONE".s:r    ."'"
exe "let s:fmt_revb      = ' ".s:vmode."=NONE".s:r.s:b.  " term=NONE".s:r.s:b."'"

" Vim Highlighting: (see :help highlight-groups)
" ----------------------------------------------------------------------------
exe "hi! ColorColumn"   .s:fg_none        .s:bg_line        .s:fmt_none
"		Conceal"
"		Cursor"
"		CursorIM"
exe "hi! CursorColumn"  .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! CursorLine"    .s:fg_none        .s:bg_line        .s:fmt_none
exe "hi! Directory"     .s:fg_blue        .s:bg_none        .s:fmt_none
exe "hi! DiffAdd"       .s:fg_addfg       .s:bg_addbg       .s:fmt_none
exe "hi! DiffChange"    .s:fg_changefg    .s:bg_changebg    .s:fmt_none
exe "hi! DiffDelete"    .s:fg_background  .s:bg_red         .s:fmt_none
exe "hi! DiffText"      .s:fg_background  .s:bg_blue        .s:fmt_none
exe "hi! ErrorMsg"      .s:fg_background  .s:bg_red         .s:fmt_stnd
exe "hi! VertSplit"     .s:fg_window      .s:bg_none        .s:fmt_none
exe "hi! WinSeparator"  .s:fg_window      .s:bg_none        .s:fmt_none
exe "hi! Folded"        .s:fg_comment     .s:bg_darkcolumn  .s:fmt_none
exe "hi! FoldColumn"    .s:fg_none        .s:bg_darkcolumn  .s:fmt_none
exe "hi! SignColumn"    .s:fg_none        .s:bg_darkcolumn  .s:fmt_none
"		Incsearch"
exe "hi! LineNr"        .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! CursorLineNr"  .s:fg_yellow      .s:bg_none        .s:fmt_bold
exe "hi! MatchParen"    .s:fg_background  .s:bg_changebg    .s:fmt_none
exe "hi! ModeMsg"       .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! MoreMsg"       .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! NonText"       .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! Pmenu"         .s:fg_foreground  .s:bg_selection   .s:fmt_none
exe "hi! PmenuSel"      .s:fg_foreground  .s:bg_selection   .s:fmt_revr
"		PmenuSbar"
"		PmenuThumb"
exe "hi! Question"      .s:fg_green       .s:bg_none        .s:fmt_none
exe "hi! Search"        .s:fg_background  .s:bg_yellow      .s:fmt_none
exe "hi! SpecialKey"    .s:fg_selection   .s:bg_none        .s:fmt_none
exe "hi! SpellCap"      .s:fg_blue        .s:bg_darkblue    .s:fmt_undr
exe "hi! SpellLocal"    .s:fg_aqua        .s:bg_darkcyan    .s:fmt_undr
exe "hi! SpellBad"      .s:fg_red         .s:bg_darkred     .s:fmt_undr
exe "hi! SpellRare"     .s:fg_purple      .s:bg_darkpurple  .s:fmt_undr
exe "hi! StatusLine"    .s:fg_comment     .s:bg_background  .s:fmt_revr
exe "hi! StatusLineNC"  .s:fg_window      .s:bg_comment     .s:fmt_revr
exe "hi! TabLine"       .s:fg_foreground  .s:bg_darkcolumn  .s:fmt_revr
"		TabLineFill"
"		TabLineSel"
exe "hi! Title"         .s:fg_yellow      .s:bg_none        .s:fmt_none
exe "hi! Visual"        .s:fg_none        .s:bg_selection   .s:fmt_none
"		VisualNos"
exe "hi! WarningMsg"    .s:fg_red         .s:bg_none        .s:fmt_none
"		WildMenu"

exe "hi! Normal"        .s:fg_foreground  .s:bg_background  .s:fmt_none

" Generic Syntax Highlighting: (see :help group-name)
" ----------------------------------------------------------------------------
exe "hi! Comment"         .s:fg_comment     .s:bg_none        .s:fmt_none

exe "hi! Constant"        .s:fg_red         .s:bg_none        .s:fmt_none
exe "hi! String"          .s:fg_green       .s:bg_none        .s:fmt_none
"		Character"
"		Number"
"		Boolean"
"		Float"

exe "hi! Identifier"      .s:fg_purple      .s:bg_none        .s:fmt_none
exe "hi! Function"        .s:fg_yellow      .s:bg_none        .s:fmt_none

exe "hi! Statement"       .s:fg_blue        .s:bg_none        .s:fmt_none
"		Conditional"
"		Repeat"
"		Label"
exe "hi! Operator"        .s:fg_aqua        .s:bg_none        .s:fmt_none
"		Keyword"
"		Exception"

exe "hi! PreProc"         .s:fg_aqua        .s:bg_none        .s:fmt_none
"		Include"
"		Define"
"		Macro"
"		PreCondit"

exe "hi! Type"            .s:fg_orange      .s:bg_none        .s:fmt_none
"		StorageClass"
exe "hi! Structure"       .s:fg_aqua        .s:bg_none        .s:fmt_none
"		Typedef"

exe "hi! Special"         .s:fg_green       .s:bg_none        .s:fmt_none
"		SpecialChar"
"		Tag"
"		Delimiter"
"		SpecialComment"
"		Debug"
"
exe "hi! Underlined"      .s:fg_blue        .s:bg_none        .s:fmt_none

exe "hi! Ignore"          .s:fg_none        .s:bg_none        .s:fmt_none

exe "hi! Error"           .s:fg_red         .s:bg_darkred     .s:fmt_undr

exe "hi! Todo"            .s:fg_addfg       .s:bg_none        .s:fmt_none

" Quickfix window highlighting
exe "hi! qfLineNr"        .s:fg_yellow      .s:bg_none        .s:fmt_none
"   qfFileName"
"   qfLineNr"
"   qfError"

" Diff Syntax Highlighting:
" ----------------------------------------------------------------------------
" Diff
"		diffOldFile
"		diffNewFile
"		diffFile
"		diffOnly
"		diffIdentical
"		diffDiffer
"		diffBDiffer
"		diffIsA
"		diffNoEOL
"		diffCommon
hi! link diffRemoved Constant
"		diffChanged
hi! link diffAdded Special
"		diffLine
"		diffSubname
"		diffComment
