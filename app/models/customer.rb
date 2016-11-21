class Customer < ApplicationRecord
  validates :full_name, :address, :city, :postal_code, :email, :password, presence: true
  validates :email, :password, uniqueness: true
  # validates_confirmation_of :password
  has_many :orders
end
