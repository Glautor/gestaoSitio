Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "rails_admin/main#dashboard"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
