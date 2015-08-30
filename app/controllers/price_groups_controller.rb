class PriceGroupsController < ApplicationController
  before_action :set_price_group, only: [:edit, :update, :show, :destroy]

  def index
    @price_groups = PriceGroup.all
  end

  def new
    @price_group = PriceGroup.new
  end

  def create
    @price_group = PriceGroup.create(price_group_params)
    if @price_group.errors.empty?
      redirect_to price_groups_path
    else
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    @price_group.update_attributes(price_group_params)
    if @price_group.errors.empty?
      redirect_to price_groups_path
    else
      render "new"
    end
  end

  def destroy
    @price_group.destroy
    redirect_to price_groups_path
  end

  private

  def set_price_group
    @price_group = PriceGroup.find(params[:id])
  end

  def price_group_params
    params.require(:price_group).permit(:name)
  end
end
