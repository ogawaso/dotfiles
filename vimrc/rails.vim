au FileType ruby nnoremap <Space>dm :<C-u>Rake db:migrate<CR>
au FileType ruby nnoremap <Space>ds :<C-u>Rake db:seeds<CR>
au FileType ruby nnoremap <Space>tc :<C-u>Rake db:test:clone_structure<CR>
au FileType ruby nnoremap <Space>bo :<C-u>Bopen<CR>
au FileType ruby nnoremap <Space>bi :<C-u>Bundle<CR>
au FileType ruby nnoremap <Space>a :<C-u>!bundle exec annotate -i<CR>

" open config/routes.rb
au FileType ruby nnoremap <Space>cr :<C-u>Einitializer<CR>


au FileType ruby nnoremap <Space>rc :<C-u>Unite rails/controller<CR>
au FileType ruby nnoremap <Space>rm :<C-u>Unite rails/model<CR>
au FileType ruby nnoremap <Space>rv :<C-u>Unite rails/view<CR>
au FileType ruby nnoremap <Space>rh :<C-u>Unite rails/helper<CR>
