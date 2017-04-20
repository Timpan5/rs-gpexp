Rails.application.routes.draw do
  root 'static#home'

  get 'storage', to: 'storage#load'
  post 'storage', to: 'storage#store'

  get 'skills/:name', to: 'skill#load', as: 'skills'
end
