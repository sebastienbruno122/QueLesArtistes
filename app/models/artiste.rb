class Artiste < ApplicationRecord
  has_many :nouveautes, dependent: :destroy
end
