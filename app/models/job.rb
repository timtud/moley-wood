class Job < ApplicationRecord
  belongs_to :project
  belongs_to :skill
  #validates :skill, presence: true
  has_many :responses




def self.search(search)
  if search
    puts "success"
  else
    puts "xD"
  end
end






end
