" VimScript Syntax Highlighting for MOOS Behavior Files
" Lots of help from the Emacs template and Vim wiki

if exists("b:current_syntax")
  finish
endif

" Syntax Declerations "

" Comments & TODOs
syn keyword bothTodo contained TODO FIXME
syn match bothComment "\/\/.*$" contains=bhvTodo

" Keywords
syn keyword moosGenericKeywords AppTick CommsTick Community ProcessConfig ServerHost ServerPort LatOrigin LongOrigin MOOSTimeWarp MaxAppTick IterateMode
syn keyword bhvGenericKeywords initialize set name pwt duration duration_idle_decay duration_status duration_reset condition updates perpetual endflag runflag idleflag activeflag inactiveflag templating nostarve post_mapping priority
syn keyword bothBoolean true false
syn keyword directives #include

" Regions
syn region bothBlock start="{" end="}" fold transparent

" Numbers
syntax match bothNumber "\v<\d+>"
syntax match bothNumber "\v<\d+\.\d+>" " Numbers with Decimals

" Syntax Highlighting "
" Comments & TODOs
highlight default link bothTodo Todo
highlight default link bothComment Comment

" Keywords
highlight default link moosGenericKeywords Keyword
highlight default link bhvGenericKeywords Keyword
highlight default link bothBoolean Boolean

" Regions
highlight default link bothBlock Statement

" Numbers
highlight default link bothNumber Number
