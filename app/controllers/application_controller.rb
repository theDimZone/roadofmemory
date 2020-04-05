class ApplicationController < ActionController::Base
  require 'digest/md5'
  helper_method :is_authored, :check_auth, :get_user
  #before_action :check_auth

  def is_cookie_valid_vk
    #конфиг пока здесь..
    app_id = "7391635"
    user_id = cookies[:socialid]
    secret_key = "GGmuNgPTjbRAevzPok45"

    md5 = Digest::MD5.hexdigest(app_id + user_id + secret_key)

    return md5 == cookies[:hash]
  end

  def is_authored
    return get_user[:id] != nil
  end


  def check_auth
    if Rails.env == "development"
      return true
    end

    if cookies[:socialtype] == "vk"
      return is_cookie_valid_vk
    else
      return false
    end
  end

  def get_user
    user = Hash.new
    if Rails.env == "development"
      user[:name] = "Pavel Durov"
      user[:id] = 1
      user[:socialid] = "1"
      user[:socialtype] = "vk"
    else
      user[:name] = cookies[:name]
      user[:id] = cookies[:id]
      user[:socialid] = cookies[:socialid]
      user[:socialtype] = cookies[:socialtype]
    end

    return user
  end
end
