class MetaversesController < ApplicationController

  def index
    @metaverses = Metaverse.all
  end
end
