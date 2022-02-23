class MetaversesController < ApplicationController

  before_action :set_metaverse, only: [:edit, :update, :show]

  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR category ILIKE :query"
      @metaverses = Metaverse.where(sql_query, query: "%#{params[:query]}%")
    else
      @metaverses = Metaverse.all
    end
  end

  def show
    @reviews = @metaverse.reviews
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
    @user = current_user
    @metaverse = Metaverse.new(metaverse_params)
    @metaverse.user = @user
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
      params.require(:metaverse).permit(:title,
                                        :description,
                                        :price,
                                        :principal_picture,
                                        :category,
                                        pictures: [])
    end

    def set_metaverse
      @metaverse = Metaverse.find(params[:id])
    end

end
