class Book < ApplicationRecord
  validates :name, :description, :stock_quantity, :price, presence: true
  validates :name, uniqueness: true, length: {minimum: 7}

  has_many :line_items
  belongs_to :category
  has_many :orders, :through => :line_items
end
