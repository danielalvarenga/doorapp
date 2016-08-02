Rails.application.routes.draw do
  namespace :admin do
    get 'token/create'
  end

  namespace :admin do
    get 'token/update'
  end

  namespace :admin do
    get 'token/delete'
  end

  namespace :api do
    namespace :v1 do
      get 'logged_user/show'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'admin/apps#index'

  namespace :admin do
    resources :apps, except: [:show]
    resources :users, except: [:show]
  end
end
