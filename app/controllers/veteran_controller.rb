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

    veteran_params[:user] = User.find(get_user[:id])
    veteran_params[:moderated] = true
    veteran_params[:troop] = Troop.find(params[:troop]) unless params[:troop].nil?
    @veteran = Veteran.new(veteran_params)

    if @veteran.save
      redirect_to :controller => 'veteran', :action => 'show', :id => @veteran.id
     else
      render action: 'new'
    end
  end

private

  def veteran_params
    params.require(:veteran).permit(:photo, :name, :surname, :lastname, :description, :photo_file_name)
  end

end
