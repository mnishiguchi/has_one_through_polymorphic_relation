class Location < ApplicationRecord
  has_many :items, as: :placeable
  validates_presence_of :name
  validates :name, format: {
    with: /\A[A-Z0-9]+\z/,
    message: "only allow uppercase alphanumeric labels"
  }
  default_scope { order(name: :ASC) }
end
