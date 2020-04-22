# frozen_string_literal: true

Rails.application.routes.draw do
  resources :restaurants, only: %w[index new create show] do
    resources :reviews, only: %w[new create]
  end
end
