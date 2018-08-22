Rails.application.routes.draw do
  namespace :api do
    resource :checklists
  end
end
