class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.column :product_id, :integer
      t.column :cart_id, :integer
      t.column :price, :decimal, precision: 8, scale: 2
      t.column :amount, :integer
      t.timestamps
    end
  end
end
