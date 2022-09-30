Rails.application.routes.draw do
  root to: "artists#index"
  resources :artists do
    collection do
      get 'search'
    end
  end
end
