Rails.application.routes.draw do
  root 'short_urls#new'
  resources :short_urls, only: %i[new create show]

  get :follow, to: 'short_urls#follow', as: 'follow_short_url'

  namespace :api, constraints: lambda { |req| [:json].include?(req.format.to_sym) } do
    namespace :v1 do
      resources :short_urls, only: :index
    end
  end
end
