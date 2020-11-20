class Job < ApplicationRecord
  belongs_to :user, optional: true

  validates :pickup_address, presence: true
  validates :dropoff_address, presence: true
  validates :payment, presence: true
end
