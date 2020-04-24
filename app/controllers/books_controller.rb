class BooksController < ApplicationController
	
	def create
		book = Book.new(book_params)
		book.save
		redirect_to '/new'
	end

	def index
		@books = Book.all
		@book = Book.new
    end

 #    def new
	# 	# 投稿するために空のモデルオブジェクトを生成する
	# 	@book = Book.new
	# end


	private

	def book_params
		params.require(:book).permit(:title, :body)
	end
end
