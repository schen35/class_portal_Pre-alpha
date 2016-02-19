Rails.application.routes.draw do

#  get 'superadmins/index'
 # get 'superadmins/show'
 # get 'superadmins/new'

 # get 'superadmins/edit'
 # get 'admins/index'
#  get 'admins', to: 'admins#show'
 # get 'instructors/index'

 # get 'instructors/show'

 # get 'admins/index'

 # get 'admins', to: 'admins#show'


  #root to: 'users#index'
  root to: 'visitors#index'
  devise_for :users, :path =>'u'
  get '/superadmins/:id' => 'users#destroy'





  devise_scope :user do
    # get '/u/login', to: "devise/sessions#new", as: "login"
    # get '/u/logout', to: "devise/sessions#destroy", as: "logout"
    # get '/u/signout', to: "users/sessions#destroy", as: "signout"
    # get '/u/signup', to: "users#new", as: "signup"
    get '/u/sign_out' => 'devise/sessions#destroy'

  end




  # resources :courses do
  #   resources :enrollments
  # end
  # resources :courses do
  #   resources :users
  # end
   resources :users
   resources :enrollments
   resources :courses
  resources :admins
  resources :superadmins
end
