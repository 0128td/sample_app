class Map < ApplicationRecord
  validates :place, presence: true
  #geocoded_by :address
  #after_validation :geocode, if: :address_changed?


end
