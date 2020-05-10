class ReservesController < ApplicationController

  def create
    if current_user.reserve.create(reserve_params)
      redirect_to controller: :sarus, action: :show, id: params[:reserve][:saru_id]
    else
      redirect_to controller: :sarus, action: :show, id: params[:reserve][:saru_id]
    end
  end

  def destroy
  end

  private
    def reserve_params
      params.require(:reserve).permit(:user_id, :saru_id)
    end

end
