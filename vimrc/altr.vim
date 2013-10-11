call altr#define('app/models/%.rb', 'spec/models/%_spec.rb', 'spec/factories/%s.rb')
call altr#define('app/controllers/%.rb', 'spec/controllers/%_spec.rb')
call altr#define('app/helpers/%.rb', 'spec/helpers/%_spec.rb')
call altr#define('spec/routing/%_spec.rb', 'config/routes.rb')

call altr#define('%.rb', 'spec/%_spec.rb')

nmap <F4> <Plug>(altr-forward)
nmap <F5> <Plug>(altr-back)
