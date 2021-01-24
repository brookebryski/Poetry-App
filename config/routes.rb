Rails.application.routes.draw do
  resources :users
  resources :poems do
    resources :comments
	end

	get '/new_comment_form', to: 'poems#new_comment_form'

	get '/comments', to: 'comments#index'
	root 'poems#index'
end
