# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  get 'home/search_result'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
