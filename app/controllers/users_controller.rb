class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
  end

  def mypage
    @users = current_user.sarus.order(:stime)
  end
end
