class PriceGroupLinesController < ApplicationController
  def create
    @pgl = PriceGroupLine.new
    @pgl = PriceGroupLine.create(pgl_params)
    redirect_to price_groups_path
  end

  private
    def pgl_params
      params.require(:price_group_line).permit(:id, :item_id, :price_group_id, :amount, :price)
    end
end
