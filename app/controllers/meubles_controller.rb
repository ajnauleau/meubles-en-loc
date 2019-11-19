class MeublesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @meubles = Meuble.all
  end

  def show
    @meuble = Meuble.find(params[:id])
  end

  def new
    @meuble = Meuble.new
  end

  def create
    @meuble = Meuble.new(meuble_params)
    @meuble.save
    redirect_to meuble_path(@meuble)
  end

  private

  def meuble_params
    params.require(:meuble).permit(:category, :description, :height, :width, :length, :daily_rate)
  end
end
