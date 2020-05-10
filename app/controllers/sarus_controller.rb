class SarusController < ApplicationController
  before_action :authenticate_user!

  def index
    @saru = Saru.new
    @sarus = Saru.all.order(:stime)
  end

  def show
    @saru = Saru.find(params[:id])
    #@reserve = Reserve.new(saru_id: params[:id])
    @reserve = Reserve.new
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
    @places = Place.all
  end

  def update
    @saru = Saru.find(params[:id])
    @places = Place.all
    if @saru.update_attributes(saru_params)
      redirect_to @saru
    else
      render 'edit'
    end
  end

  def search
    #search_date = Datetime.new(params[:stime])
    #date = params[:saru][:stime].to_date
    #date = Datetime.parse(params[:stime])
    @saru = Saru.new(saru_params)
    search_date = @saru.stime
    @sarus = Saru.where(stime: search_date.in_time_zone.all_day)
  end

  private
    def saru_params
      params.require(:saru).permit(:title, :place_id, :stime, :etime, :menu, :level, :max)
    end
end
