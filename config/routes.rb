Rails.application.routes.draw do
  get 'comments/create'

  get 'articles/index'

  resources :articles
  resources :comments, only: :create

  root controller: :articles, action: :index
end
