Rails.application.routes.draw do

  resources :items
  resources :ncms
  resources :categories


  resources :typeitems
  resources :unmeds

  get '/dashboard', to: 'users#dashboard'
  get '/financial', to: 'dashboards#financial'
  get '/sales', to: 'dashboards#sales'
  get '/registrations', to: 'dashboards#registrations'
  get '/shopping', to: 'dashboards#shopping'
  get '/supply', to: 'dashboards#supply'
  get '/production', to: 'dashboards#production'
  get '/reports', to: 'dashboards#reports'
  get '/simulator', to: 'dashboards#simulator'

  root to: 'pages#home'
  devise_for :users, path: '', path_names: { sign_in: 'entrar', sign_up: 'registrar', sign_out: 'sair', edit: 'perfil' }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
