class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @metaverses = @user.metaverses
    @metaverses = Metaverse.where(user: current_user)

    @bokings = Booking.where(user: current_user)
    @user_booked_metaverses = @user.user_booked_metaverses
    @owner_booked_metaverses = @user.owner_booked_metaverses
    # @booked_metaverses2 = Booking.joins(:metaverse).where(metaverse: { user_id: @user.id } ) IDEM CELLE AVANT
  end
end
