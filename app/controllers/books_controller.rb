class BooksController < ApplicationController

  def index
  end

  def new
  end

  def show
     @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)

    @book.save
    redirect_to @book
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :book_owned, :year_written, :image_url)
  end
end
