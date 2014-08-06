class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :set_user
  respond_to :html

  def update
    @user.update_attributes(user_params)
    respond_with @user, location: root_path
  end

  private
  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(photos: [])
  end
end
