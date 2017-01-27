class MenuitemsController < ApplicationController
  def new
  end

  def create
    render plain: params [:menuitem].inspect
  end

end
