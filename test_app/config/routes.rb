Rails.application.routes.draw do
  devise_for :members
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
