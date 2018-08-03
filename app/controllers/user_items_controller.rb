class UserItemsController < ApplicationController

  def new
    @user_item = UserItem.new
    @wish_list_items = WishListItem.all
  end

  def create
    @user_item = UserItem.new(user_item_params)
    if @user_item.save
      flash[:notice] = "New item successfully added to your wish list!"
      redirect_to profile_path
    else
      render :new
    end
  end

  def destroy
    if @user_item.delete
      flash[:notice] = "Item removed from wish list."
    end
  end


  private

  def user_item_params
    params.require(:user_item).permit(:user_id, :wish_list_item_id)
  end

end
