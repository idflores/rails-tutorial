Rails.application.routes.draw do
  get 'welcome/index'

  # a rails method that declares standard REST resources
  resources :articles

  root 'welcome#index'
end
