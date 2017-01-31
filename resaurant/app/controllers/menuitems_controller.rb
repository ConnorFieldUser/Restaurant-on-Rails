class MenuitemsController < ApplicationController


  def index
    @menuitems = Menuitem.all
  end

  def show
    @menuitem = Menuitem.find(params[:id])
  end

  def new
    @menuitem = Menuitem.new
  end

  def create
    @menuitem = Menuitem.new(menuitem_params)

    if @menuitem.save
      redirect_to @menuitem
    else
      render 'new'
    end
  end

  private
    def menuitem_params
      params.require(:menuitem).permit(:name, :description, :price)
    end

end
