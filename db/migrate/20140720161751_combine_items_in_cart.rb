class CombineItemsInCart < ActiveRecord::Migration
  def up
   Cart.all.each do |cart|
     sums = cart.cart_items.group(:product_id).sum(:amount)

     sums.each do |product_id, amount|
       if amount > 1
         cart.cart_items.where(product_id: product_id).delete_all

         cart.cart_items.create(product_id: product_id, amount: amount)
       end
     end
   end
  end
  def down
    CartItem.where("amount>1").each do |cart_item|
      cart_item.amount.times do
        CartItem.create cart_id: cart_item.cart_id,
          product_id: cart_item.product_id, amount: 1
      end
      cart_item.destroy
    end
  end
end
