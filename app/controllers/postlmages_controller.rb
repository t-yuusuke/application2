class PostlmagesController < ApplicationController

  def new
    @postlmage = Postlmage.new
  end

  def create
    @postlmage = Postlmage.new(postlmage_params)
    @postlmage.user_id = current_user.id
    @postlmage.save
    redirect_to postlmages_path
  end

  def index
    @postlmages = Postlmage.all
  end

  def show
    @postlmage = Postlmage.find(params[:id])
    @post_comment = PostComment.new
  end

  def destroy
    @postlmage = Postlmage.find(params[:id])
    @postlmage.destroy
    redirect_to '/postlmages'
  end

  private

  def postlmage_params
  params.require(:postlmage).permit(:shop_name, :image, :caption)
  end
end
