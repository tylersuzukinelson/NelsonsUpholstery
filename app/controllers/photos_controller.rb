class PhotosController < ApplicationController
  before_action :admin_only!

  def index
  end

  private

  def admin_only!
    redirect_to root_path and return unless current_user.id == 1
  end
end