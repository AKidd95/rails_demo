Rails.application.routes.draw do
  get 'articles/index'

  resources :articles

  root controller: :articles, action: :index :show
end
