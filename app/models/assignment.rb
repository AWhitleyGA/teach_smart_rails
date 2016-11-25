class Assignment < ApplicationRecord
  belongs_to :course
  has_many :grades
  has_many :memberships, through: :grades
  has_many :resources
end
