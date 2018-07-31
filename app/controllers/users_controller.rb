class UsersController < ApplicationController
  before_action :set_user, only: %i{show}

  def show
  end

  def new
    @user = User.new
    # @user.wish_list_items.build(item: 'placeholder text')
  end

  def create
    User.create(user_params)
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit( :name, :user_name, :password,
      wish_list_items_attributes: [
        :item,
        :user_id
      ]
    )
  end

  def set_user
    @user = User.find_by(id: params[:id])
  end

end
