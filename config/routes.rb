Rails.application.routes.draw do
  get 'offices/index'

  resources :companies
  resources :buildings

  post 'create-office' => 'buildings#create_office'

  root 'buildings#index'
end
