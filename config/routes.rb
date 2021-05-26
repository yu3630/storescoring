Rails.application.routes.draw do
  get 'skills/new'
  get 'skills_admin/index'
  get 'skills_admin/new'
  get 'users_admin/index'
  get 'aeras/index'
  get 'sessions/new'
  root 'pages#index'
  get 'pages/index'
  get 'skill_categories/index'
  get 'stores/index'
  get 'profiles/index'
  get 'users/new'
  get 'users/show'
  get 'users/edit'
  patch 'user/update'
  put 'user/update'
  get 'users_admin/index'
  get '/logout', to: 'sessions#destroy'
 
  get 'skills_user/new'
  get 'skills_user/edit'
  post '/skills_user', to: 'skills_user#create'
  
  get 'search' => 'stores#seach' #サーチ実装
  
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
