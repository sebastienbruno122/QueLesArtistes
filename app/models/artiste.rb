class Artiste < ApplicationRecord
  has_many :nouveautes, dependent: :destroy
  has_one_attached :photo
end
