class Artiste < ApplicationRecord
  has_many :nouveautes, dependent: :destroy
  has_one_attached :photo
  has_one_attached :reseau1
  has_one_attached :reseau2
  has_one_attached :reseau3
  has_one_attached :reseau4
  has_one_attached :reseau5
  has_one_attached :reseau6
  has_one_attached :photo_redirection_youtube
end
