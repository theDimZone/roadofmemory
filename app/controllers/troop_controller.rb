class TroopController < ApplicationController
  def show
    @troop = Troop.find(params[:id])
  end

  def index
    @troops = Troop.where(parent_id: nil)
  end

  def new

  end

  def create
  end
end
