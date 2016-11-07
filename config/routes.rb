Rails.application.routes.draw do
  resources :resources
  root 'sessions#new.html.erb'
  get 'create'  => 'users#new'
  resources :users


  get 'login' => 'sessions#new.html.erb'
  get 'dashboard' => 'sessions#dashboard.html.erb'
  get 'admin_dashboard' => 'sessions#admin_dashboard.html.erb'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  # available within this file, see http://guides.rubyonrails.org/routing.html
end
