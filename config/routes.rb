Rails.application.routes.draw do
  get 'gallery/index'
  get 'about/index'
  get 'contact/index'
  get 'player/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
