Rails.application.routes.draw do
  resources :concerts 
  get '/', to: 'concerts#index' 
end
