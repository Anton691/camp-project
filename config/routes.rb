Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :camps, only: %i[index new edit create update destroy show]
  resources :cities, only: %i[index new edit create update destroy show]
  resources :regions, only: %i[index new edit create update destroy show]
  resources :countries, only: %i[index new edit create update destroy show]

  root "camps#index"
end
