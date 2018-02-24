Rails.application.routes.draw do

  get 'articles/index'

  resources :articles
  resources :comments, only: :create

  root controller: :articles, action: :index
end
