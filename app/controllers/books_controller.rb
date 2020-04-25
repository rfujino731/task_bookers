class BooksController < ApplicationController
	

	def index
		@books = Book.all
		@book = Book.new
    end

    def create
		book = Book.new(book_params)
		book.save
		redirect_to '/books'
	end

	def show
		@book = Book.find(params[:id])
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		book = Book.find(params[:id])
		book.update(book_params)
		redirect_to books_path
	end

	def destroy
		book = Book.find(params[:id])
		book.destroy
		redirect_to books_path
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
