" Vim color file - custom
" Generated by http://bytefluent.com/vivify 2015-11-17
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "custom"

"hi IncSearch -- no settings --
"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi DiffText -- no settings --
"hi ErrorMsg -- no settings --
"hi Ignore -- no settings --
hi Normal guifg=#639cff guibg=#000000 guisp=#000000 gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE
"hi CTagsImport -- no settings --
"hi Search -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi TabLineSel -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi Question -- no settings --
"hi WarningMsg -- no settings --
"hi VisualNOS -- no settings --
"hi DiffDelete -- no settings --
"hi ModeMsg -- no settings --
"hi CursorColumn -- no settings --
"hi FoldColumn -- no settings --
"hi EnumerationName -- no settings --
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
"hi DiffChange -- no settings --
"hi SpellLocal -- no settings --
"hi Error -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi DiffAdd -- no settings --
"hi TabLine -- no settings --
"hi clear -- no settings --
hi SpecialComment guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi Typedef guifg=#60ff60 guibg=NONE guisp=NONE gui=bold ctermfg=83 ctermbg=NONE cterm=bold
hi Title guifg=#cd5c5c guibg=NONE guisp=NONE gui=bold ctermfg=167 ctermbg=NONE cterm=bold
hi Folded guifg=#e8dc00 guibg=#000000 guisp=#000000 gui=NONE ctermfg=184 ctermbg=NONE cterm=NONE
hi PreCondit guifg=#00ff6f guibg=NONE guisp=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
hi Include guifg=#00ff6f guibg=NONE guisp=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
hi Float guifg=#ff00ff guibg=NONE guisp=NONE gui=NONE ctermfg=201 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#7777777 guibg=#8a8a8a guisp=#8a8a8a gui=NONE ctermfg=196 ctermbg=245 cterm=NONE
hi NonText guifg=#0000ff guibg=#000000 guisp=#000000 gui=NONE ctermfg=21 ctermbg=NONE cterm=NONE
hi Debug guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi Identifier guifg=#ccffcc guibg=NONE guisp=NONE gui=NONE ctermfg=194 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi Conditional guifg=#60ff60 guibg=NONE guisp=NONE gui=bold ctermfg=83 ctermbg=NONE cterm=bold
hi StorageClass guifg=#60ff60 guibg=NONE guisp=NONE gui=bold ctermfg=83 ctermbg=NONE cterm=bold
hi Todo guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi Special guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi LineNr guifg=#adadad guibg=NONE guisp=NONE gui=NONE ctermfg=145 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#000000 guibg=#c2bfa5 guisp=#c2bfa5 gui=NONE ctermfg=NONE ctermbg=187 cterm=NONE
hi Label guifg=#60ff60 guibg=NONE guisp=NONE gui=bold ctermfg=83 ctermbg=NONE cterm=bold
hi PMenuSel guifg=#000000 guibg=#c2bfa5 guisp=#c2bfa5 gui=NONE ctermfg=NONE ctermbg=187 cterm=NONE
hi Delimiter guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi Statement guifg=#ff007b guibg=NONE guisp=NONE gui=NONE ctermfg=198 ctermbg=NONE cterm=NONE
hi Comment guifg=#bdbdbd guibg=NONE guisp=NONE gui=NONE ctermfg=250 ctermbg=NONE cterm=NONE
hi Character guifg=#00eeff guibg=NONE guisp=NONE gui=NONE ctermfg=14 ctermbg=NONE cterm=NONE
hi Number guifg=#ff00ff guibg=NONE guisp=NONE gui=NONE ctermfg=201 ctermbg=NONE cterm=NONE
hi Boolean guifg=#c25454 guibg=NONE guisp=NONE gui=bold ctermfg=167 ctermbg=NONE cterm=bold
hi Operator guifg=#3dff3d guibg=NONE guisp=NONE gui=NONE ctermfg=83 ctermbg=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#404040 guisp=#404040 gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
hi Define guifg=#00ff6f guibg=NONE guisp=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
hi Function guifg=#00ff11 guibg=NONE guisp=NONE gui=NONE ctermfg=10 ctermbg=NONE cterm=NONE
hi PreProc guifg=#00ff6f guibg=NONE guisp=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
hi Visual guifg=#ffffff guibg=#2e2e2e guisp=#2e2e2e gui=NONE ctermfg=15 ctermbg=236 cterm=NONE
hi VertSplit guifg=#707070 guibg=#000000 guisp=#000000 gui=NONE ctermfg=242 ctermbg=NONE cterm=NONE
hi Exception guifg=#60ff60 guibg=NONE guisp=NONE gui=bold ctermfg=83 ctermbg=NONE cterm=bold
hi Keyword guifg=#60ff60 guibg=NONE guisp=NONE gui=bold ctermfg=83 ctermbg=NONE cterm=bold
hi Type guifg=#60ff60 guibg=NONE guisp=NONE gui=NONE ctermfg=83 ctermbg=NONE cterm=NONE
hi Cursor guifg=#708090 guibg=#f0e68c guisp=#f0e68c gui=NONE ctermfg=60 ctermbg=228 cterm=NONE
hi PMenu guifg=#008dd4 guibg=#c2bfa5 guisp=#c2bfa5 gui=NONE ctermfg=32 ctermbg=187 cterm=NONE
hi SpecialKey guifg=#9acd32 guibg=NONE guisp=NONE gui=NONE ctermfg=149 ctermbg=NONE cterm=NONE
hi Constant guifg=#00eeff guibg=NONE guisp=NONE gui=NONE ctermfg=14 ctermbg=NONE cterm=NONE
hi Tag guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi String guifg=#eeff00 guibg=NONE guisp=NONE gui=NONE ctermfg=11 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=#b36200 guibg=#ffee22 guisp=#ffee22 gui=NONE ctermfg=130 ctermbg=11 cterm=NONE
hi MatchParen guifg=#ccffcc guibg=#008b8b guisp=#008b8b gui=NONE ctermfg=194 ctermbg=30 cterm=NONE
hi Repeat guifg=#60ff60 guibg=NONE guisp=NONE gui=bold ctermfg=83 ctermbg=NONE cterm=bold
hi Directory guifg=#008b8b guibg=NONE guisp=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
hi Structure guifg=#60ff60 guibg=NONE guisp=NONE gui=bold ctermfg=83 ctermbg=NONE cterm=bold
hi Macro guifg=#00ff6f guibg=NONE guisp=NONE gui=NONE ctermfg=47 ctermbg=NONE cterm=NONE
hi Underlined guifg=#00ffff guibg=NONE guisp=NONE gui=underline ctermfg=14 ctermbg=NONE cterm=underline
hi colorcolumn guifg=#ffffff guibg=#cc4040 guisp=#cc4040 gui=NONE ctermfg=15 ctermbg=167 cterm=NONE
