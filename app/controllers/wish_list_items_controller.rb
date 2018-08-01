class WishListItemsController < ApplicationController
  before_action :set_wish_list_item, only: [:create, :destroy]

  def new
    @wish_list_item = WishListItem.new
  end

  def create
    @wish_list_item = WishListItem.new(wish_list_item_params)
    if @WishListItem.save
      redirect_to user_path
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
    if @wish_list_item.destroy
      redirect_to user_path
      flash[:notice] = "Item deleted from Wish List"
    else
      redirect_to user_path
    end
  end

  private

  def wish_list_item_params
    params.require[:wish_list_item].permit[:item, :user_id]
  end

  def set_wish_list_item
    @wish_list_item = WishListItem.find_by(id: params[:id])
  end

end
