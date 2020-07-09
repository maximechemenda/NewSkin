Rails.application.routes.draw do
  get 'actors/new'
  get 'actors/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'actors#index'
  resources :actors
end
