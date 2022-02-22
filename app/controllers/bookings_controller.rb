class BookingsController < ApplicationController
  def new
    @metaverse = Metaverse.find(params[:metaverse_id])
    # @user = User.find(params[:user_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @metaverse = Metaverse.find(params[:metaverse_id])
    @booking.metaverse = @metaverse
    @booking.user = current_user

    if @booking.save!
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private
    def booking_params
      params.require(:booking).permit(:metaverse_id, :start_at, :end_at, :user_id)
    end
end
