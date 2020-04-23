Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  get 'new' => 'books#new'

  post 'book' => 'books#create'
end
