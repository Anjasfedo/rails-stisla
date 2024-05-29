class Makanan < ApplicationRecord
  has_one_attached :image

  validates :name, presence: true, length: {minimum:3, maximum:3}
  validates :price, presence: true
end
