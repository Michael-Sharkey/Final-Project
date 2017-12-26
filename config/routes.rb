Rails.application.routes.draw do


  devise_for :users
  resources :users
  get 'users/data', :defaults => { :format => 'json' }


  resources :workouts
  resources :meals
  resources :journals do
    resources :comments, only: [:new, :create]
  end


  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
