Rails.application.routes.draw do
  root 'static#home'

  get 'storage', to: 'storage#load'
  post 'storage', to: 'storage#store'

  get 'firemaking', to: 'firemaking#load'
end
