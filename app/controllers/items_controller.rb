class ItemsController < ApplicationController

  before_action :set_item, only: %i[show, delete]
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:item_id])
  end

  def new
    @item = Item.new

  end

  def create
    @item = Item.new(item_params)

    if @item.save!
      redirect_to items_path
      flash[:alert] = 'Item was successfully created.'
    else
      render :new
    end
  end

    private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:shop).permit(:name, :category , :era, :availability)
  end
end
