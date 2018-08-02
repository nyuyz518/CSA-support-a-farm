class SharesController < ApplicationController

  def new
    @share = Share.new
  end

  def create
    @share = Share.new(share_params)
    if @share.save
      flash[:notice] = "New share successfully added to your account!"
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def share_params
    params.require(:share).permit(:user_id, :category_id, :farm_id)
  end

end
