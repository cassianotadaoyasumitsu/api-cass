class Api::V1::PurchasersController < Api::V1::BaseController
  def index
    @purchasers = Purchaser.all
    render json: @purchasers
  end

  def create
    @purchaser = Purchaser.create(name: params[:name])
    @purchaser.purchase = Purchase.find(params[:purchase_id])
    render json: {"Text": "Ok, you did it!"}
  end
end
