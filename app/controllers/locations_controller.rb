class LocationsController < ApplicationController
  before_action :set_location, only: [:edit, :update, :destroy, :show]

  def new
    @location = Location.new
  end

  def index
    @locations = Location.all
  end

  def create
    @location = Location.create(location_params)
    if @location.errors.empty?
      redirect_to customers_path
    else
      render "new"
    end
  end

  def edit
  end

  def show
  end

  def update
    @location.update_attributes(location_params)
    if @location.errors.empty?
      redirect_to customers_path
    else
      render "new"
    end
  end

  def destroy
    @location.destroy
    redirect_to locations_path
  end

  private

  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:adres, :phone, :info, :customer_id)
  end
end
