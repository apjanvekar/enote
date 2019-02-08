Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'admin/upload_note'
  post 'admin/create_enote'
  get 'admin/front_page'
  get 'admin/enote_index'
  get 'admin/buy_enote'
end
