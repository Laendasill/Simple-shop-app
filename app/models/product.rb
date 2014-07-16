class Product < ActiveRecord::Base
  validates_presence_of :title, :description, :price
  validates_format_of :price, with: /\A\d{0,10}\.?\d{0,2}\z/
end
