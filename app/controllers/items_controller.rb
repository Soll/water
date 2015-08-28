class ItemsController < ApplicationController
  before_action :set_item, only:[:edit, :update, :destroy]

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    if @item.errors.empty?
      redirect_to items_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
    @item.update_attributes(item_params)
    if @item.errors.empty?
      redirect_to items_path
    else
      render "new"
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :item_type_id)
  end
end
