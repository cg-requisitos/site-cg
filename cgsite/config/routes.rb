Rails.application.routes.draw do
  resources :livros
  get 'welcome/index'

  root 'welcome#index'
end
