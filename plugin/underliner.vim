" Wrapper that finds and runs a python script.

let s:plugin_root_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')

py3 << EOF
import sys
import vim
from os.path import normpath, join

plugin_root_dir = vim.eval('s:plugin_root_dir')
script_dir = normpath(join(plugin_root_dir, '..', 'py3'))
sys.path.insert(0, script_dir)

import underliner
EOF
