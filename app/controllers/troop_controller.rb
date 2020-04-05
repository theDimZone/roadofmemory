class TroopController < ApplicationController
  def show
    @troop = Troop.find(params[:id])

    ids = []
    ids << @troop.descendants.ids
    ids << @troop.id

    @allreferencetroops = Troop.find(ids)
  end

  def index
    @troops = Troop.where(ancestry: nil)
  end

  def new

  end

  def create
  end
end
