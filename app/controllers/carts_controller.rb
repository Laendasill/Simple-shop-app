class CartsController < ApplicationController
  def show
    begin
      @cart  = Cart.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      logger.error "Attempt to acces invalid cart #{params[:id]}"
      redirect_to root_path, notice: "Invalid cart"
    else
      respond_to do |format|
        format.html

      end
    end

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
