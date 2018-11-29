class AuthorsController < ApplicationController
  before_action :find_author, only: %i[show edit update destroy]
  def index
    @authors = Author.all

  end
  def new

  end
  def create

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
end
