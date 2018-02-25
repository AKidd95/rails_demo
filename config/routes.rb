Rails.application.routes.draw do
  get 'articles/index'

  resources :articles, except: [:destroy]

  root controller: :articles, action: :index
end
