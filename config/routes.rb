Rails.application.routes.draw do
  get 'urls/index'
  get 'urls/create'

  get 'urls/new'
  get '/urls/:id/short' => 'urls#short'
  root 'urls#index'
  resources :urls, only: [:index, :new, :create, :show]
end
