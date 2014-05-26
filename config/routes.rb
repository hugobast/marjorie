Rails.application.routes.draw do
  constraints subdomain: 'admin' do
    namespace 'admin', path: '/' do
      root to: 'dashboard#show'

      devise_for :users

      resources :essays
    end
  end

  root to: 'home#index'
end
