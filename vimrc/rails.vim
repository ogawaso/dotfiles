nnoremap <Space>dm :<C-u>Rake db:migrate<CR>
nnoremap <Space>ds :<C-u>Rake db:seeds<CR>
nnoremap <Space>tc :<C-u>Rake db:test:clone_structure<CR>
nnoremap <Space>bo :<C-u>Bopen<CR>
nnoremap <Space>bi :<C-u>Bundle<CR>
nnoremap <Space>a :<C-u>!bundle exec annotate -i<CR>

" open config/routes.rb
nnoremap <Space>cr :<C-u>Einitializer<CR>


nnoremap <Space>rc :<C-u>Unite rails/controller<CR>
nnoremap <Space>rm :<C-u>Unite rails/model<CR>
nnoremap <Space>rv :<C-u>Unite rails/view<CR>
nnoremap <Space>rh :<C-u>Unite rails/helper<CR>
