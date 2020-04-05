class IndexController < ApplicationController
  def index
    @veterans = Veteran.where(moderated: true).last(12).reverse
    cookies.permanent[:ref_id] = params[:id] unless params[:id].nil?
  end

end
