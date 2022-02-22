class ReviewsController < ApplicationController
  before_action :set_booking, only: [:new, :create]
  before_action :set_metaverse, only: [:index]

  def index
    @reviews = @metaverse.reviews
    # set up mon metaverse ok


  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking = @booking
    @review.user = current_user

    if @review.save
      redirect_to booking_reviews_path(@booking, @review)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content, :booking_id)
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def set_metaverse
    @metaverse = Metaverse.find(params[:metaverse_id])
  end
end
