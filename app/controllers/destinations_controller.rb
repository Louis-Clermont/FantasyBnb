class DestinationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @destinations = Destination.all
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.new(destination_params)
    if @destination.save
      redirect_to @destination, notice: 'Destination was successfully created.'
    else
      render :new
    end
  end

  def show
    @destination = Destination.find(params[:id])
  end

  private

  def destination_params
    params.require(:destination).permit(:user_id, :address, :price, :description)
  end
end
