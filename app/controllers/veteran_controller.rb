class VeteranController < ApplicationController
  def index
    @veterans = Veteran.all
  end

  def show
    @veteran = Veteran.find(params[:id])
  end

  def new
    redirect_to :controller => 'login', :action => 'index' if !is_authored or !check_auth

    @troops = Troop.all
    @veteran = Veteran.new
  end


  def create
    redirect_to :controller => 'login', :action => 'index' if !is_authored or !check_auth
    @veteran = Veteran.new

    veteran_params[:user] = User.find(get_user[:id])
    veteran_params[:moderated] = true

    unless troop_params[:id].nil?
      @veteran = Troop.find(troop_params[:id]).veterans.create(veteran_params)
    else
      @veteran = Veteran.create(veteran_params)
    end
    #veteran_params[:troop] = Troop.find(params[:id]) unless params[:id].nil?
    #@veteran = Veteran.new(veteran_params)

    redirect_to :controller => 'veteran', :action => 'show', :id => @veteran.id

  end

private

  def veteran_params
    params.require(:veteran).permit(:photo, :name, :surname, :lastname, :description, :photo_file_name)
  end

  def troop_params
    params.require(:veteran).permit(:id)
  end

end
