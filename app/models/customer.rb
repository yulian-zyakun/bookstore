class Customer < ApplicationRecord
  validates :name, :address, :city, :postal_code, :email, presence: true
  validates :full_name, :email, uniqueness: true

  has_many :orders
end
