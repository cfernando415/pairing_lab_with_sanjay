class AuthorsController < ApplicationController
  before_action :find_author, only: %i[show edit update destroy]
  def index
    @authors = Author.all

  end
  def new
    @author = Author.new

  end
  def create
    @author = Author.new(authors_params)
    if @author.save
      redirect_to @author
    else
      render 'new'
    end

  end
  def show

  end
  def edit

  end
  def update

  end
  def destroy

  end
  private
  def find_author
    @author = Author.find(params[:id])
  end
  def authors_params
    params.require(:author).permit(:name, :birth_year)
  end
end
