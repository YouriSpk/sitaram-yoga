class Schedule < ApplicationRecord
  validates :title, presence: true
  validates :location, presence: true
end
