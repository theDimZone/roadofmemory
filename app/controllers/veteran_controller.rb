class VeteranController < ApplicationController
  def show
      @veteran = Veteran.find(params[:id])

  end

  def new

  end

  def create

  end
end
