class ApplicationController < ActionController::Base
  before_action :authorized
  helper_method :logged_in?, :current_user, #:cart

  def current_user
    @user = User.find_by(id: session[:logged_in_user_id])
  end

  def logged_in?
    !!current_user
  end

  def authorized
    unless logged_in?
      flash[:notice] = "You must be logged in to see this page."
      redirect_to login_path
    end
  end

  # def cart
  #   session[:cart] ||= []
  # end
end
