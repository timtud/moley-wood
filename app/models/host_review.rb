class HostReview < ApplicationRecord
  belongs_to :project
  belongs_to :job
  validates :rating, presence: true
end
