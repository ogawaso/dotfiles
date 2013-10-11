function! MagicComment()
  return "# -*- coding: utf-8 -*-\<CR>"
endfunction

inoreabbrev <buffer> ## <C-R>=MagicComment()<CR>

autocmd BufNewFile *.rb 0r ~/.vim/templates/rb.tpl

