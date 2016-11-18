class BooksController < ApplicationController

  def index
    @categories = Category.all
    @books = Book.page(params[:page]).per(3)
  end

  def search
    @categories = Category.all
    @books = Book.all
    if params[:search]
      @books = Book.search(params[:search]).order("created_at DESC").page(params[:page]).per(3)
    else
      @books = Book.all.order('created_at ASC').page(params[:page]).per(3)
    end
  end

  def show
    @categories = Category.all
    @book = Book.find(params[:id])
  end

  def category
    @categories = Category.all
    @category = Category.find(params[:id])
    @books = Book.where("category_id = ?", @category.id).page(params[:page]).per(3)
  end

end
