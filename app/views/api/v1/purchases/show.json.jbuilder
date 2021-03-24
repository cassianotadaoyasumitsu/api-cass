json.extract! @purchase
json.purchasers @purchase.purchasers do |purchaser|
  json.extract! purchaser, :timestamp

  json.purchaser purchaser.products do |product|
    json.extract! product, :product
  end
end
