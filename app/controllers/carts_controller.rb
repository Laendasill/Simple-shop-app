class CartsController < ApplicationController
  def show
    @cart = current_cart

  end
  
  def destroy
   @cart = current_cart
   @cart.destroy
   session[:cart_id] = nil

   respond_to do |format|
     format.html { redirect_to root_path, notice: 'Your cart is now empty' }
     format.json { head :no_content }
   end
  end
end
