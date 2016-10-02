class Item < ApplicationRecord
  belongs_to :placeable, polymorphic: true
  validates_presence_of :placeable_id
  has_one :item_product, dependent: :destroy
  has_one :book, through: :item_product, source: :product, source_type: 'Book'
  has_one :movie, through: :item_product, source: :product, source_type: 'Movie'
  accepts_nested_attributes_for :item_product, allow_destroy: true

  def self.kinds
    [Book, Movie]
  end

  def location
    placeable
  end

  def product
    item_product&.product
  end

  def product_name
    product&.class&.name&.downcase
  end
end
