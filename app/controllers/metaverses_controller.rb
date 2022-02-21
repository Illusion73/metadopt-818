class MetaversesController < ApplicationController
  before_action :find_by_id, only: [:edit, :update]

  def edit
  end

  def update
    @metaverse.update(metaverse_params)

    redirect_to metaverse_path(@metaverse)
  end

  private

  def metaverse_params
    params.require(:metaverse).permit(:title, :description, :price)
  end

  def find_by_id
    @metaverse = Metaverse.find(params[:id])
  end
end
