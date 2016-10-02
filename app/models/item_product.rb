class ItemProduct < ApplicationRecord
  belongs_to :item
  belongs_to :product, polymorphic: true, dependent: :destroy

  def place
    item.placeable
  end
end
