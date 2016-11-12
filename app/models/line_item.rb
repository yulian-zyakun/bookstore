class LineItem < ApplicationRecord
  validates :quantity, :price, presence: true

  belongs_to :book
  belongs_to :order
end
