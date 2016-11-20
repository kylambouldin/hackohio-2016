Rails.application.routes.draw do
  resources :bars
  devise_for :users
  root to: 'users#index'
  resources :users

	get  "/crawl/create" => "crawls#create"
	get  "/crawl/create/:num" => "crawls#create"
	post "/crawl/save/" => "crawls#save"
end
