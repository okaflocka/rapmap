Rails.application.routes.draw do
  root to: "artists#index"
  resources :artists do
    collection do
      get 'state','search'
    end
  end
  #get 'search', to: "artists#search"
end
