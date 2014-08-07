class AlbumController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  respond_to :html

  def show
  end

  def photo
    @photo = current_user.photos.find(params[:id])
    respond_with @photo
  end

  private
  def set_user
    @user = current_user
  end
end
