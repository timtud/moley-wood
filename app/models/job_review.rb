class JobReview < ApplicationRecord
  belongs_to :job
  validates :rating, presence: true
end
