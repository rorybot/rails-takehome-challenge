Rails.application.routes.draw do
  get 'building/index'

  resources :companies
  resources :buildings
end
