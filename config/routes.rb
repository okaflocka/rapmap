Rails.application.routes.draw do
  root to: "artists#index"
  resources :artists 
  get 'search', to: "artists#search"
end
