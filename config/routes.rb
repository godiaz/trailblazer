Rails.application.routes.draw do
  root to: 'pages#home'

  get '/privacy', to: 'pages#privacy'
  get '/about', to: 'pages#about'
  get '/preparation', to: 'pages#preparation'
  get '/contact', to: 'pages#contact'
  get '/safaris', to: 'pages#safaris'
  get '/reviews', to: 'pages#reviews'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
