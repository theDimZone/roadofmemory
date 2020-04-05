class LoginController < ApplicationController
  def index
    if is_authored
      redirect_to :controller => 'user', :action => 'show', :id => get_user[:id]
    end
  end

  def get_token
    hash = params[:hash]
    userid = params[:uid]
    name = params[:first_name] + " " + params[:last_name]

    create_params = Hash.new
    create_params[:name] = name
    create_params[:score] = 0
    create_params[:parent] = User.find(cookies[:ref_id]) unless cookies[:ref_id].nil?
    user = User.where(socialid: userid, socialtype: "vk").first_or_create(create_params)

    cookies.permanent[:hash] = hash
    cookies.permanent[:id] = user.id
    cookies.permanent[:socialid] = userid
    cookies.permanent[:socialtype] = "vk"
    cookies.permanent[:name] = name

    redirect_to :controller => 'user', :action => 'show', :id => user.id
  end

  def get_token_od
    hash = params[:hash]
    userid = params[:uid]
    name = params[:first_name] + " " + params[:last_name]
    user = User.where(socialid: userid, socialtype: "od").first_or_create(name: name, score: 0)

    cookies.permanent[:hash] = hash
    cookies.permanent[:id] = user.id
    cookies.permanent[:socialid] = userid
    cookies.permanent[:socialtype] = "od"
    cookies.permanent[:name] = name

    redirect_to :controller => 'user', :action => 'show', :id => user.id
  end
end
