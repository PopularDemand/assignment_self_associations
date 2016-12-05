class HousesNeighbor < ApplicationRecord
  belongs_to :house
  belongs_to :neighbor, class_name: "House", foreign_key: :neighbor_id
end
