Rails.application.routes.draw do
  get '/hue', to: 'hue#index'
  put '/hue/:id', to: 'hue#update'
end
