class BooksController < ApplicationController
	def new
		# 投稿するために空のモデルオブジェクトを生成する
		@book = Book.new
	end

	def create
		book = Book.new(book_params)
		book.save
		redirect_to '/new'
	end

	def index
		@books = Book.all
    end

	private

	def book_params
		params.require(:book).permit(:title, :body)
	end
end
