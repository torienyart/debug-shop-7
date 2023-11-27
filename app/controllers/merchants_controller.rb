class MerchantsController < ApplicationController

  def new
    @merchant = Merchant.new
  end

  def create
    Merchant.create(merchant_params)
    redirect_to '/merchants'
  end

  def edit
    @merchant = Merchant.find(params[:merchant_id])
  end

  def index
    @merchants = Merchant.all
  end

  def show
    @merchant = Merchant.find(params[:id])
  end

  def update
    merchant = Merchant.find(params[:id])
    merchant.update(merchant_params)
    redirect_to "/merchants/#{params[:id]}"
  end

  def destroy
    Item.delete(Item.where(merchant_id: params[:id]))
    Merchant.destroy(params[:id])
    redirect_to '/merchants'
  end

  private

  def merchant_params
    params.require('merchant').permit(:name, :address, :city, :state, :zip)
  end

end
