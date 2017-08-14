class HostReview < ApplicationRecord
  belongs_to :project
  belongs_to :job
end
