Rails.application.routes.draw do
  

  resources :vacations
  devise_for :users
  root 'pages#index'
  #root 'sessions#new'
  get 'about' => 'pages#about'
  get 'home' => 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
