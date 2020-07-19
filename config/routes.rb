Rails.application.routes.draw do
  root to: 'homes#index'

  namespace :api, format: 'json' do
    resources :tasks, only: [:index, :create, :update]
  end
end
