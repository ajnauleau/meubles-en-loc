class LocationsController < ApplicationController
  def create
    @location = Location.new(location_params)
    @location.user = current_user
    @location.meuble = Meuble.find(params[:meuble_id])

    start_date = params[:location][:end_date].split('to')[0]
    end_date = params[:location][:end_date].split('to')[1]

    @location.start_date = start_date
    @location.end_date = end_date

    @location.save!
    redirect_to profil_path
  end

  private

  def location_params
    params.require(:location).permit(:date_start, :end_date)
  end
end
