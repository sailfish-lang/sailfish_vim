" Language:     Sailfish
" Maintainer:   Rob Durst <me@robdurst.com>
" Last Change:  Mar 5, 2019

if exists("b:current_syntax")
    finish
endif

" define all the keywords
syntax keyword sailfishKeyword fun dec exp
syntax keyword sailfishKeyword return start
syntax keyword sailfishKeyword import over new
syntax keyword sailfishKeyword Cat Cfn

" define conditionals
syntax keyword sailfishConditional if else

" define the built-in function keywords
syntax keyword sailfishFunction display

" define types
syntax keyword sailfishType int str flt bool void

" define operations
syntax match sailfishOperation "\v\*"
syntax match sailfishOperation "\v/"
syntax match sailfishOperation "\v\+"
syntax match sailfishOperation "\v\-"
syntax match sailfishOperation "\v\%"
syntax match sailfishOperation "\v\*\*"
syntax match sailfishOperation "\v\=\="
syntax match sailfishOperation "\v\<\="
syntax match sailfishOperation "\v\>\="
syntax match sailfishOperation "\v\="
syntax match sailfishOperation "\v\<"
syntax match sailfishOperation "\v\>"
syntax keyword sailfishOperation and
syntax keyword sailfishOperation or

" define numbers
syntax match sailfishNumber "\v[0-9]*"

" define floats
syntax match sailfishFloat "\v[0-9]*\.[0-9]*"

" define booleans
syntax keyword sailfishBoolean true false

" define strings
syntax region sailfishString start=/\v"/ skip=/\v\\./ end=/\v"/

" link stuff to external syntax highlighting, allowing third party
" devs/authors to create their own schemes
highlight link sailfishKeyword Keyword
highlight link sailfishConditional Conditional
highlight link sialfishType Type
highlight link sailfishFunction Function
highlight link sailfishOperation Operator
highlight link sailfishNumber Number
highlight link sailfishFloat Float
highlight link sailfishBoolean Boolean
highlight link sailfishString String

let b:current_syntax = "sailfish"
