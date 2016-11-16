class BooksController < ApplicationController
  def index
    @books = Book.all.limit(3)
  end

  def show
    @book = Book.find(params[:id])
  end

end
