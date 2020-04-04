class UserController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(veteran_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  private def veteran_params
    params.require(:veteran).permit(:name)
  end
end
