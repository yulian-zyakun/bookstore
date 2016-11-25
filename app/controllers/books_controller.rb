class BooksController < ApplicationController
  before_action :load_categories, :load_line_item

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

  def about
    @about = About.all.first
  end

  def contact
    @contact = Contact.all.first
  end

  private
  def load_categories
    @categories = Category.all
  end

  def load_line_item
    @line_item = current_order.line_items.new
  end

end
