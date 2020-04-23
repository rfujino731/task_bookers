Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #最初のページ
  root to: 'home#index'
  #newは、投稿時のページ
  get 'new' => 'books#new'
  #投稿後のアクション
  post 'book' => 'books#create'
  #一覧(今回のメインページ)表示
  get  'books' => 'books#index'
end
