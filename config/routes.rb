Rails.application.routes.draw do
  resources :people
  resources :organizations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   root to: 'home#index', as: 'home_index'
  # login
  get '/login', to: 'auth#form_login', as: 'form_login'
  post '/login', to: 'auth#login', as: 'login_post'

  # logout
  delete '/logout/:id', to: 'auth#logout', as: 'user_logout'
end
