class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @destination = Destination.find(params[:destination_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @destination = Destination.find(params[:destination_id])
    @booking.destination = @destination
    if @booking.save
      redirect_to @booking, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def show
    # @destination = Destination.find(params[:destination_id])
    @booking = Booking.find(params[:id])
    @reviews = @booking.reviews
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :destination_id, :total_price, :start_date, :end_date)
  end
end
