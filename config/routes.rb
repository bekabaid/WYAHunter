Rails.application.routes.draw do
  root 'sessions#new.html.erb'
  resources :resources
  resources :whiteboards_tables
  resources :rooms_tables
  resources :laptops_tables
  resources :coffee_tables
  get 'create'  => 'users#new'
  resources :users

  get 'login' => 'sessions#new.html.erb'
  get 'dashboard' => 'sessions#dashboard'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  # available within this file, see http://guides.rubyonrails.org/routing.html
end
