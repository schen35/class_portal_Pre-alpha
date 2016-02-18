Rails.application.routes.draw do

#  get 'superadmins/index'

 # get 'superadmins/show'

 # get 'superadmins/new'
#
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





  devise_scope :user do
    get 'login', to: "devise/sessions#new", as: "login"
    get 'logout', to: "devise/sessions#destroy", as: "logout"
    get 'signout', to: "users/sessions#destroy", as: "signout"
    get 'signup', to: "users#new", as: "signup"
    get '/u/sign_out' => 'devise/sessions#destroy'
  end

  resources :enrollments
  resources :courses
  resources :users
  resources :admins
  resources :superadmins
end
