class Product < ApplicationRecord
  belongs_to :purchaser
  belongs_to :purchase
end
