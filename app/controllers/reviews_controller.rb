class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    # Add any necessary code to retrieve the associated booking(s) for the review form
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to @booking, notice: "Review created successfully."
    else
      # Add any necessary code for failed review creation, e.g., rendering the form again with error messages
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :booking_id)
  end
end
