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
    @prayers = Prayer.order(:created_at).reverse
    if @prayer.save
      redirect_to prayers_path
    else
      render 'index'
    end
  end

  def update
    @prayer = Prayer.find(params[:id])
    @prayer.affirms ||= 0
    @prayer.update(affirms: @prayer.affirms + 1)
    render json: @prayer
  end

  private

    def prayer_params
      params.require(:prayer).permit(:name, :prayer)
    end

    def affirm prayer
      prayer.affirm += 1
    end
end
