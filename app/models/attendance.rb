class Attendance < ApplicationRecord
  belongs_to :lesson
  belongs_to :membership
end
