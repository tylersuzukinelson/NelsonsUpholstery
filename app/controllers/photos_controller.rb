class PhotosController < ApplicationController
  before_action :admin_only!

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to photos_path, notice: "Your photo was uploaded successfully!"
    else
      flash[:error] = "Your photo failed to upload."
      render :new
    end
  end

  private

  def admin_only!
    redirect_to root_path and return unless current_user.id == 1
  end

  def photo_params
    params.require(:photo).permit(:attachment, :description)
  end
end