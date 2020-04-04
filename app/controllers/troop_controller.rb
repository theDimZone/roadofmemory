class TroopController < ApplicationController
  def show
    @troop = Troop.find(params[:id])
  end

  def index
    @troops = Troop.where(ancestry: nil)
  end

  def new

  end

  def create
  end
end
