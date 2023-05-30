class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @reviews = @booking.reviews
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :destination_id, :total_price, :start_date, :end_date)
  end
end
