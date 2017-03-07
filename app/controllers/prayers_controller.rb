class PrayersController < ApplicationController
  def index
    @prayers = Prayer.order(:created_at).reverse
    @prayer = Prayer.new
  end

  def show
    @prayer = Prayer.find(params[:id])
  end

  def create
    @prayer = Prayer.new(prayer_params)
    if @prayer.save
      redirect_to prayers_path
    else
      render 'new'
    end
  end

  private

    def prayer_params
      params.require(:prayer).permit(:name, :prayer)
    end
end
