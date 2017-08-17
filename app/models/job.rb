class Job < ApplicationRecord
  belongs_to :project
  belongs_to :skill
  validates :skill_id, presence: true
  has_many :responses





  def self.search(search)
    # if search[":location"] && search[":schedule"] && search[":skill_id"]
    #   where("location ILIKE ?", "%#{search[":location"]}%").where("description ILIKE ?", "%#{search[":description"]}%").where("title ILIKE ?", "%#{search[":title"]}%")
    # elsif search[":location"]
    #   where("location ILIKE ?", "%#{search[":location"]}%")
    # elsif search[":description"]
    #   where("description ILIKE ?", "%#{search[":description"]}%")
    # elsif search[":skills_id"]
		  # where("skills.title ILIKE ?", "%#{search[":skills.title"]}%")
    # end


    jobs = joins(:project)
    jobs = jobs.where('projects.schedule': search[:schedule]) if search[:schedule].present?
    jobs = jobs.where("location ILIKE ?", "%#{search[:location]}%") if search[:location].present?
    jobs = jobs.where(skill_id: search[:skill_id]) if search[:skill_id].present?

    jobs
  end
end
