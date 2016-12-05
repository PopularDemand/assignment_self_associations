class House < ApplicationRecord
  has_many :houses_neighbors
  has_many :neighbors, through: :houses_neighbors, dependent: :destroy
end
