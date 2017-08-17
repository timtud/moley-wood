class Response < ApplicationRecord
  belongs_to :user
  belongs_to :job
  validates :status, presence: true
  validates :job, uniqueness: { scope: :user }
end
