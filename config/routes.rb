# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static_pages#home'

  resources :workouts, only: %i[show create destroy]

  get '/privacy', to: 'static_pages#privacy'
end
