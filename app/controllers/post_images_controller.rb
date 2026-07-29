class PostImagesController < ApplicationController
  def new
    @post_image = PostImage.new
  end

  def create
    @post_image = PostImage.new(post_image_params)
    @post_iamge.user_id = Current.user.id
    @post_iamge.save
    redirect_to post_images_path
  end

  def index
  end

  def show
  end

  private

  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end
  
end
