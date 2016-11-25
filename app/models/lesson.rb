class Lesson < ApplicationRecord
  belongs_to :course
  has_many :attendances
  has_many :memberships, through: :attendances
  has_many :resources
end
