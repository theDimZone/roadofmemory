class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def signout
    cookies.delete :hash
    cookies.delete :id
    cookies.delete :socialid
    cookies.delete :socialtype
    cookies.delete :name

    redirect_to :controller => 'index', :action => 'index'
  end

  private def veteran_params
    params.require(:veteran).permit(:name)
  end
end
