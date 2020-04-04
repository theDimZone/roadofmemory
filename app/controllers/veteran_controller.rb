class VeteranController < ApplicationController
  def index
    @veterans = Veteran.all
  end

  def show
    @veteran = Veteran.find(params[:id])
  end

  def new
    @veteran = Veteran.new
  end

  def create
    @veteran = Veteran.new(veteran_params)
    if @veteran.save
      redirect_to @veteran
    else
      render :new
    end
  end

  private def veteran_params
    params.require(:veteran).permit(:name, :surname,
                                    :lastname, :photo_url,
                                    :description, :moderated)
  end
end
