class VeteranController < ApplicationController
  def index
      @veteran = Veteran.find(params[:id])

  end
end
