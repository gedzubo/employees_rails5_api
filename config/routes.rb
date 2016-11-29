Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :v1 do
    resources :departments, only: [:index, :show]
    resources :employees, only: [:index, :show]
    resources :titles, only: [:index]
  end
end
