class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end
  def show
    @category = Category.find(params[:id])
    @sub_categories = @category.sub_categories
  end
  def new
    @category = Category.new
  end
  def create
    @category = Category.new(category_params)
    if(@category.save)
      redirect_to @category
    else
      render :new
    end
  end
  def category_params
    params.require(:category).permit(:title, :active)
  end
end
