class MetaversesController < ApplicationController

  def new
    @metaverse = Metaverse.new
  end

  def create
   @metaverse = Metaverse.new(metaverse_params)
   if @metaverse.save
     redirect_to metaverse_path(@metaverse)
    else
     render :new
    end
  end

  private

  def metaverse_params
   params.require(:metaverse).permit(:title, :description, :price)
  end

end
