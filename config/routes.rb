Rails.application.routes.draw do
  root 'short_urls#new'
  resources :short_urls
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
