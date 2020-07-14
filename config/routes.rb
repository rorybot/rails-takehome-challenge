Rails.application.routes.draw do
  get 'building/index'
  get 'building/:id', to: 'building#single'
  get 'company/:id', to: 'company#single'
end
