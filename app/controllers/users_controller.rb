class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      flash[:notice] = "Account successfully created!"
      session[:logged_in_user_id] = @user.id
      redirect_to @user
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :password,
      wish_list_items_attributes: [
        :item,
        :user_id
      ]
    )
  end
end
