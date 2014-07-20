class Cart < ActiveRecord::Base
  has_many :cart_items
  has_many :products, :through => :cart_items

  def add_item(product_id)
    current_item = cart_items.find_by(product_id: product_id)
    if current_item.blank? == false
      current_item.amount += 1
    else
      current_item = cart_items.build(product_id: product_id)
    end
    current_item
  end

  def total_price
    cart_items.to_a.sum { |item| item.total_price }
  end
end
