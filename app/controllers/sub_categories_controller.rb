class SubCategoriesController < ApplicationController
  def index
    @sub_categories = SubCategory.all
  end
  def show
    @sub_category = SubCategory.find(params[:id])
    @products = @sub_category.products
  end
  def new
    @sub_category = SubCategory.new
  end
  def create
    @sub_category = SubCategory.new(sub_params)
    if(@sub_category.save)
      redirect_to @sub_category
    else
      render "new"
    end
  end
  private
  def sub_params
    params.require(:sub_category).permit(:title, :active, :category_id)
  end


end
