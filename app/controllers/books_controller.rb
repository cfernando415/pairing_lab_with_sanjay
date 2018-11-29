class BooksController < ApplicationController
  before_action :find_book, only: %i[show edit update destroy]
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book
    else
      render 'new'
    end
  end

  def show
    @authors = Author.all
    @bookauthor = BookAuthor.new
  end

  def edit

  end

  def update
    byebug
    @book.update(book_params)
    if @book.save
      redirect_to @book
    else
      render 'edit'
    end
  end

  def destroy
    @book.destroy
  end

  private
  def find_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permite(:title, :pages)
  end
end
