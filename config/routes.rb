Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'admin/apps#index'

  namespace :admin do
  	resources :apps
  end
end
