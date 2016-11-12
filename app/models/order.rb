class Order < ApplicationRecord
  validates :status, :pst_rate, :gst_rate, presence: true

  has_many :line_items
  has_many :books, :through => :line_items
  belongs_to :customer
end
