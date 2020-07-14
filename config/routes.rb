Rails.application.routes.draw do
  get 'offices/index'
  get 'building/index'

  resources :companies
  resources :buildings

  post 'create-office' => 'buildings#create_office'
end
