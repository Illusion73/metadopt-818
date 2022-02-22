class BookingsController < ApplicationController
  before_action :find_by_id, only: [:show, :new, :create]

  def new
    # @user = User.find(params[:user_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.metaverse = @metaverse
    @booking.user = current_user

    if @booking.save
      redirect_to metaverse_booking_path(@metaverse, @booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
    def booking_params
      params.require(:booking).permit(:metaverse_id, :start_at, :end_at, :user_id)
    end

    def find_by_id
      @metaverse = Metaverse.find(params[:metaverse_id])
    end
end
