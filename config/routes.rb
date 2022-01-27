# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static_pages#home'

  get '/privacy', to: 'static_pages#privacy'
end
