Rails.application.routes.draw do
 # get 'admins/index'

  get 'admins', to: 'admins#show'

  #root to: 'users#index'
  root to: 'visitors#index'
  devise_for :users




  devise_scope :user do
    get 'login', to: "devise/sessions#new", as: "login"
    get 'logout', to: "devise/sessions#destroy", as: "logout"
    get 'signout', to: "users/sessions#destroy", as: "signout"
    get 'signup', to: "users#new", as: "signup"
    get '/users/sign_out' => 'devise/sessions#destroy'
  end



  resources :users
  resources :admins
end
