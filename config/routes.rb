Rails.application.routes.draw do
  root 'principal#index'
  resources :books
  resources :alunos
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
