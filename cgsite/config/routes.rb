Rails.application.routes.draw do

  resources :livros
  get 'welcome/index'

  root 'welcome#index'

  get '/divulgation' => 'welcome#divulgation'

  resources :users
  get 'welcome/index'

  root 'welcome#index'
end
