class VeteranController < ApplicationController
  def show
      @veteran = Veteran.find(params[:id])

  end

  def add

  end
end
