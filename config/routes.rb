Rails.application.routes.draw do
  get 'welcome/index'
  get 'users/new'
  get 'games/new'
  
  resources :users
  resources :games
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
