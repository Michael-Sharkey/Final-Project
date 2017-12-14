Rails.application.routes.draw do
  get 'graphs/index'


  devise_for :users
  resources :users do
    resources :training_sessions
  end

  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
