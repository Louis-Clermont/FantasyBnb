class DestinationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @destinations = Destination.search_by_title_and_address_and_description(params[:query])
    else
      @destinations = Destination.order(id: :asc)
    end
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.new(destination_params)
    @destination.user = current_user
    if @destination.save
      redirect_to @destination, notice: 'Destination was successfully created.'
    else
      render :new
    end
  end

  def show
    @booking = Booking.new
    @destination = Destination.find(params[:id])

      @markers = [{
          lat: @destination.latitude,
          lng: @destination.longitude
        }]
  end

  def edit
    @destination = Destination.find(params[:id])
  end

  def update
    if @destination.update(destination_params)
      redirect_to destination_path(@destination)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @destination = Destination.find(params[:id])
    @destination.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def destination_params
    params.require(:destination).permit(:title, :address, :price, :description, photos: [])
  end
end
