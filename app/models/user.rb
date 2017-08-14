class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :projects
has_many :applicants
has_many :user_skills

validates :email, presence: true, uniqueness: true
validates :first_name, presence: true, uniqueness: true
validates :last_name, presence: true, uniqueness: true
validates :bio, presence: true
validates :gender, presence: true
validates :age, presence: true
validates :profile_picture, presence: true

end


