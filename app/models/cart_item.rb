class CartItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * amount
  end
end
