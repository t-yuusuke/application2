class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @postlmages = @user.postlmages
  end

  def edit
  end
end
