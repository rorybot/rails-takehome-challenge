Rails.application.routes.draw do
  get 'offices/index'

  resources :companies
  resources :buildings
  resources :employees

  post 'create-office' => 'buildings#create_office'

  root 'buildings#index'
end
