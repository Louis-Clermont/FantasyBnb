class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def new
    @booking = Booking.new
    @destination = Destination.find(params[:destination_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @destination = Destination.find(params[:destination_id])
    @booking.user = current_user
    @booking.destination = @destination
    if @booking.save
      redirect_to @booking, notice: 'Booking was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # @destination = Destination.find(params[:destination_id])
    @booking = Booking.find(params[:id])
    @reviews = @booking.reviews
  end

  private

  def booking_params
    params.require(:booking).permit( :total_price, :start_date, :end_date)
  end
end
