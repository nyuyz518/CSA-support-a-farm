class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def show
    @user_items = UserItem.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      flash[:notice] = "Account successfully created!"
      session[:logged_in_user_id] = @user.id
      redirect_to profile_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :password)
  end
end
