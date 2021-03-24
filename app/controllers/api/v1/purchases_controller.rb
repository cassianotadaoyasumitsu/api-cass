class Api::V1::PurchasesController < Api::V1::BaseController
  def index
    @purchases = Purchase.all
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  def create
    @purchase = Purchase.create(name: params[:name])
    render json: {"Text": "Ok, you did it!"}
  end
end
