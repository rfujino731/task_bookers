Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #最初のページ
  root to: 'home#index'
  #一覧(今回のメインページ)表示
  get  'books' => 'books#index'
  #投稿後のアクション
  post 'books' => 'books#create'
  #詳細画面
  get 'books/:id' => 'books#show', as: 'book'
  #編集画面
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  #編集後の保存
  patch 'books/:id' => 'books#update', as: 'update_book'
  #投稿の削除
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  #newは、投稿時のページ
  # get 'new' => 'books#new'
end
