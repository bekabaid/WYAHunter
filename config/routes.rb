Rails.application.routes.draw do
  get 'create'  => 'users#new'
  resources :users

  get 'login' => 'sessions#new.html.erb'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  # For details on the D
  # available within this file, see http://guides.rubyonrails.org/routing.html
end
