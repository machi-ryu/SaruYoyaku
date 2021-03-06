class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
  end

  def mypage
    @users = current_user.sarus.order(:stime)
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end


  private
    def user_params
      params.require(:user).permit(:name, :image, :email)
    end
end
