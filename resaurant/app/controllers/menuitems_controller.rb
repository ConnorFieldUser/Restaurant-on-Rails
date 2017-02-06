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

  def edit
    @menuitem = Menuitem.find(params[:id])
  end

  def create
    @menuitem = Menuitem.new(menuitem_params)

    if @menuitem.save
      redirect_to @menuitem
    else
      render 'new'
    end
  end

  def update
    @menuitem = Menuitem.find(params[:id])

    if @menuitem.update(menuitem_params)
      redirect_to @menuitem
    else
      render 'edit'
    end
  end

  def destroy
    @menuitem = Menuitem.find(params[id])
    @menuitem.destroy

    redirect_to menuitems_path
  end

  private
    def menuitem_params
      params.require(:menuitem).permit(:name, :description, :price)
    end

end
