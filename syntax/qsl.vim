if exists("b:current_syntax")
  finish
endif

syn keyword qslConditionals = > < >= <= != contained

syn keyword qslType survey page end single multiple rank grid dyngrid grid-open grid-check contained

syn keyword qslKeywords order columns slots splitlabels unique
syn keyword qslKeywords offset input_width ranges
syn match qslTypeBlockAss /(\d)+/ contained
syn region qslTypeBlock start="{" end="}" fold transparent contains=qslType,qslKeywords,qslConditionals,qslTypeBlockAss,qslString

syn match qslQuestion /[a-zA-Z0-9-_]+/ contained
syn region qslQuestionBlock start="\[" end="\]" contains=qslQuestion,qslConditionals
syn region qslResponse start="<" end=">"

syn region qslHtml start="<<" end=">>"

syn region qslString start='"' end='"'

hi def link qslKeywords     Keyword
hi def link qslConditionals Conditional
hi def link qslTypeBlockAss Conditional
hi def link qslTypeBlock    Statement
hi def link qslType         Type
hi def link qslQuestionBlock     Constant
hi def link qslResponse     PreProc
hi def link qslHtml         Comment
hi def link qslString       Constant
hi def link qslTypeBlockAss       Constant


":syn keyword widgetType single
":syn keyword widgetType rank

":syn match questionNumber /^\[.*\]/ nextgroup=questionWidget skipwhite
":syn match questionWidget /{.*}/ nextgroup=questionComment skipwhite
":syn match questionComment /_.*_:/ skipwhite
":syn match answerNumber /^\s*<.*>/
":syn match answerNumber2 /^ \- \[.*\]/

"hi def questionNumber guifg=Red
"hi def questionWidget guifg=DarkYellow
"hi def questionComment guifg=LightBlue
"hi def answerNumber guifg=DarkGreen
"hi def answerNumber2 guifg=DarkGreen


