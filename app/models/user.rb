class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
has_many :projects
has_many :applicants
has_many :user_skills
has_many :responses

validates :email, presence: true, uniqueness: true
validates :first_name, presence: true
validates :last_name, presence: true
end


