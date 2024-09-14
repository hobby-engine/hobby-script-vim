if exists("b:current_syntax")
  finish
endif

syn keyword hbStatement   break continue return self
syn keyword hbStructure   const var
syn keyword hbModifier    static global
syn keyword hbLiteral     true false null
syn keyword hbOperator    is

syn keyword hbCond        if switch else case
syn keyword hbRepeat      while for loop

syn keyword hbStructure   fn struct enum

syn match   hbFunction    /\<\h\w*\ze\_s*(/
syn match   hbFunction    /\<\h\w*\ze\_s*<.*>(/

syn match   hbComment     /\/\/.*/

syn match   hbType        /[^a-z0-9][A-Z][A-z0-9_]*/hs=s+1

syn match   hbNumber      /\<\d\+\>/
syn match   hbNumber      /\<\d\+\.\d*/
syn match   hbOperator    /=|\+=|-=|\*=|\/=|%=|\*\*=|\+|-|\*\*|\*|\/|%|\<|\>|\<=|\>=|==|!=|\.\.|&&|\|\|/

syn region  hbString      start="\"" end="\"" contains=hbEscape
syn region  hbString      start="'"  end="'" contains=hbEscape

syn match   hbEscape      /\\[ntra"'\\]/

hi def link hbEscape      Special
hi def link hbStructure   Structure
hi def link hbFunction    Function 
hi def link hbStatement   Statement
hi def link hbLabel       Label
hi def link hbCond        Conditional
hi def link hbRepeat      Repeat
hi def link hbModifier    StorageClass
hi def link hbType        Type
hi def link hbString      String
hi def link hbOperator    Operator
hi def link hbNumber      Constant
hi def link hbLiteral     Constant
hi def link hbComment     Comment

let b:current_syntax = 'hb'
