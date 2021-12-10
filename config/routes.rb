Rails.application.routes.draw do
  resources :organizations do
  	resources :people
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   root to: 'organizations#index', as: 'organizations_index'
  # login
  get '/login', to: 'auth#form_login', as: 'form_login'
  post '/login', to: 'auth#login', as: 'login_post'

  get '/search', to: 'organizations#search', as: 'organizations_search'

  # logout
  delete '/logout/:id', to: 'auth#logout', as: 'user_logout'
end
