Rails.application.routes.draw do
  get 'photographs/index'
  root 'homepage#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end
