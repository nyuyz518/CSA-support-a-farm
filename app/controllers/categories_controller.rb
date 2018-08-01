class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  # def add_to_cart
  #   byebug
  #   @category = Category.find(params[:id])
  #   cart << @category.id
  #   session[:cart] = cart
  # end

end
