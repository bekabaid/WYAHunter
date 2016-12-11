Rails.application.routes.draw do
  resources :resources
  get 'types' => 'resources#types'
  root 'sessions#new.html.erb'
  get 'create'  => 'users#new'
  get 'verify_new' => 'users#verify_new'
  post 'verify_new' => 'users#check'
  get 'authentication' => 'users#authentication'
  post 'authentication' => 'sessions#dashboard_check'

  resources :users

  get 'login' => 'sessions#new.html.erb'
  get 'dashboard' => 'sessions#dashboard.html.erb'
  get 'admin_dashboard' => 'sessions#admin_dashboard.html.erb'
  get 'admin_dashboard_newResource' => 'sessions#admin_dashboard_newResource.html.erb'
  get 'admin_dashboard_createUser' => 'sessions#admin_dashboard_createUser.html.erb'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  # available within this file, see http://guides.rubyonrails.org/routing.html
end
