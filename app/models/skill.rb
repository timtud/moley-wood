class Skill < ApplicationRecord
  has_many :user_skills
  has_many :jobs
  validates :title, presence:true
end
