class Job < ApplicationRecord
  has_many :users, through: :user_jobs

  validates :pickup_address, presence: true
  validates :dropoff_address, presence: true
  validates :payment, presence: true
end
