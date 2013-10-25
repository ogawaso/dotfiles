map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_command = "Dispatch bundle exec rspec {spec}"

let g:quickrun_config = {}
let g:quickrun_config._ = {
  \  'runner' : 'vimproc',
  \  'runner/vimproc/updatetime' : 10,
  \  'hook/inu/enable' : 1,
  \  'hook/close_buffer/enable_failure' : 1,
  \  'hook/close_buffer/enable_empty_data' : 1,
  \  'hook/close_quickfix/enable_exit' : 1,
  \  'hook/unite_quickfix/enable_failure' : 1,
  \  'hook/close_unite_quickfix/enable_hook_loaded' : 1,
  \  'outputter' : 'multi:buffer:quickfix',
  \  'outputter/buffer/split' : 'botright 10sp'
  \}
let g:quickrun_config['ruby.rspec'] = {
  \  'command': 'rspec',
  \  'exec': 'bundle exec rspec %s'
  \ }

function! RspecQuickrun()
  let b:quickrun_config = {'type' : 'ruby.rspec'}
endfunction

augroup RunRspec
  autocmd!
  autocmd BufReadPost *_spec.rb call RspecQuickrun()
augroup END
