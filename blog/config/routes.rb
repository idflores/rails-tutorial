Rails.application.routes.draw do
  get 'welcome/index'

  # a rails method that declares standard REST resources
  resources :articles do
    resources :comments
  end

  root 'welcome#index'
end
