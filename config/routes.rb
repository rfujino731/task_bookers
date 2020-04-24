Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #最初のページ
  root to: 'home#index'
  #一覧(今回のメインページ)表示
  get  'books' => 'books#index'
  #投稿後のアクション
  post 'book' => 'books#create'
  
  #newは、投稿時のページ
  # get 'new' => 'books#new'
end
