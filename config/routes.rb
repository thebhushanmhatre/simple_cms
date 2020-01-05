Rails.application.routes.draw do
  
  root to: 'public#index'
  
  get 'show/:permalink', to: 'public#show', as: 'public_show'
  
  get 'admin', to: 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'
  
  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/escape_output'

  resources :subjects do
    member do
      get :delete
    end
  end
  # get 'subjects/index'
  # get 'subjects/show'
  # get 'subjects/new'
  # get 'subjects/edit'
  # get 'subjects/delete'
  
  resources :pages do
    member do
      get :delete
    end    
  end
  # get 'pages/index'
  # get 'pages/show'
  # get 'pages/new'
  # get 'pages/delete'
  # get 'pages/edit'
  
  resources :sections do
    member do
      get :delete
    end    
  end
  # get 'sections/index'
  # get 'sections/show'
  # get 'sections/new'
  # get 'sections/delete'
  # get 'sections/edit'

  # get 'admin_users/index'
  # get 'admin_users/new'
  # get 'admin_users/edit'
  # get 'admin_users/delete'
  resources :admin_users, except: [:show] do
    member do
      get :delete 
    end    
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
