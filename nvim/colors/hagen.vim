" Vim color file
" Maintainer:  Damien Gombault <desintegr@gmail.com>
" WWW:         http://desintegr.googlecode.com/svn/config/vim/colors/monokai.vim
" Last Change: 2008 Feb 27
" Version:     0.1.3

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "hagen"

highlight def link cCustomFunc Function

" Main highlight groups
hi Cursor       guibg=fg
hi Normal       guifg=#dadada 	guibg=#000000 	ctermfg=253 ctermbg=234
hi Directory    guifg=#66D9EF 	 		ctermfg=63			gui=none
hi DiffAdd      guifg=bg 	guibg=#A6E22E   	    ctermbg=40
hi DiffChange   guifg=bg 	guibg=#E6DB74	            ctermbg=64
hi DiffDelete   guifg=bg 	guibg=#F92672		    ctermbg=125
hi DiffText     guifg=bg 	guibg=#E6DB74               ctermbg=143
hi ErrorMsg     guifg=#ff0000 	guibg=bg 		    ctermbg=red 	gui=none    
hi VertSplit    guifg=#3B3A32 	guibg=bg 	ctermfg=16 			gui=none    
hi Folded       guifg=#75715E 	guibg=bg 	ctermfg=59			gui=none
hi FoldColumn   guifg=#75715E 	guibg=#3E3D32 	ctermfg=59  ctermbg=240		gui=none
hi SignColum    guifg=#75715E 	guibg=#3E3D32 	ctermfg=59  ctermbg=240		gui=none
hi IncSearch    guifg=bg 	guibg=#E6DB74 		    ctermbg=136 		gui=none
hi LineNr       guifg=#75715E 	guibg=#3E3D32 	ctermfg=blue ctermbg=240 		gui=none
hi ModeMsg      guifg=#A6E22E 			ctermfg=240 ctermbg=112		gui=none
hi MoreMsg      guifg=#66D9EF 			ctermfg=240			gui=none	
hi NonText      guifg=#3B3A32 			ctermfg=240			gui=none
hi Pmenu        guifg=fg 	guibg=#3E3D32   	   
hi PmenuSel     guifg=fg 	guibg=bg
hi PmenuSbar    guibg=bg
hi PmenuThumb   guifg=fg
hi Question     guifg=#A6E22E 	gui=none	ctermfg=112	
hi Search       guifg=bg 	guibg=#E6DB74 					gui=none
hi SpecialKey   guifg=#767676 	gui=none        ctermfg=244	
hi SpellBad     guisp=#F92672			
hi SpellCap     guisp=#65D9EF			ctermfg=75
"hi SpellLocal

hi SpellRare    guisp=#AE81FF
hi StatusLine   guifg=fg 	guibg=#3E3D32 gui=none
hi StatusLineNC guifg=#75715E 	guibg=#3E3D32 gui=none
hi TabLine      guifg=#75715E 	guibg=#3E3D32 gui=none
hi TabLineFill  guifg=fg 	guibg=#3E3D32 gui=none
hi TabLineSel   guifg=fg 	guibg=#3E3D32 gui=none
hi Title        guifg=#ff5f60 		      ctermfg=136			gui=none
hi Visual       guibg=#49483E 	gui=none		   ctermbg=240
"hi VisualNOS
hi WarningMsg   guifg=#F92672 	gui=none      ctermfg=yellow
"hi WildMenu

"hi Menu
"hi ScrollBar
"hi Tooltip


" Plugin specific highlight groups
hi MyTagListFileName guifg=#FD971F guibg=bg gui=none


" Color groups
hi Blue    guifg=#66D9EF gui=none	ctermfg=blue
hi Green   guifg=#A6E22E gui=none	ctermfg=green
hi Green1  guifg=#87af00 gui=none	ctermfg=46
hi Green2  guifg=#87df5f gui=none	ctermfg=42
hi Grey    guifg=#75715E gui=none	ctermfg=gray
hi Orange  guifg=#FD971F gui=none	ctermfg=172
hi Purple  guifg=#AE81FF gui=none	ctermfg=93
hi Red     guifg=#F92672 gui=none	ctermfg=red
hi White   guifg=#F8F8F2 gui=none	ctermfg=white
hi Yellow  guifg=#E6DB74 gui=none	ctermfg=yellow
hi Red2    guifg=#ff5f60 gui=none	ctermfg=red
hi Red3    guifg=#870000 gui=none	ctermfg=red
hi Orange1 guifg=#af0000 gui=none	ctermfg=214
hi Blue1   guifg=#00afff gui=none	ctermfg=21

hi BlueU   guifg=#66D9EF gui=underline

hi RedR    guifg=fg 	guibg=#F92672 gui=none
hi YellowR guifg=bg 	guibg=#FD971F gui=none


" Syntax highligh groups
hi Comment	ctermfg=darkcyan

"
hi! link Constant     Orange
hi! link String       Yellow
hi! link Character    Yellow
"hi  link Number       
"hi Boolean
"hi Float
"
hi! link Identifier   Green2
"hi  Function
"
hi! link Statement    Red2
"hi Conditional
"hi Repeat
"hi Label
hi! link Operator     Green
"hi Keyword
"hi Exception
"
hi! link PreProc      Orange
"hi Include
"hi Define
"hi Macro
"hi PreCondit
"
hi! link Type         Blue
hi! link StorageClass Red2
"hi Structure
"hi Typedef
"
hi! link Special      Orange 
"hi SpecialChar
hi! link Tag          Green
"hi Delimiter
"hi SpecialComment
"hi Debug
"
hi! link Underlined   BlueU
"hi Ignore
hi! link Error        RedR
hi! link Todo         YellowR

" Language specific highligh groups
" C
hi link cStatement              Green
" C++
hi link cppStatement            Green
" CSS
hi link cssBraces               White
hi link cssFontProp             White
hi link cssColorProp            White
hi link cssTextProp             White
hi link cssBoxProp              White
hi link cssRenderProp           White
hi link cssAuralProp            White
hi link cssRenderProp           White
hi link cssGeneratedContentProp White
hi link cssPagingProp           White
hi link cssTableProp            White
hi link cssUIProp               White
hi link cssFontDescriptorProp   White
" Java
hi link javaStatement           Green
" Ruby
hi link rubyClassVariable       White
hi link rubyControl             Green
hi link rubyGlobalVariable      White
hi link rubyInstanceVariable    White

