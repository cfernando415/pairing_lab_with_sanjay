class BookauthorsController < ApplicationController
  def create
    byebug
    @book_author = BookAuthor.new
  end
  def destroy
    @book_author = BookAuthor.find(params[:id])
    @book = @book_author.book
    @book_author.destroy
    redirect_to book_path(@book)
  end
end
