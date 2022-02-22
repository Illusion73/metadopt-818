class BookingsController < ApplicationController
  before_action :find_by_id, only: [ :show ]

  def show
  end

  private

  def find_by_id
    @metaverse = Metaverse.find(params[:id])
  end

end
