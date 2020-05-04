class SarusController < ApplicationController
  before_action :authenticate_user!

  def index
    @sarus = Saru.all
  end

  def show
    @saru = Saru.find(params[:id])
  end

  def new
    @saru = Saru.new
  end

  def create
    @saru = Saru.new(saru_params)
    if @saru.save
      redirect_to @saru
    else
      render 'new'
    end
  end

  def edit
    @saru = Saru.find(params[:id])
  end

  def update
    @saru = Saru.find(params[:id])
    if @saru.update_attributes(saru_params)
      redirect_to @saru
    else
      render 'edit'
    end
  end

  private
    def saru_params
      params.require(:saru).permit(:title, :stime, :etime, :menu, :level)
    end
end
