Rails.application.routes.draw do
  root 'persons#index'
  resources :persons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
