class CustomersController < ApplicationController
  before_action :set_customer, only: [:edit, :update, :destroy, :show]

  def new
    @customer = Customer.new
  end

  def index
    @customers = Customer.all
  end

  def create
    @customer = Customer.create(customer_params)
    if @customer.errors.empty?
      redirect_to @customer
    else
      render "new"
    end
  end

  def edit
  end

  def show
    @locations = @customer.locations.all
  end

  def update
    @customer.update_attributes(customer_params)
    if @customer.errors.empty?
      redirect_to @customer
    else
      render "new"
    end
  end

  def destroy
    @customer.destroy
    redirect_to customers_path
  end

  private

  def set_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:short_name, :full_name, :phone, :adres, :price_group_id)
  end
end
