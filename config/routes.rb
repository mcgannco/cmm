Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#root"

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :update, :show]
    resources :lists, only: [:create, :destroy, :show, :index]
    resources :task, only: [:create, :update, :show, :index]
    resource :session, only: [:create, :destroy]
  end
end
