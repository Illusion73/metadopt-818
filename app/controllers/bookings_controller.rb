class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :destroy, :edit, :update]
  before_action :set_metaverse, only: [:new, :create, :edit, :update]

  def new
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

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to metaverse_booking_path(@metaverse, @booking)
  end

  def destroy
    @booking.destroy
    redirect_to metaverses_path
  end

  private

    def booking_params
      params.require(:booking).permit(:metaverse_id, :start_at, :end_at, :user_id)
    end

    def set_booking
      id = params[:id] || params[:booking_id]
      @booking = Booking.find(id)
    end

    def set_metaverse
      id = params[:id] || params[:metaverse_id]
      @metaverse = Metaverse.find(id)
    end
end
