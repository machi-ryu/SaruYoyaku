class UsersController < ApplicationController
  def show
  end

  def mypage
    @user = current_user
  end
end
