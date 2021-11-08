function! myspacevim#before() abort
  let g:pydocstring_doq_path = "/opt/conda/bin/doq"
  let g:pydocstring_formatter = 'google'
  inoremap jk <esc>
  nnoremap ;w :w<CR>
  " let g:python3_host_prog = expand('/home/wangxianzhuo/work/tools/anaconda3/envs/open_mmlab_cu11/bin/python3')
endfunction
