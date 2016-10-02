class Movie < ApplicationRecord
  has_one :item_product, as: :product
  has_one :item, through: :item_product
  include Locatable 
  include Referable
end
