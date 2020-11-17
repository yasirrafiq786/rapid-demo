class Job < ApplicationRecord
  belongs_to :user_jobs
  has_many :users, through: :user_jobs

  validates :pickup_address, presence: true
  validates :dropoff_address, presence: true
  validates :payment, presence: true
end
