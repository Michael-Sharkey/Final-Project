Rails.application.routes.draw do


  devise_for :users
  resources :users

  get'graphs/volume'
  get'graphs/rep_ranges'
  get'graphs/intensity'

  get'meals/slides'


  resources :workouts
  resources :meals
  resources :journals



  root to: 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
