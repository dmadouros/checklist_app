Rails.application.routes.draw do
  namespace :api do
    resources :checklists, only: [:index, :show]
  end
end
