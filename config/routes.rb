Rails.application.routes.draw do
  resources :localidades

  resources :tabelas, only: [:index]
  resources :clientes
  resources :tabela_precos_valores
  resources :itinerarios
  resources :cooperados
  get 'welcome/index'
  mount Ckeditor::Engine => '/ckeditor'
  
  root "welcome#index"

  post "sign_up", to: "usuarios#create", as: "usuarios"
  get "sign_up", to: "usuarios#new"

  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy", as: "sair"
  get "login", to: "sessions#new"

  get "edit_usuario", to: "usuarios#edit"
  patch "/usuarios/:id", to: "usuarios#update", as: "usuario"
  put "/usuarios/:id", to: "usuarios#update"

end
