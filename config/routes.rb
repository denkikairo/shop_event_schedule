# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :shops, controllers: {
    registrations: 'shops/registrations',
    sessions: 'shops/sessions'
  }

  root to: 'shops#index'
  resources :shops, only: %i[index]

  namespace :shops do
    resource :info, only: %i[show edit update]
    resources :events
  end
end
