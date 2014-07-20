class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def edit
  end

  def index
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to categories_path, notice: 'Category was created'
    else
      render action: 'new'
    end
  end
   private

   def category_params
      params.require(:category).permit(:name, :product_id)
   end
end
