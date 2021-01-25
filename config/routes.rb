Rails.application.routes.draw do
  resources :users
  resources :poems do
    resources :comments
  end
  
end
