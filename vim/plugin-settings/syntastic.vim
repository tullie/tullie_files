" c++11 clang compiler
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
" Mark syntax errors with :signs
let g:syntastic_enable_signs=1
" Automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
" Show the error list automatically
let g:syntastic_auto_loc_list=0
" Don't care about warnings
let g:syntastic_quiet_messages = {'level': 'warnings'}
