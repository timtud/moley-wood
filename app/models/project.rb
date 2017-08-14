class Project < ApplicationRecord
  belongs_to :user
  has_many :host_reviews
  has_many :jobs
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :schedule, presence: true 
  validates :location, presence: true
end
