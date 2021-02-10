Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, path: '', path_names: { sign_in: 'entrar', sign_up: 'registrar', sign_out: 'sair', edit: 'perfil' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
