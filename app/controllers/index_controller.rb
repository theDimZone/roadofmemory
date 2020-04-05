class IndexController < ApplicationController
  def index
    @veterans = Veteran.where(moderated: true).last(12).reverse
  end
end
