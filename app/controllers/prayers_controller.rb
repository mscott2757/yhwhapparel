class PrayersController < ApplicationController
  def show
    @prayer = Prayer.find(params[:id])
    @prayer.date = @prayer.created_at
    @prayer.date.to_formatted_s(:short)  
    @prayer.save
  end

  def new
  end
end
