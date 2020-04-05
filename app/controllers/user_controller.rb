class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def signout
    cookies.permanent[:hash] = ""
    cookies.permanent[:id] = ""
    cookies.permanent[:socialid] = ""
    cookies.permanent[:socialtype] = ""
    cookies.permanent[:name] = ""

    redirect_to :controller => 'index', :action => 'index'
  end

  private def veteran_params
    params.require(:veteran).permit(:name)
  end
end
