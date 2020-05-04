class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
  end

  def mypage
    @user = current_user
  end
end
