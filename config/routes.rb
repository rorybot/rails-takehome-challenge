Rails.application.routes.draw do
  get 'building/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # root 'building#index'


  get 'building/:id', to: 'building#single'
end
