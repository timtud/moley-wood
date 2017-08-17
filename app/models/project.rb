class Project < ApplicationRecord
  belongs_to :user
  has_many :host_reviews
  has_many :jobs
  validates :title, presence: true
  validates :description, presence: true
  validates :schedule, presence: true
  validates :location, presence: true




  def self.search(search)
    if search[":location"] && search[":description"] && search[":skill_id"]
      where("location ILIKE ?", "%#{search[":location"]}%").where("description ILIKE ?", "%#{search[":description"]}%").where("title ILIKE ?", "%#{search[":title"]}%")
    elsif search[":location"]
      where("location ILIKE ?", "%#{search[":location"]}%")
    elsif search[":description"]
      where("description ILIKE ?", "%#{search[":description"]}%")
    elsif search[":skills_id"]
		  where("skills.title ILIKE ?", "%#{search[":skills.title"]}%")
    end
  end
end
