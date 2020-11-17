class UserJob < ApplicationRecord
  belongs_to :user
  belongs_to :job

  validates :job, uniqueness: true
end
