Rails.application.routes.draw do
  get 'users_admin/index'
  get 'uers_adimn/index'
  get 'aeras/show'
  get 'sessions/new'
  root 'pages#index'
  get 'pages/index'
  get 'toppages/index'
  get 'toppages/show'
  get 'skill_categories/index'
  get 'stores/index'
  get 'profiles/index'
  get 'users/new'
  get 'users/show'
  get 'users_admin/index'
  get '/logout', to: 'sessions#destroy'
  
  resources :skill_categories
  get 'skill_categories/show'
  
  resources :stores
  get 'stores/show'
  
  get 'areas/:id', to: 'areas#show'
  get 'ajax', to: 'users#ajax'
  
  resources :users
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
