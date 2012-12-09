" Text objects for a comment.
" Version: 0.2.0
" Author : thinca <thinca+vim@gmail.com>
" License: zlib License


if exists('g:loaded_textobj_comment')  "{{{1
  finish
endif
let g:loaded_textobj_comment = 1


let s:save_cpo = &cpo
set cpo&vim


" Interface  "{{{1
call textobj#user#plugin('comment', {
\      '-': {
\        '*sfile*': expand('<sfile>:p'),
\        'select-a': 'ac', '*select-a-function*': 'textobj#comment#select_a',
\        'select-i': 'ic', '*select-i-function*': 'textobj#comment#select_i',
\      }
\    })


let &cpo = s:save_cpo
unlet s:save_cpo
