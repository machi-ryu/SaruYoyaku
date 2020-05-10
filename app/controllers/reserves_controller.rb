class ReservesController < ApplicationController

  def create
    if user_signed_in?
      if current_user.reserve.create(reserve_params)
        redirect_to controller: :sarus, action: :show, id: params[:reserve][:saru_id]
      else
        redirect_to controller: :sarus, action: :show, id: params[:reserve][:saru_id]
      end
    else
      redirect_to new_user_session_path
    end
  end

  def destroy
    current_user.reserve.find_by(saru_id: params[:reserve][:saru_id]).destroy
    redirect_to controller: :sarus, action: :show, id: params[:reserve][:saru_id]
  end

  private
    def reserve_params
      params.require(:reserve).permit(:user_id, :saru_id)
    end

end
