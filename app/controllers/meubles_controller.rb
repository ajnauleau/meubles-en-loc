class MeublesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :filter]

  def index
    @meubles = Meuble.all
    @meuble = Meuble.new
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

  def filter
    @meuble = Meuble.new
    @meubles = Meuble.where(meuble_params, disponibility: true)
  end

  private

  def meuble_params
    params.require(:meuble).permit(:category, :description, :height, :width, :length, :daily_rate)
  end

=begin
  def meuble_options
    params.fetch(:meuble, {}).permit(:bar, :category)
  end
=end

end
