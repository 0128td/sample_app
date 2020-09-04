class Atd < ApplicationRecord
  validates :event_id, presence: true
  validates :user_id, presence: true
  validates :attendance, presence: true


end
