Rails.application.routes.draw do
  constraints subdomain: 'admin' do
    devise_for :users, controllers: {
      sessions: 'sessions'
    }

    namespace 'admin', path: '/' do
      root to: 'dashboard#show'

      resources :essays
      resources :images
    end
  end

  root to: 'home#index'
end
