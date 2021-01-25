Rails.application.routes.draw do
  resources :poems
  resources :favorites
  resources :users do
    resources :favorites
  end 
end
