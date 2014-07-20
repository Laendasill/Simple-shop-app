class CartItemsController < ApplicationController
  def create
    @cart = current_cart
    product = Product.find(params[:product_id])
    @cart_item = @cart.add_item(product.id)

    respond_to do |format|
     if @cart_item.save
       format.html {redirect_to @cart_item.cart, notice: 'Item added' }
       format.json { render json: @cart_item, status: :created, location: @cart_item}
     else
       format.html { render action: "new" }
       format.json { render json: @cart_item.errors, status: :unprocessable_entry }
     end
    end
  end  
end
