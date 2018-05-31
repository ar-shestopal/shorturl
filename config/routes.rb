Rails.application.routes.draw do
  root 'short_urls#new'
  resources :short_urls, only: %i[new create show]

  get :follow, to: 'short_urls#follow', as: 'follow_short_url'
end
