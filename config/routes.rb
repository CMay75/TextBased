Rails.application.routes.draw do
  get 'welcome/index'
  get 'user/new'
  get 'game/new'
  
  resources :games
  resources :users
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
