Rails.application.routes.draw do
  get 'welcome/index'

  resources :menuitems

  root 'welcome#index'
end
