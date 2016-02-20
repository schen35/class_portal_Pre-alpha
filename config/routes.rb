Rails.application.routes.draw do

<<<<<<< HEAD
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

=======
>>>>>>> refs/remotes/origin/schen35

  #root to: 'users#index'
  root to: 'visitors#index'
  devise_for :users, :path =>'u'
  get '/superadmins/:id' => 'users#destroy'

  get 'index_instructor' => 'enrollments#index_instructor'
   get 'index_student' => 'enrollments#index_student'

  get '/enrollments', to: 'enrollments#new', as: 'student_enrollment'


  devise_scope :user do
<<<<<<< HEAD
    # get '/u/login', to: "devise/sessions#new", as: "login"
    # get '/u/logout', to: "devise/sessions#destroy", as: "logout"
    # get '/u/signout', to: "users/sessions#destroy", as: "signout"
    # get '/u/signup', to: "users#new", as: "signup"
=======
>>>>>>> refs/remotes/origin/schen35
    get '/u/sign_out' => 'devise/sessions#destroy'

  end


   resources :users
   resources :enrollments
   resources :courses
  resources :admins
  resources :superadmins
end
