class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :course
  has_many :grades
  has_many :assignments, through: :grades
  has_many :attendances
  has_many :lessons, through: :attendances
end
