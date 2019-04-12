" underliner.vim: Underline stuff.
"
" Maintainer: Dominic Gomez
" Version: 0.0.0
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if exists('g:loaded_underliner')
    finish
endif
let g:loaded_underliner = 1

" Find and run a python script.

let s:plugin_root_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" Begin Python script.
python3 << EOF

import os.path, sys, vim

plugin_root_dir = vim.eval('s:plugin_root_dir')
script_dir = os.path.normpath(os.path.join(plugin_root_dir, '..', 'python'))
sys.path.insert(0, script_dir)

import underliner

EOF
" End Python script.
