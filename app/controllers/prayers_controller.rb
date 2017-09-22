class PrayersController < ApplicationController
  before_action :authenticate_admin!, only: [ :pending ]

  def index
    @prayers = Prayer.approved
    @prayer = Prayer.new
  end

  def show
    @prayer = Prayer.find(params[:id])
  end

  def create
    @prayer = Prayer.create(prayer_params)
    if @prayer.save
      flash[:notice] = "Your prayer request has been received!"
    end

    redirect_back(fallback_location: root_path)
  end

  def pending
    @prayers = Prayer.pending
  end

  def approve
    @prayer = Prayer.find(params[:id])
    @prayer.approve
    flash[:notice] = "Prayer request successfully approved!"
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @prayer = Prayer.find(params[:id])
    @prayer.destroy
    flash[:notice] = "Prayer request successfully deleted!"
    redirect_back(fallback_location: root_path)
  end

  def affirm
    @prayer = Prayer.find(params[:id])
    @prayer.affirm

    respond_to do |format|
      format.js
      format.html { redirect_back(fallback_location: root_path) }
    end
  end

  def prayer_params
    params.require(:prayer).permit(:name, :prayer)
  end
end
