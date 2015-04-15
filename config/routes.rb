Rails.application.routes.draw do
  constraints subdomain: 'admin' do
    devise_for :users, controllers: {
      sessions: 'sessions'
    }

    namespace 'admin', path: '/' do
      root to: 'dashboard#show'

      resources :essays do
        put :publish, on: :member
      end

      resources :images
      resources :sections
    end
  end

  resources :sections, only: %w(index show) do
    resources :essays, only: :show
  end

  resources :essays, only: :show

  root to: 'home#index'
end
