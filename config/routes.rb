Rails.application.routes.draw do
  get 'welcome/index'

  resources :dogs

  root 'welcome#index'
end
