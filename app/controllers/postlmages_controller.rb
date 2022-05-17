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
  end
  
  def destroy
  end
  
  private
  
  def postlmage_params
  params.require(:postlmage).permit(:shop_name, :image, :caption)
  end
end
