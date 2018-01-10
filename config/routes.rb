Rails.application.routes.draw do


  devise_for :users
  resources :users

  get'graphs/polar'
  get'graphs/radar'
  get'graphs/bubble'
  get'graphs/bar'



  resources :workouts
  resources :meals
  resources :journals



  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
