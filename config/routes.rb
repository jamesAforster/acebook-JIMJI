Rails.application.routes.draw do
  resources :users
  get 'login/index'

  get 'welcome/index'
  get 'signup/index'

  resources :posts

  root 'welcome#index'
end
