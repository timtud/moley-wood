class Job < ApplicationRecord
  belongs_to :project
  belongs_to :skill
  validates :skill, presence: true
  has_many :responses
end
