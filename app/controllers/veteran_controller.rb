class VeteranController < ApplicationController
  def index
      @veteran = Veteran.find(params[:id])

  end

  def add

  end
end
