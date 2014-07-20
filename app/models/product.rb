class Product < ActiveRecord::Base
  belongs_to :category
  has_many :cart_items
  has_many :carts, :through => :cart_items
  validates_presence_of :title, :description, :price
  validates_format_of :price, with: /\A\d{0,10}\.?\d{0,2}\z/
end
