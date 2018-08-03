class WishListItemsController < ApplicationController
  before_action :set_wish_list_item, only: [:create, :destroy]

  def index
  @wish_list_items = WishListItem.all
  end

  def new
    @wish_list_item = WishListItem.new
  end

  def create
    @wish_list_item = WishListItem.new(wish_list_item_params)
    if @WishListItem.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def edit
    #code
  end

  def update
    #code
  end

  def destroy
    @wish_list_item.destroy
    flash[:notice] = "Item deleted from Wish List"
    redirect_to profile_path
  end

  private

  def wish_list_item_params
    params.require(:wish_list_item).permit(:item)
  end

  def set_wish_list_item
    @wish_list_item = WishListItem.find_by(id: params[:id])
  end

end
