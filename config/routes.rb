Rails.application.routes.draw do
  constraints subdomain: 'admin' do
    devise_for :users, controllers: {
      sessions: 'sessions'
    }

    namespace 'admin', path: '/' do
      root to: 'essays#index'

      resources :essays do
        put :publish, on: :member
      end

      resources :images
      resources :sections
      resources :clients
    end
  end

  resources :sections, only: %w(index show) do
    resources :essays, only: :show
  end

  resources :essays, only: :show
  resources :clients, only: :index
  resource :contact, only: :show
  resources :contacts, only: :create

  root to: 'home#index'

  get 'pages/:page', to: 'home#index'
end
