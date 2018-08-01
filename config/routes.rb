Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'home', to: 'welcome#index'
  get 'search_stocker', to: 'stocks#search'
  get 'my_friends', to: 'users#my_friends'
  root 'users#my_portfolio'
  get 'search_friends', to: 'users#search'
  post 'add_friend', to: 'users#add_friend'
  resources :user_stocks, only: [:create]
  resources :user_stocks, only: [:create, :destroy]
  resources :users, only: [:show]
  resources :friendships
end
