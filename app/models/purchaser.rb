class Purchaser < ApplicationRecord
  belongs_to :purchase
  has_many :products

  def timestamp
    created_at.strftime("%F")
  end
end
