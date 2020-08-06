Rails.application.routes.draw do
  resources :posts
  devise_for :people
  resources :people

  root 'posts#index'
end
