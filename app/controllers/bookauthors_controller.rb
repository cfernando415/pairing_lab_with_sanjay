class BookauthorsController < ApplicationController
  def create
    @book = Book.find(params[:book_author][":book_id"])
    @author = Author.find(params[:book_author][:id])
    @book_author = BookAuthor.new(book_id: @book.id, author_id: @author.id)
    @book_author.save
    redirect_to @book
  end
  def destroy
    @book_author = BookAuthor.find(params[:id])
    @book = @book_author.book
    @book_author.destroy
    redirect_to book_path(@book)
  end
end
