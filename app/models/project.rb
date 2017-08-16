class Project < ApplicationRecord
  belongs_to :user
  has_many :host_reviews
  has_many :jobs
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :schedule, presence: true
  validates :location, presence: true


  def self.search(search)
    if search[":description"] && search[":title"]
      where("description ILIKE ?", "%#{search[":description"]}%").where("title ILIKE ?", "%#{search[":title"]}%")
    elsif search[":description"]
      where("description ILIKE ?", "%#{search[":description"]}%")
    elsif search[":title"]
      where("title ILIKE ?", "%#{search[":title"]}%")
    elsif search[":skills.title"]
		where("title ILIKE ?", "%#{search[":skills.title"]}%")
    end
  end
end
