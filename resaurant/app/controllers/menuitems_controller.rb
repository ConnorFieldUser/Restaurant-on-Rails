class MenuitemsController < ApplicationController


  def index
    @menuitems = Menuitem.all
  end

  def show
    @menuitem = Menuitem.find(params[:id])
  end

  def new
  end

  def create
    @menuitem = Menuitem.new(menuitem_params)

    @menuitem.save
    redirect_to @menuitem

  end

  private
    def menuitem_params
      params.require(:menuitem).permit(:name, :description, :price)
    end

end
