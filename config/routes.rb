Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/privacy', to: 'pages#privacy'
  get '/about', to: 'pages#about'
  get '/preparation', to: 'pages#preparation'
  get '/contact', to: 'pages#contact'
  get '/reviews', to: 'pages#reviews'

  resources :safaris do
      resources :safari_hotels, only: [:create]
      resources :safari_attractions, only: [:create]
      resources :schedules
  end

  resources :hotels
  resources :attractions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
