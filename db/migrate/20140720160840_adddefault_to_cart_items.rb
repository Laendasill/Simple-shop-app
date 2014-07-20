class AdddefaultToCartItems < ActiveRecord::Migration
  def change
    change_table :cart_items do |t|
      t.change :amount, :integer , :default => 1
    end
  end
end
