class Job < ApplicationRecord
  belongs_to :user

  validates :pickup_address, presence: true
  validates :dropoff_address, presence: true
  validates :payment, presence: true
end
