class ItemTypesController < ApplicationController
  helper HomeHelper
  before_action :set_category, only: [:edit, :update, :destroy]

  def index
    @categories = ItemType.all
  end

  def new
    @category = ItemType.new
  end

  def create
    @category = ItemType.create(category_params)
    if @category.errors.empty?
      redirect_to item_types_path
    else
      flash[:error] = "Такое наименование уже существует!"
      render "new"
    end
  end

  def edit
  end

  def update
    @category.update_attributes(category_params)
    if @category.errors.empty?
      redirect_to item_types_path
    else
      flash[:error] = "Такое наименование уже существует!"
      render "edit"
    end
  end

  def destroy
    @category.destroy
    redirect_to item_types_path
  end

  private

  def set_category
    @category = ItemType.find(params[:id])
  end

  def category_params
    params.require(:item_type).permit(:name)
  end
end
