class MetaversesController < ApplicationController

  before_action :find_by_id, only: [:edit, :update, :show]

  def index
    @metaverses = Metaverse.all
  end

  def show
  end

  def edit
  end

  def update
    @metaverse.update(metaverse_params)
    redirect_to metaverse_path(@metaverse)
  end

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

  def destroy
    @metaverse = Metaverse.find(params[:id])
    @metaverse.destroy

    redirect_to metaverses_path
  end

  private
    def metaverse_params
      params.require(:metaverse).permit(:title, :description, :price)
    end

    def find_by_id
      @metaverse = Metaverse.find(params[:id])
    end

end
