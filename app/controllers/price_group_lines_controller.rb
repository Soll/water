class PriceGroupLinesController < ApplicationController
  before_action :set_price_group_line, only: [:edit, :update, :destroy]

  def create
    @pgl = PriceGroupLine.new
    @pgl = PriceGroupLine.create(pgl_params)
    if @pgl.errors.empty?
      redirect_to price_groups_path
    else
      render "edit"
    end
  end

  def edit
  end

  def update
    @pgl.update_attributes(pgl_params)
    if @pgl.errors.empty?
      redirect_to price_groups_path
    else
      render "edit"
    end
  end

  def destroy
    @pgl.destroy
    redirect_to price_groups_path
  end

  private

    def set_price_group_line
      @pgl = PriceGroupLine.find(params[:id])
    end

    def pgl_params
      params.require(:price_group_line).permit(:id,
                                               :item_id,
                                               :price_group_id,
                                               :amount,
                                               :price)
    end
end
