# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :shops, controllers: {
    registrations: 'shops/registrations',
    sessions: 'shops/sessions'
  }

  devise_for :players, controllers: {
    registrations: 'players/registrations',
    sessions: 'players/sessions'
  }

  root to: 'events#index'

  namespace :shops do
    resource :info, only: %i[show edit update]
    resources :events
  end

  resources :shops, only: %i[show index] do
    member do
      get :events
    end
  end

  resources :events, only: %i[show index], shallow: true do
    collection do
      get :bookmarks
    end
  end

  resources :bookmarks, only: %i[create destroy]
end
