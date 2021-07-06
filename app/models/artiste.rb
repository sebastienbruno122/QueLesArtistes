class Artiste < ApplicationRecord
  has_many :nouveautes, dependent: :destroy
  has_one_attached :photo
  has_one_attached :reseau1
  has_one_attached :reseau2
end
