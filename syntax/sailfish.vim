" Language:     Sailfish
" Maintainer:   Rob Durst <me@robdurst.com>
" Last Change:  April 29, 2019

if exists("b:current_syntax")
    finish
endif

" define all the keywords
syntax keyword sailfishKeyword fun dec
syntax keyword sailfishKeyword return start
syntax keyword sailfishKeyword import new
syntax keyword sailfishKeyword Uat Ufn

" define conditionals
syntax keyword sailfishConditional Tree

" define the built-in function keywords
syntax keyword sailfishFunction deleteAtIndexStr deleteAtIndexInt deleteAtIndexFlt deleteAtIndexBool
syntax keyword sailfishFunction getAtIndexStr getAtIndexInt getAtIndexFlt getAtIndexBool
syntax keyword sailfishFunction setAtIndexStr setAtIndexInt setAtIndexFlt setAtIndexBool
syntax keyword sailfishFunction appendListStr appendListInt appendListFlt appendListBool
syntax keyword sailfishFunction printStr printInt printFlt printBool

" define primitives types
syntax keyword sailfishType int str flt bool void

" define primitive list types
syntax keyword sailfishType [int] [str] [flt] [bool]

" define -- a small subset :( of -- operations
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

" define comments
syntax match sailfishComment "\v#.*$"

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
highlight link sailfishComment Comment

let b:current_syntax = "sailfish"
