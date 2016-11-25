class Order < ApplicationRecord
  validates :pst_rate, :gst_rate, presence: true

  has_many :line_items
  has_many :books, :through => :line_items
  belongs_to :customer

  #Sopping cart
  before_create :set_order_status
  before_save :update_subtotal

  def subtotal
    line_items.collect { |li| li.valid? ? (li.quantity * li.unit_price) : 0 }.sum
  end
private
  def set_order_status
    self.status = OrderStatus.find(1).name
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end
end
