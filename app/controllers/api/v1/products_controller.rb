class Api::V1::ProductsController < Api::V1::BaseController
  def index
    @products = Product.all
    render json: @products, only: [:product]
  end

  def create
    @product = Product.create(product: params[:product])
    @product.purchaser = Purchaser.find[:purchaser_id]
    @product.purchase = Purchaser.find[:id]
    rende json: @product, only: [:product]
  end
end
