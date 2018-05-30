Rails.application.routes.draw do
  root 'short_urls#new'
  resources :short_urls, only: %i(new create show)
end
