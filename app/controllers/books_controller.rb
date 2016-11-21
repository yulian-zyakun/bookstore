class BooksController < ApplicationController
  before_action :load_categories

  def index
    @books = Book.page(params[:page]).per(3)
  end

  def search
    @books = Book.all
    if params[:search]
      @books = Book.search(params[:search]).order("created_at DESC").page(params[:page]).per(3)
    else
      @books = Book.all.order('created_at ASC').page(params[:page]).per(3)
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def category
    @category = Category.find(params[:id])
    @books = Book.where("category_id = ?", @category.id).page(params[:page]).per(3)
  end

  private
  def load_categories
    @categories = Category.all
  end

end
