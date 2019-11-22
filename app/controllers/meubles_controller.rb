class MeublesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :filter]

  def index
    @meubles = Meuble.all
    @meuble = Meuble.new
  end

  def show
    @meuble = Meuble.find(params[:id])
    @location = Location.new
    @meubles = Meuble.take(2)
  end

  def new
    @meuble = Meuble.new
  end

  def create
    @meuble = Meuble.new(meuble_params)
    @meuble.user = current_user
    if @meuble.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def filter
    @meuble = Meuble.new
    @meubles = Meuble.where(meuble_params, disponibility: true)
  end

  private

  def meuble_params
    params.require(:meuble).permit(:name, :category, :description, :height, :width, :length, :daily_rate, :photos => [])
  end

=begin
  def meuble_options
    params.fetch(:meuble, {}).permit(:bar, :category)
  end
=end

end
