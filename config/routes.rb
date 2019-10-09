Rails.application.routes.draw do
  root to: 'keys#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  resources :keys, only: [:index, :show, :new, :create]
  resources :histories, only: [:create] do
    put :replace
    put :lost
  end
end
